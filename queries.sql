CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES (1,'Rahul','Kochi');
INSERT INTO Customers VALUES (2,'Priya','Trivandrum');
INSERT INTO Customers VALUES (3,'Arun','Calicut');

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    total_amount REAL
);

INSERT INTO Orders VALUES (101,1,'2025-01-01',1200);
INSERT INTO Orders VALUES (102,2,'2025-01-03',800);
INSERT INTO Orders VALUES (103,1,'2025-01-10',600);
INSERT INTO Orders VALUES (104,3,'2025-01-15',1500);
