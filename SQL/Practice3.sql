
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing'),
(5,'Sales');

SELECT * FROM Departments;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    salary INT,
    hire_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);


INSERT INTO Employees VALUES
(101,'Ram','Sharma','Male',55000,'2021-03-15',2),
(102,'Sita','Karki','Female',48000,'2020-07-10',1),
(103,'Hari','Thapa','Male',62000,'2019-01-22',3),
(104,'Gita','Rai','Female',51000,'2022-09-01',4),
(105,'Shyam','Gurung','Male',70000,'2018-11-30',2),
(106,'Nita','Lama','Female',46000,'2023-05-18',5),
(107,'Kiran','Adhikari','Male',54000,'2021-12-11',3),
(108,'Pooja','Shrestha','Female',58000,'2020-04-25',4),
(109,'Bikash','Bhandari','Male',61000,'2019-08-09',2),
(110,'Anita','KC','Female',53000,'2022-01-05',1);

SELECT * FROM Employees;


CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Projects VALUES
(1,'Website Development',2),
(2,'Employee Training',1),
(3,'Budget Planning',3),
(4,'Market Research',4),
(5,'Sales Expansion',5);

SELECT * FROM Projects;











