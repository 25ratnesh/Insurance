CREATE TABLE UserInsurance (
    userId INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

INSERT INTO UserInsurance (userId, username, password, role)
VALUES
(1, 'Ratnesh', 'password1', 'admin'),
(2, 'user2', 'password2', 'user'),
(3, 'user3', 'password3', 'user'),
(4, 'user4', 'password4', 'user'),
(5, 'user5', 'password5', 'user'),
(6, 'user6', 'password6', 'user'),
(7, 'user7', 'password7', 'user'),
(8, 'user8', 'password8', 'user'),
(9, 'user9', 'password9', 'user'),
(10, 'user10', 'password10', 'user');


CREATE TABLE Client (
    clientId INT PRIMARY KEY AUTO_INCREMENT,
    clientName VARCHAR(255) NOT NULL,
    contactInfo VARCHAR(255) NOT NULL,
    policy VARCHAR(255) NOT NULL
);

INSERT INTO Client (clientId, clientName, contactInfo, policy)
VALUES
(1, 'Client1', '9876543210', 'Health Policy'),
(2, 'Client2', '8765432109', 'Auto Insurance'),
(3, 'Client3', '7654321098', 'Home Insurance'),
(4, 'Client4', '6543210987', 'Travel Insurance'),
(5, 'Client5', '5432109876', 'Life Insurance'),
(6, 'Client6', '4321098765', 'Property Insurance'),
(7, 'Client7', '3210987654', 'Business Insurance'),
(8, 'Client8', '2109876543', 'Motor Insurance'),
(9, 'Client9', '1098765432', 'Accident Insurance'),
(10, 'Client10', '9876543210', 'Health Policy');


CREATE TABLE Claim (
    claimId INT PRIMARY KEY AUTO_INCREMENT,
    claimNumber VARCHAR(255) NOT NULL,
    dateFiled DATE NOT NULL,
    claimAmount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    policy VARCHAR(255) NOT NULL,
    clientId INT,
    FOREIGN KEY (clientId) REFERENCES Client(clientId)
);

INSERT INTO Claim (claimId, claimNumber, dateFiled, claimAmount, status, policy, clientId)
VALUES
(1, 'CLM123', '2023-01-01', 5000.00, 'Pending', 'Health Policy', 1),
(2, 'CLM456', '2023-02-15', 7000.00, 'Approved', 'Auto Insurance', 2),
(3, 'CLM789', '2023-03-30', 3000.00, 'Rejected', 'Home Insurance', 3),
(4, 'CLM456', '2023-05-20', 2500.00, 'Pending', 'Travel Insurance', 4),
(5, 'CLM789', '2023-06-10', 1800.00, 'Approved', 'Life Insurance', 5),
(6, 'CLM123', '2023-07-01', 4000.00, 'Rejected', 'Property Insurance', 6),
(7, 'CLM456', '2023-08-15', 3000.00, 'Pending', 'Business Insurance', 7),
(8, 'CLM789', '2023-09-30', 2200.00, 'Approved', 'Motor Insurance', 8),
(9, 'CLM123', '2023-11-05', 3500.00, 'Pending', 'Accident Insurance', 9),
(10, 'CLM456', '2023-12-20', 2800.00, 'Approved', 'Health Policy', 10);


CREATE TABLE PaymentInsurance (
    paymentId INT PRIMARY KEY AUTO_INCREMENT,
    paymentDate DATE NOT NULL,
    paymentAmount DECIMAL(10, 2) NOT NULL,
    clientId INT,
    FOREIGN KEY (clientId) REFERENCES Client(clientId)
);

INSERT INTO PaymentInsurance (paymentId, paymentDate, paymentAmount, clientId)
VALUES
(1, '2023-01-15', 2000.00, 1),
(2, '2023-02-28', 3000.00, 2),
(3, '2023-04-10', 1500.00, 3),
(4, '2023-05-01', 1200.00, 4),
(5, '2023-06-25', 2800.00, 5),
(6, '2023-08-05', 1500.00, 6),
(7, '2023-09-18', 2000.00, 7),
(8, '2023-10-10', 1800.00, 8),
(9, '2023-11-28', 2200.00, 9),
(10, '2023-12-15', 2500.00, 10);


CREATE TABLE Policy (
    policyId INT PRIMARY KEY AUTO_INCREMENT,
    policyName VARCHAR(255) NOT NULL,
    coverageAmount DECIMAL(10, 2) NOT NULL
);

INSERT INTO Policy (policyId, policyName, coverageAmount) VALUES
(1, 'Health Insurance', 5000.00),
(2, 'Auto Insurance', 10000.00),
(3, 'Home Insurance', 7500.00),
(4, 'Travel Insurance', 3000.00),
(5, 'Life Insurance', 15000.00),
(6, 'Property Insurance', 8000.00),
(7, 'Business Insurance', 12000.00),
(8, 'Motor Insurance', 6000.00),
(9, 'Accident Insurance', 4000.00),
(10, 'Pet Insurance', 2000.00);
