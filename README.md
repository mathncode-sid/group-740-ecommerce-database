# Group 740 E-Commerce Database

This repository contains a structured SQL schema designed for an e-commerce platform. It defines the essential tables and relationships required to manage products, customers, orders, and related entities within an online retail system.
### 📁 Repository Contents

    group 740-database.sql: The primary SQL script that creates the database schema, including table definitions, constraints, and relationships.

    image.png: A visual representation of the database schema, illustrating the tables and their interconnections.

### 🗃️ Database Schema Overview

The database schema encompasses the following core tables:

    Customers: Stores customer information such as names and contact details.

    Orders: Records customer orders, including order dates and total amounts.

    Products: Contains product details like names, descriptions, prices, and stock quantities.

    Categories: Organizes products into hierarchical categories for easier navigation and management.

    OrderDetails: Captures the specifics of each order, linking products to orders and recording quantities and prices.

The schema is designed with normalization principles in mind, ensuring data integrity and reducing redundancy.
## 🔧 Getting Started

To set up and utilize the database schema:

### 1. Clone the Repository:

       git clone https://github.com/mathncode-sid/group-740-ecommerce-database.git

### 2. Set Up the Database:

    Use a SQL-compatible database management system (e.g., MySQL, PostgreSQL).

    Execute the group 740-database.sql script to create the database schema:

        mysql -u your_username -p your_database < "group 740-database.sql"

### 3. Review the Schema Diagram:

   Open image.png to visualize the database structure and understand the relationships between tables.
   

## 📌 Usage

This database schema serves as a foundational structure for developing e-commerce applications. It can be integrated into web applications, used for academic projects, or extended to include additional features such as user authentication, payment processing, and inventory management.

## 🤝 Contributing

Contributions are welcome! If you'd like to enhance the schema, fix issues, or add new features:

1. Fork the repository.

2. Create a new branch:

       git checkout -b feature/your-feature-name

3. Commit your changes:

       git commit -m "Add your message here"

4. Push to the branch:

       git push origin feature/your-feature-name

5. Open a pull request detailing your changes.

## Contributors
A special thank you to the following for their joint effort in completing this assignment:

1. Mellon Pakkies – [GitHub](https://github.com/MellonP)
2. Mary Maina – [GitHub](https://github.com/mn869)
3. Mary Kiaraho – [GitHub](https://github.com/mkiaraho)
4. Kevin Kahara – [GitHub](https://github.com/Qahara)
5. Ivene Chebet – [GitHub](https://github.com/Ivenechebet001)
6. Sidney Muriuki – [GitHub](https://github.com/mathncode-sid)
