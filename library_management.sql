-- Members table
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    join_date DATE NOT NULL
);

-- Staff table
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- Books table (with foreign key to Authors)
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publisher VARCHAR(100),
    published_year YEAR,
    total_copies INT NOT NULL,
    available_copies INT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Borrowings table
CREATE TABLE Borrowings (
    borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    staff_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    due_date DATE NOT NULL,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Returns table
CREATE TABLE Returns (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    borrowing_id INT UNIQUE NOT NULL,
    return_date DATE NOT NULL,
    condition_notes TEXT,
    FOREIGN KEY (borrowing_id) REFERENCES Borrowings(borrowing_id)
);
