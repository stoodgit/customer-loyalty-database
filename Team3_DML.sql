-- Insert data into company
INSERT INTO company (company_id, company_name, location) VALUES
(1,'Global Pharm','Tashkent'),
(2,'HealthPlus','Samarkand'),
(3,'MediCare','Bukhara'),
(4,'PharmaLife','Fergana'),
(5,'Wellness Co','Andijan'),
(6,'BioPharm','Namangan'),
(7,'LifeCare','Nukus'),
(8,'MedWorld','Termez'),
(9,'PharmaMax','Karshi'),
(10,'HealthFirst','Jizzakh'),
(11,'MediTrust','Kokand'),
(12,'WellCare','Chirchik'),
(13,'PharmaGen','Navoi'),
(14,'VitaLife','Margilan'),
(15,'HealthyWay','Urganch');

-- Insert data into product_category
INSERT INTO product_category (category_id, category_name) VALUES
(1,'Vitamins'),
(2,'Pain Relief'),
(3,'Cold & Flu'),
(4,'Skin Care'),
(5,'Supplements'),
(6,'First Aid'),
(7,'Digestive Health'),
(8,'Oral Care'),
(9,'Allergy'),
(10,'Weight Loss'),
(11,'Eye Care'),
(12,'Heart Health'),
(13,'Children Care'),
(14,'Herbal'),
(15,'Diabetes Care');

-- Insert data into loyalty_program
INSERT INTO loyalty_program (program_id, program_name, program_description, start_date) VALUES
(1,'Silver Points','Earn points for every purchase', '2025-01-01'),
(2,'Gold Rewards','Extra benefits for frequent buyers', '2025-02-01'),
(3,'Platinum Club','Exclusive deals for top customers', '2025-03-01'),
(4,'Health Perks','Health-focused reward program', '2025-04-01'),
(5,'Family Care','Rewards for family purchases', '2025-05-01'),
(6,'Wellness Points','Points on wellness products', '2025-06-01'),
(7,'VIP Club','Special privileges for loyal customers', '2025-07-01'),
(8,'Happy Shopper','Discounts and gifts', '2025-08-01'),
(9,'Mega Saver','Bulk purchase rewards', '2025-09-01'),
(10,'Daily Bonus','Points for daily visits', '2025-10-01'),
(11,'Healthy Life','Encouraging healthy lifestyle', '2025-11-01'),
(12,'Smart Shopper','Intelligent shopping rewards', '2025-11-15'),
(13,'Exclusive Deals','Limited-time promotions', '2025-12-01'),
(14,'Loyalty Plus','Extra loyalty benefits', '2025-12-05'),
(15,'Premier Care','Premium rewards program', '2025-12-10');

-- Insert data into branch
INSERT INTO branch (branch_id, branch_name, location, opening_date, C_company_id) VALUES
(1,'Central','Tashkent', '2024-01-01', 1),
(2,'North','Tashkent', '2024-02-01', 1),
(3,'South','Samarkand', '2024-03-01', 2),
(4,'East','Bukhara', '2024-04-01', 3),
(5,'West','Fergana', '2024-05-01', 4),
(6,'Downtown','Andijan', '2024-06-01', 5),
(7,'City Center','Namangan', '2024-07-01', 6),
(8,'Mall Branch','Nukus', '2024-08-01', 7),
(9,'Airport','Termez', '2024-09-01', 8),
(10,'Station','Karshi', '2024-10-01', 9),
(11,'University','Jizzakh', '2024-11-01', 10),
(12,'Market','Kokand', '2024-12-01', 11),
(13,'Plaza','Chirchik', '2025-01-01', 12),
(14,'High Street','Navoi', '2025-02-01', 13),
(15,'Riverfront','Margilan', '2025-03-01', 14);

-- Insert data into promotion
INSERT INTO promotion (promo_id, promo_name, start_date, end_date, promo_type, target_customer, C_company_id) VALUES
(1,'Winter Sale','2025-12-01','2025-12-31','Discount','All',1),
(2,'Health Week','2025-11-01','2025-11-07','Points Bonus','Members',2),
(3,'Buy 1 Get 1','2025-10-01','2025-10-15','Offer','All',3),
(4,'Summer Discount','2025-06-01','2025-06-30','Discount','All',4),
(5,'VIP Rewards','2025-09-01','2025-09-30','Exclusive','VIP',5),
(6,'Flash Sale','2025-12-10','2025-12-12','Discount','All',6),
(7,'Healthy Points','2025-08-01','2025-08-15','Points Bonus','Members',7),
(8,'Anniversary Offer','2025-07-01','2025-07-07','Discount','All',8),
(9,'New Year Promo','2025-12-20','2025-12-31','Discount','All',9),
(10,'Family Deal','2025-05-01','2025-05-10','Offer','Families',10),
(11,'Student Week','2025-04-01','2025-04-07','Discount','Students',11),
(12,'Platinum Bonus','2025-03-01','2025-03-15','Points Bonus','Platinum',12),
(13,'Clearance','2025-01-10','2025-01-20','Discount','All',13),
(14,'Summer Fun','2025-06-15','2025-06-25','Offer','All',14),
(15,'Daily Rewards','2025-12-01','2025-12-31','Points Bonus','All',15);

