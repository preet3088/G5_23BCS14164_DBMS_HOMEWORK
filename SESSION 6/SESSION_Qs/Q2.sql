CREATE TABLE Persons (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
INSERT INTO Persons (id, name, age, email) VALUES
(1, 'Rajesh', 28, 'rajesh@gmail.com'),
(2, 'Priya', 25, 'priya@gmail.com'),
(3, 'Suresh', 30, 'rajesh@gmail.com'),
(4, 'Anjali', 24, 'priya@gmail.com');

SELECT * FROM PERSONS
-- TRUCATE TABLE PERSONS
UPDATE Persons
SET EMAIL='DUPLICATE EMAIL'
WHERE ID IN(
SELECT P1.id FROM PERSONS AS P1
JOIN Persons AS P2
ON P1.id>P2.ID AND P1.EMAIL=P2.EMAIL
);
