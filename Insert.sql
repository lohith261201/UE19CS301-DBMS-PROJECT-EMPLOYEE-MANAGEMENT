\c employeemanagement

INSERT INTO Employee VALUES
(1, '2000-11-03', 'permanent', 'female', 'Lalitha Sravanti', 'Dasu', 'HSR Layout'),
(2, '2001-04-10', 'permanent', 'female', 'Meenakshi', 'Suresh', 'sector-5 HSR Layout, Bangalore'),
(3, '2001-12-26', 'permanent', 'male', 'Lohith', 'Srinivas', 'Electronic City, Bangalore'),
(4, '1983-03-20', 'permanent', 'male', 'Deep', 'Mehta', 'Bellandur, Bangalore'),
(5, '2001-09-03', 'temporary', 'female', 'Satya', 'Rajan', 'Koramangala, Bangalore'),
(6, '1989-11-05', 'permanent', 'female', 'Sunaina', 'Agrawal', 'Koramangala 5th block, Bangalore'),
(7, '1991-03-10', 'permanent', 'male', 'Rahul', 'Mittal', 'Banashankari, Bangalore'),
(8, '1997-07-12', 'permanent', 'male', 'Sanjay', 'Dutt', 'Whitefield, Bangalore'),
(9, '2000-09-07', 'temporary', 'male', 'Vinod', 'Narayan', 'Bommanahalli, Bangalore'),
(10, '1986-12-02', 'permanent', 'male', 'Neel', 'Roy', 'Bellandur, Bangalore');

INSERT INTO Dependents VALUES
('Sunitha Mehta', 4, 'female', '1985-07-21', 'wife'),
('Riya Mehta', 4, 'female', '2012-03-20', 'daughter'),
('Anika Sen', 4, 'female', '1965-04-05', 'mother'),
('Raj Agrawal', 6, 'male', '1984-03-02', 'husband'),
('Baldev Das', 6, 'male', '1959-09-12', 'father'),
('Chitra Suresh', 2, 'female', '1974-04-20', 'mother'),
('Abhimanyu Roy', 10, 'male', '1960-12-20', 'father'),
('Neelam Roy', 10, 'female', '1969-02-21', 'mother');

INSERT INTO Leave_type VALUES
(1, 'Annual Leave', 20),
(2, 'Loss of Pay Leave', 90),
(3, 'Sick Leave', 15),
(4, 'Maternity Leave', 180),
(5, 'Paternity Leave', 160);

INSERT INTO Building VALUES
(1, 'Verizon Corporation Limited',1000),
(2, 'Verizon Research Lab', 300);

INSERT INTO Department VALUES
('Product Development',6),
('Human Resources',4),
('Technical Support',7),
('Sales Support', 8),
('Product Research', 10);

INSERT INTO Project VALUES
('Fingerprint Voting System', 40000), 
('Inventory Management', 50000),
('Project Management Tool', 45000),
('PDF Reader 2.1', 30000),
('PDF Reader 2.1 Lite', 32000);

INSERT INTO Skill VALUES
(1, 'Big Data Analysis', 'Hadoop, Spark'), 
(2, 'Project Planning', 'Trello'),
(3, 'Quality Testing', 'Selenium'),
(4, 'Database Systems', 'Oracle'),
(5, 'Market Intelligence', 'Crunchbase'),
(6, 'Integrated Circuit Design', 'Cadence'),
(7, 'Object Oriented Design', 'C++'),
(8, 'Programming', 'C++/Java'),
(9, 'Written and Verbal Communication', 'None'),
(10, 'Mentoring', 'None');

INSERT INTO Salary_Range VALUES
(1, 4, 30000, 35000),
(2, 5, 40000, 55000),
(3, 6, 60000, 70000),
(4, 7, 72000, 80000),
(5, 8, 85000, 95000);