-- Insert data into employee
INSERT INTO employee (employee_id, full_name, position, B_branch_id) VALUES
(1,'Aliyev Kamol','Manager',1),
(2,'Karimova Lola','Cashier',1),
(3,'Saidov Rustam','Pharmacist',2),
(4,'Nazarova Dildora','Sales Rep',2),
(5,'Olimov Azamat','Manager',3),
(6,'Bekova Sevara','Cashier',3),
(7,'Tursunov Jasur','Pharmacist',4),
(8,'Rashidova Malika','Sales Rep',4),
(9,'Yusupov Anvar','Manager',5),
(10,'Shukurova Nilufar','Cashier',5),
(11,'Islomov Sardor','Pharmacist',6),
(12,'Juraeva Nigora','Sales Rep',6),
(13,'Akbarov Timur','Manager',7),
(14,'Rahimova Laylo','Cashier',7),
(15,'Murodov Bekzod','Pharmacist',8);

-- Insert data into product
INSERT INTO product (product_id, product_name, product_description, price, PK_category_id, B_branch_id) VALUES
(1,'Vitamin C','Boost immunity',15.50,1,1),
(2,'Pain Reliever','Reduces pain',10.00,2,1),
(3,'Cold Syrup','Treats cold',12.50,3,2),
(4,'Moisturizer','Skin care cream',20.00,4,2),
(5,'Omega 3','Heart health',25.00,5,3),
(6,'Bandage','First aid',5.00,6,3),
(7,'Probiotics','Digestive health',18.00,7,4),
(8,'Toothpaste','Oral care',4.50,8,4),
(9,'Allergy Relief','Relieves allergy',13.00,9,5),
(10,'Slim Tea','Weight loss',22.00,10,5),
(11,'Eye Drops','Eye care',8.50,11,6),
(12,'Heart Tablets','Heart health',30.00,12,6),
(13,'Kids Vitamins','Children care',14.00,13,7),
(14,'Herbal Tea','Herbal remedy',10.50,14,7),
(15,'Insulin','Diabetes care',50.00,15,8);

-- Insert data into customer
INSERT INTO customer (customer_id, full_name, phone, email, reg_date, total_points, LP_program_id, E_employee_id) VALUES
(1,'Bekzod Tursunov','998901112233','bekzod@mail.com','2025-01-01',120,1,1),
(2,'Laylo Karimova','998902223344','laylo@mail.com','2025-01-05',80,2,2),
(3,'Azamat Olimov','998903334455','azamat@mail.com','2025-02-01',150,3,3),
(4,'Malika Rashidova','998904445566','malika@mail.com','2025-02-15',60,4,4),
(5,'Anvar Yusupov','998905556677','anvar@mail.com','2025-03-01',200,5,5),
(6,'Nilufar Shukurova','998906667788','nilufar@mail.com','2025-03-15',90,6,6),
(7,'Sardor Islomov','998907778899','sardor@mail.com','2025-04-01',75,7,7),
(8,'Nigora Juraeva','998908889900','nigora@mail.com','2025-04-15',50,8,8),
(9,'Timur Akbarov','998909990011','timur@mail.com','2025-05-01',130,9,9),
(10,'Laylo Rahimova','998910001122','laylo2@mail.com','2025-05-15',110,10,10),
(11,'Bekzod Murodov','998911112233','bekzod2@mail.com','2025-06-01',140,11,11),
(12,'Dildora Nazarova','998912223344','dildora@mail.com','2025-06-15',95,12,12),
(13,'Rustam Saidov','998913334455','rustam@mail.com','2025-07-01',85,13,13),
(14,'Sevara Bekova','998914445566','sevara@mail.com','2025-07-15',120,14,14),
(15,'Jasur Tursunov','998915556677','jasur@mail.com','2025-08-01',100,15,15),
(16, 'Zokirov Dilshod', '998916666666', 'dilshod@mail.com', '2025-09-01', 0, 1, 1),
(17, 'Usmonova Madina', '998917777777', 'madina@mail.com', '2025-09-02', 0, 2, 2);

