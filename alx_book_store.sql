CREATE TABLE Books (
    book_id INT Primary Key,
    title VARCHAR(130) NOT NULL,
    author_id INT FOREIGN KEY REFERENCES Authors(author_id)
    price DOUBLE(8, 2),
    publication_date DATE
);

CREATE TABLE Authors (
    author_id INT Primary Key,
    customer_nam VARCHAR(215) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    Email VARCHAR(215) UNIQUE,
    address TEXT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id)
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid  INT PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES  Orders(order_id),
    book_id INT FOREIGN KEY REFERENCES  Books(book_id),
    quantity DOUBLE
);
