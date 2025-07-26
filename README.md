# 📚 Book Bazaar

Book Bazaar is an online platform where users can search, purchase, and review books, while authors can upload and manage their own publications. The system integrates **MySQL** for structured data and **MongoDB** for flexible, unstructured book reviews.

## 📌 Project Overview & Goals

Book Bazaar is a full-stack database project designed to:

- Model a relational database for books, authors, and users using **MySQL**.
- Store and retrieve user reviews using **MongoDB**.
- Support essential CRUD operations in both SQL and NoSQL databases.
- Demonstrate normalization, relationships, and transactional behavior.

## 🛠️ Setup Instructions

### MySQL Setup

1. Download and install **MySQL 8.x Community Server**.
2. Install **MySQL Workbench**.
3. Add MySQL Shell `bin/` folder to your system environment variables.
4. Start the MySQL server and verify it works.

### MongoDB Setup

1. Download and install **MongoDB Community Server**.
2. Download **MongoDB Shell** and add its `bin/` folder to system environment variables.

## ▶️ How to Run

### MySQL Commands

1. **Create Schema & Sample Data**  
   ```bash
   mysql -u root -p < schema.sql
   ```

2. **Run CRUD Demo with Transactions**  
   ```bash
   mysql -u bookadmin -p bookbazaar < crud_demo.sql
   ```

### MongoDB Reviews

1. Run the MongoDB reviews demo:  
   ```bash
   mongosh < .\crud_reviews.js
   ```

## 🧱 Database Design

### ER Diagram Summary

- **Authors** write many **Books** (One-to-Many).
- **Users** purchase many **Books** (Many-to-Many via `User_Book`).
- Keys and constraints are applied to ensure normalization and consistency.

### Normalization

- **1NF**: No repeating groups.
- **2NF**: No partial dependencies.
- **3NF**: No transitive dependencies.

## 💬 MongoDB `reviews` Collection

```json
{
  "_id": "ObjectId",
  "book_id": Int,
  "reviewer": "String",
  "rating": Int,
  "comment": "String",
  "created_at": "ISODate"
}
```

## 🧯 Troubleshooting

### MySQL

- Ensure `bookadmin` has full privileges on `bookbazaar` schema.
- Use `utf8mb4` charset for Unicode support.

### MongoDB

- Use a user with `readWrite` on `bookbazaar_reviews`.
- Authenticate using:
  ```bash
  mongosh --username youruser --password yourpass --authenticationDatabase admin
  ```

## 🧾 License

This project is for educational purposes only.
