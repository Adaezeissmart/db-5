CREATE TABLE IF NOT EXISTS Salesman (
Salesman_id TEXT PRIMARY KEY,
name TEXT,
city TEXT,
Comission REAL
);

INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
    ('5001', 'James Maddox', 'London', 0.15),
    ('5003','Grk Rekanic', 'Zagreb', 0.13),
    ('5004','Dundde rak', 'Edinburgh', 0.14),
    ('5009','Grk Rekanic', 'Belfast', 0.10),
    ('5011','Sergio Bonmati', 'Madrid', 0.12);

CREATE TABLE IF NOT EXISTS Customer (
customer_id TEXT,
cust_name TEXT PRIMARY KEY,
city TEXT,
grade TEXT,
Salesman_id TEXT
);

INSERT INTO Customer(customer_id, cust_name,city,rade,Salesman_id)
VALUES
    ("3002","Nick Rimando","New York","200","5001"),
    ("3002","Brad David","Miami","200","5001"),
    ("3002","Graham Zusan","Liverpool","100","5001"),
    ("3002","Julian Grene","Manchester","200","5001"),
    ("3002","Fabian Romaro","Barcelona","300","5001"),
    ("3002","Geoff Cameroon","Moscow","400","5001"),
    ("3002","Joey Almadori ","Venice","200","5001"),
    ("3002","Bradley Geezer","London","","5001");

CREATE TABLE IF NOT EXISTS Orders(
ord_no TEXT PRIMARY KEY,
purch_amt TEXT,
ord_date TEXT,
customer_id TEXT,
Salesman_id TEXT
);
INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,Salesman_id)
VALUES
    ("70001","150.5","2012-10-05","3005","5002"),
    ("70009","270.65","2012-09-05","3001","5001"),
    ("70002","65.26","2012-10-10","3002","5003"),
    ("70004","110.5","2012-08-05","3009","5007"),
    ("70007","948.5","2012-09-17","3005","5005")
    ("70005","2400.6","2012-07-27","3007","5006")

SELECT Customer.cust_name, 