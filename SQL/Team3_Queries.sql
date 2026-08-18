-- ============================================================
-- Customer Loyalty Program Database
-- Analytical SQL Queries (Database Testing & Business Intelligence)
-- Authors: Team 3
-- ============================================================

-- 1. Customers with total spending greater than 100 and their earned loyalty points
SELECT 
    c.customer_id,
    c.full_name,
    SUM(t.total_amount) AS total_spent,
    SUM(t.points_earned) AS total_points_earned
FROM customer c
JOIN transaction t ON c.customer_id = t.C_customer_id
GROUP BY c.customer_id, c.full_name
HAVING SUM(t.total_amount) > 100;

-- 2. Top 5 customers by total purchase value
SELECT 
    c.customer_id,
    c.full_name,
    SUM(t.total_amount) AS total_spent
FROM customer c
JOIN transaction t ON c.customer_id = t.C_customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Branch performance: number of employees and products per branch
SELECT 
    b.branch_id,
    b.branch_name,
    COUNT(DISTINCT e.employee_id) AS total_employees,
    COUNT(DISTINCT p.product_id) AS total_products
FROM branch b
LEFT JOIN employee e ON b.branch_id = e.B_branch_id
LEFT JOIN product p ON b.branch_id = p.B_branch_id
GROUP BY b.branch_id, b.branch_name;

-- 4. Promotions and how many customers they target
SELECT 
    pr.promo_name,
    COUNT(t.C_customer_id) AS targeted_customers
FROM promotion pr
LEFT JOIN targets t ON pr.promo_id = t.P_promo_id
GROUP BY pr.promo_name
HAVING COUNT(t.C_customer_id) >= 1;

-- 5. Customers who received notifications but did NOT make a transaction
SELECT 
    c.customer_id,
    c.full_name
FROM customer c
JOIN get_notify gn ON c.customer_id = gn.C_customer_id
WHERE c.customer_id NOT IN (
    SELECT DISTINCT C_customer_id 
    FROM transaction
);

-- 6. Products that were sold more than once
SELECT 
    p.product_id,
    p.product_name,
    COUNT(ai.T_transaction_id) AS times_sold
FROM product p
JOIN appear_in ai ON p.product_id = ai.P_product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(ai.T_transaction_id) > 1;

-- 7. Loyalty programs with average customer points
SELECT 
    lp.program_name,
    AVG(c.total_points) AS avg_points
FROM loyalty_program lp
JOIN customer c ON lp.program_id = c.LP_program_id
GROUP BY lp.program_name;

-- 8. Employees who handled transactions worth more than overall average transaction value
SELECT 
    e.employee_id,
    e.full_name,
    SUM(t.total_amount) AS handled_amount
FROM employee e
JOIN transaction t ON e.employee_id = t.E_employee_id
GROUP BY e.employee_id, e.full_name
HAVING SUM(t.total_amount) > (
    SELECT AVG(total_amount) 
    FROM transaction
);

-- 9. Rewards linked to promotions and their required points
SELECT 
    pr.promo_name,
    r.reward_name,
    r.points_required
FROM promotion pr
JOIN feature_be_feature fbf ON pr.promo_id = fbf.P_promo_id
JOIN reward r ON fbf.R_reward_id = r.reward_id
ORDER BY r.points_required DESC;

-- 10. Customers who shop at multiple branches
SELECT 
    c.customer_id,
    c.full_name,
    COUNT(sa.B_branch_id) AS branches_visited
FROM customer c
JOIN shop_at sa ON c.customer_id = sa.C_customer_id
GROUP BY c.customer_id, c.full_name
HAVING COUNT(sa.B_branch_id) > 1;