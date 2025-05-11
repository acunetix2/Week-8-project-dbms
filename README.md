# Week-8-project-dbms
# Library Management System (MySQL)

## Project Description

This is a **Library Management System**. It models a real-world library that keeps track of:

- Books and their authors
- Registered library members
- Staff who manage book lending
- Borrowing and return records

## Relationships between entities
-  One-to-Many ( Members → Borrowings)
-  One-to-One (Borrowings → Returns)
-  Many-to-One (Books ↔ Authors via author_id)
-  
-  Constraints (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`)

## How to Set Up the Project

### Requirements

- MySQL Server installed
- MySQL Workbench or compatible client

### Setup Steps

1. **Download the .sql file**:

   - Download the `library_management.sql` file from this repository.

2. **Open MySQL Workbench**:

   - Open MySQL Workbench on your computer.

3. **Set up the Database**:

   - In MySQL Workbench, go to **File** → **Open SQL Script** and select the `library_management.sql` file you downloaded.
   
   - Click on the **lightning bolt like button** icon (Execute) to run the script.

   - This will create all the tables and relationships in your MySQL database.


4. **Verify Database Creation**:

   - After executing the script, verify the tables were created by running the following query in MySQL Workbench:

     **USE library_management;**
     **SHOW TABLES;**
   - You should see tables like: Members, Books, Staff, Borrowings and Returns.

