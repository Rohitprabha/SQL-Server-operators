--Arithmetic Operators

select EmpName, Salary+1000 TotalSalary from EMPLOYEE where EmpID=101
select EmpName, Salary-1000 TotalSalary from EMPLOYEE where EmpID=101
select EmpName, Salary*2 TotalSalary from EMPLOYEE where EmpID=101
select EmpName, Salary/10 TotalSalary from EMPLOYEE where EmpID=101
select EmpName, Salary%10 TotalSalary from EMPLOYEE where EmpID=101

--Logical Operators

SELECT * FROM Employee WHERE DeptID=10 AND EmpAddress = 'HYD'
SELECT * FROM Employee WHERE EmpAddress = 'HYD' OR Salary > 20000
SELECT * FROM Employee WHERE (DeptID=10 AND EmpAddress = 'HYD') OR (Salary = 20000)
SELECT * FROM EMPLOYEE WHERE NOT EmpAddress = 'HYD'

--Set Operators

Select * from Class_A Union Select * from Class_B
Select * from Class_A Union all Select * from Class_B
Select SName from Class_A Intersect Select SName from Class_B
Select SName from Class_A except Select SName from Class_B
select * from Class_A
select * from Class_B

--Comparison Operators

SELECT * FROM Employee WHERE EmpAddress = 'HYD'
SELECT * FROM Employee WHERE EmpAddress != 'HYD'
SELECT * FROM Employee WHERE EmpAddress <> 'HYD'
SELECT * FROM Employee WHERE EmpID > 105
SELECT * FROM Employee WHERE EmpID < 105
SELECT * FROM Employee WHERE Salary >= 40000
SELECT * FROM Employee WHERE Salary <= 39999
SELECT * FROM Employee WHERE EmpID !> 105
SELECT * FROM Employee WHERE EmpID !< 105

--Assignment operator

DECLARE @MyVar INT =10
select @MyVar AS MyResult

DECLARE @MyVar2 INT
SET @MyVar2 = 20
select @MyVar2 AS MyResult

SELECT FirstColumn = EmpID, SecondColumn = EmpName FROM Employee

--without using Compound Assignment Operators

DECLARE @MyVariable INT
SET @MyVariable = 10
SET @MyVariable = @MyVariable * 5
SELECT @MyVariable AS MyResult

--using Compound Assignment Operators

DECLARE @MyVariable1 INT
SET @MyVariable1 = 10
SET @MyVariable1 *= 5
SELECT @MyVariable1 AS MyResult

--Special Operators

Select * from EMPLOYEE where EmpID Between 104 and 107
select * from EMPLOYEE where EmpName in('Rohit','krishna','gopi')
select * from EMPLOYEE where EmpName like 'R%'
select * from EMPLOYEE where EmpName is Null

--ALL Operator

SELECT * FROM Class_A WHERE Age >= (SELECT MAX(AGE) FROM Class_B)	--without All
SELECT * FROM Class_A WHERE Age >= ALL (SELECT AGE FROM Class_B)	--with All

--ANY Operator

SELECT * FROM Class_A WHERE Age > (SELECT MIN(Age) FROM Class_B)		--without Any
SELECT * FROM Class_A WHERE Age > ANY (SELECT Age FROM Class_B)		--with Any

--SOME operator

SELECT * FROM Class_A WHERE Age > (SELECT MIN(Age) FROM Class_B)		--without Some
SELECT * FROM Class_A WHERE Age > SOME (SELECT Age FROM Class_B)		--with Some



