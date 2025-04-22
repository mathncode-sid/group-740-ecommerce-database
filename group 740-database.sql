-- CREATE DATABASE ecommerce_db;
USE ecommerce_db;
/*
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100)
);

CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50)
);

CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_name VARCHAR(100)
);

CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_value VARCHAR(50),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50)
);

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    variation_id INT,
    price DECIMAL(10,2),
    quantity_in_stock INT,
    FOREIGN KEY (variation_id) REFERENCES product_variation(variation_id)
);

CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_category_id INT,
    attribute_type_id INT,
    attribute_name VARCHAR(100),
    attribute_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

CREATE TABLE `users` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `posts` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    body TEXT,
    user_id INT,
    `status` VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES `users`(id)
);

CREATE TABLE follows (
    following_user_id INT,
    followed_user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (following_user_id, followed_user_id),
    FOREIGN KEY (following_user_id) REFERENCES `users`(id),
    FOREIGN KEY (followed_user_id) REFERENCES `users`(id)
);*/

/*Comment out the above if you don't have the database yet */

-- Brand
INSERT INTO brand (brand_name) VALUES 
('Nike'), ('Adidas'), ('Puma'), ('Apple'), ('Samsung');

-- Product Category
INSERT INTO product_category (category_name) VALUES 
('Shoes'), ('T-Shirts'), ('Smartphones'), ('Laptops');

-- Color
INSERT INTO color (color_name) VALUES 
('Red'), ('Blue'), ('Black'), ('White'), ('Green');

-- Size Category
INSERT INTO size_category (size_category_name) VALUES 
('Clothing Sizes'), ('Shoe Sizes');

-- Size Option
INSERT INTO size_option (size_category_id, size_value) VALUES 
(1, 'S'), (1, 'M'), (1, 'L'),
(2, '6'), (2, '7'), (2, '8');

-- Attribute Category
INSERT INTO attribute_category (category_name) VALUES 
('Material'), ('Warranty'), ('Battery');

-- Attribute Type
INSERT INTO attribute_type (type_name) VALUES 
('Text'), ('Number'), ('Boolean');

-- Product
INSERT INTO product (product_name, brand_id, category_id, base_price) VALUES 
('Air Max 2024', 1, 1, 129.99),
('Ultraboost 23', 2, 1, 149.99),
('Galaxy S22', 5, 3, 999.99),
('MacBook Air M2', 4, 4, 1199.00);

-- Product Images
INSERT INTO product_image (product_id, image_url) VALUES 
(1, 'https://example.com/img/airmax.jpg'),
(2, 'https://example.com/img/ultraboost.jpg'),
(3, 'https://example.com/img/s22.jpg'),
(4, 'https://example.com/img/macbook.jpg');

-- Product Variations
INSERT INTO product_variation (product_id, color_id, size_option_id) VALUES 
(1, 3, 5),  -- Air Max Black Size 7
(1, 3, 6),  -- Air Max Black Size 8
(2, 2, 4),  -- Ultraboost Blue Size 6
(3, 1, NULL),  -- Galaxy S22 Red
(4, 4, NULL);  -- MacBook White

-- Product Items
INSERT INTO product_item (variation_id, price, quantity_in_stock) VALUES 
(1, 129.99, 10),
(2, 129.99, 5),
(3, 149.99, 8),
(4, 999.99, 15),
(5, 1199.00, 7);

-- Product Attributes
INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, attribute_name, attribute_value) VALUES 
(1, 1, 1, 'Material', 'Mesh & Rubber'),
(3, 2, 2, 'Warranty (Months)', '24'),
(3, 3, 1, 'Battery Life', '4000mAh'),
(4, 3, 1, 'Battery Life', '18 hours');

-- Users
INSERT INTO users (username, role) VALUES 
('admin', 'admin'), 
('johndoe', 'customer'), 
('janedoe', 'customer');

-- Posts
INSERT INTO posts (title, body, user_id, status) VALUES 
('Welcome to our store', 'Check out our latest offers!', 1, 'published'),
('My review of Ultraboost', 'Great shoes!', 2, 'published'),
('Battery performance', 'My experience with the Galaxy S22', 3, 'published');

-- Follows
INSERT INTO follows (following_user_id, followed_user_id) VALUES 
(2, 1), 
(3, 1), 
(2, 3);
