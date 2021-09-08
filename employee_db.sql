-- Find the first employee of D3 designation level who joined first. Enter his/her full name.
select *, concat_ws(' ', First_Name, Surname) as Full_Name from employee_db where Designation_Level='D3' order by Joining_Date limit 1

-- Find out number of employees who has salary between 7 and 10 LPA and who joined after 2015.
select count(*) from employee_db where Joining_Date >'2015-01-01' and Annual_CTC_LPA between 7 and 10

-- Find how many female employees from VCS team are in d2 and d3.
select count(*) from employee_db where gender='f' and Team_Name='VCS' and Designation_Level in ('D2','D3')

-- Find how much (in LPA) in total it costs for the company to sustain team DFT?
select sum(Annual_CTC_LPA) from employee_db where Team_Name='DFT'

-- What is the average salary for men?
select avg(Annual_CTC_LPA) from employee_db where Gender='m'

-- How many women with salary between 5 and 10 LPA and joined before 2015 and who have performance rating > 2?
select count(*) from employee_db where Gender='f' and Performace_Rating>2 and Joining_Date<'2015-01-01' and Annual_CTC_LPA between 5 and 10

-- How many people are in the IT-Admin team?
select count(*) from employee_db where Team_Name='IT-Admin'

-- Salary of highest paid female employee.
select max(Annual_CTC_LPA) from employee_db where Gender='f'

-- How many members of the Verification team have low performance ratings (less than 2)?
select count(*) from employee_db where Performace_Rating<2 and Team_Name='Verification'

-- How many D3s are in all the teams except Zebu?
select count(*) from employee_db where Designation_Level='D3' and Team_Name NOT IN ('Zebu')