INSERT INTO houses VALUES
(1, 'Product Development', 1),
(2, 'Human Resources', 1),
(3, 'Technical Support', 1),
(4, 'Sales Support', 1),
(5, 'Product Development', 2),
(6, 'Technical Support', 2),
(7, 'Product Research', 2);

INSERT INTO works_in VALUES
(1, 1, 'Product Research'),
(2, 2, 'Product Development'),
(3, 3, 'Human Resources'),
(4, 4, 'Human Resources'),
(5, 5, 'Sales Support'),
(6, 6, 'Product Development'),
(7, 7, 'Technical Support'),
(8, 8, 'Sales Support'),
(9, 9, 'Technical Support'),
(10, 10, 'Product Research');

INSERT INTO works_on VALUES
('2020-08-10', 6, 1, 'Fingerprint Voting System'),
('2020-09-21', 6, 2, 'Fingerprint Voting System'),
('2019-04-22', 6, 6, 'Fingerprint Voting System'),
('2019-02-12', 7, 3, 'Fingerprint Voting System'),
('2020-11-03', 7, 5, 'Fingerprint Voting System'),
('2010-08-03', 7, 4, 'Inventory Management'),
('2015-03-17', 10, 7, 'Inventory Management'),
('2018-04-17', 5, 2, 'Inventory Management'),
('2017-11-21', 7, 3, 'Project Management Tool'),
('2018-08-03', 8, 4, 'Project Management Tool'),
('2017-02-02', 6, 6, 'Project Management Tool'),
('2018-09-09', 8, 9, 'Project Management Tool'),
('2021-01-21', 8, 5, 'PDF Reader 2.1'),
('2020-09-02', 6, 9, 'PDF Reader 2.1'),
('2017-08-21', 7, 10, 'PDF Reader 2.1'),
('2018-03-03', 8, 8, 'PDF Reader 2.1 Lite'),
('2018-06-01', 7, 1, 'PDF Reader 2.1 Lite'),
('2019-06-21', 8, 10, 'PDF Reader 2.1 Lite');

INSERT INTO Avails_leave VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 6, 4),
(12, 8, 2),
(13, 4, 5),
(14, 10, 5),
(15, 4, 3),
(16, 5, 3),
(17, 8, 2);

INSERT INTO Has VALUES
(1, 1, 7),
(2, 1, 8),
(3, 2, 4),
(4, 2, 8),
(5, 3, 2),
(6, 3, 9),
(7, 4, 9),
(8, 4, 10),
(9, 5, 9),
(10, 5, 3),
(11, 5, 5),
(12, 6, 10),
(13, 6, 1),
(14, 6, 6),
(15, 7, 8),
(16, 7, 9),
(18, 8, 5),
(19, 8, 9),
(20, 8, 10),
(21, 9, 8),
(22, 10, 10),
(23, 10, 6),
(24, 10, 8);

INSERT INTO assigned_to VALUES
(1, 'Fingerprint Voting System', 'Product Research'),
(2, 'Fingerprint Voting System', 'Product Development'),
(3, 'Fingerprint Voting System', 'Human Resources'),
(4, 'Fingerprint Voting System', 'Sales Support'),
(5, 'Inventory Management', 'Sales Support'),
(6, 'Inventory Management', 'Product Development'),
(7, 'Project Management Tool', 'Human Resources'),
(8, 'Project Management Tool', 'Product Development'),
(9, 'Project Management Tool', 'Technical Support'),
(10, 'PDF Reader 2.1', 'Sales Support'),
(11, 'PDF Reader 2.1', 'Technical Support'),
(12, 'PDF Reader 2.1', 'Product Research'),
(13, 'PDF Reader 2.1 Lite', 'Sales Support'),
(14, 'PDF Reader 2.1 Lite', 'Product Research');

INSERT INTO Earns VALUES
(1,3,1),
(2,3,2),
(3,2,3),
(4,5,4),
(5,3,5),
(6,5,6),
(7,4,7),
(8,4,8),
(9,1,9),
(10,5,10);