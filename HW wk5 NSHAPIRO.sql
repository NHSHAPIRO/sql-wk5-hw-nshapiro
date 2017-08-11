#Create the schema for the data base
CREATE SCHEMA IF NOT EXISTS DBorglist;

#Create the table stafflist
CREATE TABLE stafflist(EmployeeID Numeric, EmployeeName Text, JobTitle Text, LeaderID Numeric)


#Insert into stafflist table
INSERT INTO stafflist
VALUES
(EmployeeID, EmployeeName, JobTitle, LeaderID),
('1','Steve Jobs','CEO',Null),
('2','Tim Cook','COO','1'),
('3','Peter Oppenhiemer','CFO','1'),
('4','Kattie Cotton','SVP','1'),
('5','Michael Fenger','VP','2'),
('6','Betsy Rafael','VP','3'),
('7','Douglas Beck','VP','2'),
('8','Gary Wipfler','VP','3'),
('9','Jeffrey Williams','SVP','1'),
('10','Rita Lane','VP','3')

#Show the reporting structire
SELECT
Staff.EmployeeName AS 'Staff',
#CONCAT(EmployeeName,'',JobTitle), AS 'Leader'
Leader.EmployeeName AS'Leader'
#JobTitle.EmployeeName AS 'Title'
FROM stafflist AS Staff
INNER JOIN stafflist AS Leader
On Staff.LeaderID=Leader.EmployeeID 
ORDER BY Staff.EmployeeID

 
