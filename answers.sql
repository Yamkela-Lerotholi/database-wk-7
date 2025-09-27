-- Question 1: Achieving 1NF


-- Step 1: Create a normalized version in 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

-- Step 2: Insert data in 1NF form
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');


-- Question 2: Achieving 2NF

-- Step 1: Create Orders table (remove partial dependency)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Insert data into Orders
INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- Step 3: Create OrderProducts table
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 4: Insert data into OrderProducts
INSERT INTO OrderProducts VALUES (101, 'Laptop', 2);
INSERT INTO OrderProducts VALUES (101, 'Mouse', 1);
INSERT INTO OrderProducts VALUES (102, 'Tablet', 3);
INSERT INTO OrderProducts VALUES (102, 'Keyboard', 1);
INSERT INTO OrderProducts VALUES (102, 'Mouse', 2);
INSERT INTO OrderProducts VALUES (103, 'Phone', 1);

