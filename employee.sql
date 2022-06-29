use adityaraj;
create table EmployeeInfo(EmpId int(20),EmpFname varchar(50),EmpLname varchar(50),Department varchar(50), Project varchar(50),Address varchar(50),DOB date,Gender char);
create table EmployeePosition(EmpId int(20),EmpPosition varchar(50),DateOfJoining date, Salary int(255));
desc EmployeeInfo;
desc EmployeePosition;
insert into EmployeeInfo values(1,"sanjay","MEHRA","HR","P1","HYDERABAD(HYD)","1976-12-01",'M');
insert into EmployeeInfo values(2,"ANANYA","Mishra","ADMIN","P2","DELHI(DEL)","1968-05-02",'F');
insert into EmployeeInfo values(3,"ROHAN","DEVAAN","ACCOUNT","P3","MUMBAI(MUM)","1980-01-01",'M');
insert into EmployeeInfo values(4,"SONIYA","KULKARNI","HR","P1","HYDERABAD(HYD)","1992-05-02",'F');
insert into EmployeeInfo values(5,"ANKIT","KAPOOR","ADMIN","P2","DELHI(DEL)","1994-07-03",'M');
insert into EmployeePosition values(1,"manager","2022-05-01",500000);
insert into EmployeePosition values(2,"executive","2022-05-02",500000);
insert into EmployeePosition values(3,"manager","2022-05-01",75000);
insert into EmployeePosition values(2,"lead","2022-05-02",90000);
insert into EmployeePosition values(1,"executive","2022-05-01",300000);
select * from EmployeeInfo;
select * from EmployeePosition;
select Ucase(EmpFname) from EmployeeInfo as EmpName;
select count(*) from EmployeeInfo  where Department="HR";
SELECT 	curdate();
select substr(EmpLname,1,4) from EmployeeInfo;
select mid(Address,1,length(Address)-5) from EmployeeInfo ;
create table newTable as select * from EmployeeInfo;
select * from EmployeePosition where Salary between 50000 and 100000;
select * from EmployeeInfo where EmpFname like 'S%';
select * from EmployeeInfo limit 5;
select concat(EmpFname ," ",EmpLname) as fullname from  EmployeeInfo;
select count(*) from EmployeeInfo where DOB between "1970-05-02" and 1975-12-31;
select * from EmployeeInfo order by EmpLname desc ,Department asc;
select * from EmployeeInfo where EmpLname like '____A';
SELECT * FROM EmployeeInfo where EmpFname not in("sanjay", "soniya");
SELECT * FROM EmployeeInfo where Address="DELHI(DEL)";
select * from EmployeePosition where EmpPosition="manager";
select *, count(*) from EmployeeInfo group by Department order by Department asc;

Select  * from EmployeeInfo where exists (select * from EmployeePosition where DateOfJoining is not null);  
select * from employeePosition order by Salary desc limit 2;
select * from employeePosition order by Salary asc limit 2;

select count(EmpId)  from EmployeeInfo group by EmpId having count(EmpId)>1;
Select * from EmployeeInfo e1,EmployeeInfo e2 where e1.Department=e2.Department and e1.EmpFname!=e2.EmpFname;   
select * from employeeInfo limit 3 offset 2 ;
select * from employeePosition order by Salary desc limit 1 offset 3;







