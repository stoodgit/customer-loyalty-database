CREATE TABLE company (
    company_id      INT PRIMARY KEY,
    company_name    VARCHAR(255) NOT NULL,
    location        VARCHAR(255) NULL
);

CREATE TABLE product_category (
    category_id     INT PRIMARY KEY,
    category_name   VARCHAR(255) NOT NULL
);

CREATE TABLE loyalty_program (
    program_id      INT PRIMARY KEY,
    program_name    VARCHAR(255) NOT NULL,
    program_description TEXT NULL,
    start_date      DATE NOT NULL
);

CREATE TABLE branch (
    branch_id       INT PRIMARY KEY,
    branch_name     VARCHAR(255) NOT NULL,
    location        VARCHAR(255) NOT NULL,
    opening_date    DATE NULL,
    C_company_id    INT NOT NULL,
    FOREIGN KEY (C_company_id) REFERENCES company(company_id)
);

CREATE TABLE promotion (
    promo_id        INT PRIMARY KEY,
    promo_name      VARCHAR(255) NOT NULL,
    start_date      DATE NOT NULL,
    end_date        DATE NOT NULL,
    promo_type      VARCHAR(50) NOT NULL,
    target_customer     VARCHAR(255) NULL,
    C_company_id    INT NOT NULL,
    FOREIGN KEY (C_company_id) REFERENCES company(company_id)
);

CREATE TABLE employee (
    employee_id     INT PRIMARY KEY,
    full_name       VARCHAR(255) NOT NULL,
    position        VARCHAR(100) NOT NULL,
    B_branch_id     INT NOT NULL,
    FOREIGN KEY (B_branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE product (
    product_id      INT PRIMARY KEY,
    product_name    VARCHAR(255) NOT NULL,
    product_description TEXT NULL,
    price       DECIMAL(10, 2) NOT NULL,
    PK_category_id  INT NOT NULL,
    B_branch_id     INT NOT NULL,
    FOREIGN KEY (PK_category_id) REFERENCES product_category(category_id),
    FOREIGN KEY (B_branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE customer (
    customer_id     INT PRIMARY KEY,
    full_name       VARCHAR(255) NOT NULL,
    phone       VARCHAR(20) NOT NULL,
    email       VARCHAR(255) NULL,
    reg_date        DATE NOT NULL,
    total_points    INT NOT NULL DEFAULT 0,
    LP_program_id   INT NULL,
    E_employee_id   INT NULL,
    FOREIGN KEY (LP_program_id) REFERENCES loyalty_program(program_id),
    FOREIGN KEY (E_employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE reward (
    reward_id       INT PRIMARY KEY,
    reward_name     VARCHAR(255) NOT NULL,
    reward_description  TEXT NULL,
    points_required     INT NOT NULL,
    C_customer_id   INT NULL,
    LP_program_id   INT NOT NULL,
    FOREIGN KEY (C_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (LP_program_id) REFERENCES loyalty_program(program_id)
);

CREATE TABLE points (
    points_id       INT PRIMARY KEY,
    points_status   VARCHAR(50) NOT NULL,
    expiry_date     DATE NOT NULL,
    R_reward_id     INT NULL,
    FOREIGN KEY (R_reward_id) REFERENCES reward(reward_id)
);

CREATE TABLE transaction (
    transaction_id  INT PRIMARY KEY,
    transaction_date    DATETIME NOT NULL,
    total_amount    DECIMAL(10, 2) NOT NULL,
    payment_method  VARCHAR(50) NOT NULL,
    points_earned   INT NOT NULL,
    E_employee_id   INT NOT NULL,
    C_customer_id   INT NOT NULL,
    FOREIGN KEY (E_employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (C_customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE shop_at (
    C_customer_id   INT,
    B_branch_id     INT,
    PRIMARY KEY (C_customer_id, B_branch_id),
    FOREIGN KEY (C_customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (B_branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE targets (
    P_promo_id      INT,
    C_customer_id   INT,
    PRIMARY KEY (P_promo_id, C_customer_id),
    FOREIGN KEY (P_promo_id) REFERENCES promotion(promo_id),
    FOREIGN KEY (C_customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE get_notify (
    P_promo_id      INT,
    C_customer_id   INT,
    PRIMARY KEY (P_promo_id, C_customer_id),
    FOREIGN KEY (P_promo_id) REFERENCES promotion(promo_id),
    FOREIGN KEY (C_customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE feature_be_feature (
    P_promo_id      INT,
    R_reward_id     INT,
    PRIMARY KEY (P_promo_id, R_reward_id),
    FOREIGN KEY (P_promo_id) REFERENCES promotion(promo_id),
    FOREIGN KEY (R_reward_id) REFERENCES reward(reward_id)
);

CREATE TABLE include_items (
    T_transaction_id    INT,
    P_product_id    INT,
    PRIMARY KEY (T_transaction_id, P_product_id),
    FOREIGN KEY (T_transaction_id) REFERENCES transaction(transaction_id),
    FOREIGN KEY (P_product_id) REFERENCES product(product_id)
);

CREATE TABLE appear_in (
    T_transaction_id    INT,
    P_product_id    INT,
    PRIMARY KEY (T_transaction_id, P_product_id),
    FOREIGN KEY (T_transaction_id) REFERENCES transaction(transaction_id),
    FOREIGN KEY (P_product_id) REFERENCES product(product_id)
);

CREATE TABLE be_earned_through (
    T_transaction_id    INT,
    P_points_id     INT,
    PRIMARY KEY (T_transaction_id, P_points_id),
    FOREIGN KEY (T_transaction_id) REFERENCES transaction(transaction_id),
    FOREIGN KEY (P_points_id) REFERENCES points(points_id)
);