-- Insert data into reward
INSERT INTO reward (reward_id, reward_name, reward_description, points_required, C_customer_id, LP_program_id) VALUES
(1,'5% Discount','Get 5% off on next purchase',50,1,1),
(2,'Free Delivery','No delivery fee',30,2,2),
(3,'10% Discount','10% off selected products',100,3,3),
(4,'Health Kit','Free health kit',120,4,4),
(5,'Gift Voucher','$10 gift voucher',80,5,5),
(6,'Wellness Package','Free wellness package',150,6,6),
(7,'Extra Points','Earn 50 bonus points',50,7,7),
(8,'Exclusive Access','VIP event access',200,8,8),
(9,'Free Product','Get a free product',70,9,9),
(10,'Seasonal Gift','Seasonal gift item',90,10,10),
(11,'Loyalty Badge','Special loyalty badge',40,11,11),
(12,'Special Discount','15% discount',110,12,12),
(13,'Free Consultation','Health consultation',60,13,13),
(14,'Premium Pack','Premium gift pack',130,14,14),
(15,'Daily Bonus','Extra points for daily purchase',20,15,15);

-- Insert data into points
INSERT INTO points (points_id, points_status, expiry_date, R_reward_id) VALUES
(1,'Active','2025-12-31',1),
(2,'Active','2025-12-31',2),
(3,'Active','2025-12-31',3),
(4,'Active','2025-12-31',4),
(5,'Active','2025-12-31',5),
(6,'Active','2025-12-31',6),
(7,'Active','2025-12-31',7),
(8,'Active','2025-12-31',8),
(9,'Active','2025-12-31',9),
(10,'Active','2025-12-31',10),
(11,'Active','2025-12-31',11),
(12,'Active','2025-12-31',12),
(13,'Active','2025-12-31',13),
(14,'Active','2025-12-31',14),
(15,'Active','2025-12-31',15);

-- Insert data into transaction
INSERT INTO transaction (transaction_id, transaction_date, total_amount, payment_method, points_earned, E_employee_id, C_customer_id) VALUES
(1,'2025-12-01 10:00:00',120.50,'Cash',10,1,1),
(2,'2025-12-02 11:00:00',75.00,'Card',5,2,2),
(3,'2025-12-03 12:30:00',150.00,'Card',15,3,3),
(4,'2025-12-04 14:00:00',60.00,'Cash',6,4,4),
(5,'2025-12-05 15:15:00',200.00,'Card',20,5,5),
(6,'2025-12-06 16:30:00',90.00,'Cash',9,6,6),
(7,'2025-12-07 17:45:00',75.50,'Card',7,7,7),
(8,'2025-12-08 09:30:00',50.00,'Cash',5,8,8),
(9,'2025-12-09 11:20:00',130.00,'Card',13,9,9),
(10,'2025-12-10 13:40:00',110.00,'Cash',11,10,10),
(11,'2025-12-11 14:50:00',140.00,'Card',14,11,11),
(12,'2025-12-12 15:55:00',95.00,'Cash',9,12,12),
(13,'2025-12-13 10:10:00',85.00,'Card',8,13,13),
(14,'2025-12-14 11:25:00',120.00,'Cash',12,14,14),
(15,'2025-12-15 12:40:00',100.00,'Card',10,15,15);

-- Insert data into shop_at
INSERT INTO shop_at (C_customer_id, B_branch_id) VALUES
(1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),
(11,6),(12,6),(13,7),(14,7),(15,8),(1, 2),(1, 3),(2, 3),(2, 4),(3, 1),(3, 4);

-- Insert data into targets
INSERT INTO targets (P_promo_id, C_customer_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15);

-- Insert data into get_notify
INSERT INTO get_notify (P_promo_id, C_customer_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(1, 16),
(2, 17);

-- Insert data into feature_be_feature
INSERT INTO feature_be_feature (P_promo_id, R_reward_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15);

-- Insert data into include_items
INSERT INTO include_items (T_transaction_id, P_product_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15);

-- Insert data into appear_in
INSERT INTO appear_in (T_transaction_id, P_product_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(2, 1),(3, 1),(4, 2),(5, 2),(6, 3);

-- Insert data into be_earned_through
INSERT INTO be_earned_through (T_transaction_id, P_points_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15);
