# Pewlett-Hackard-Analysis
## Overview of Analysis
The purpose of this analysis is to use employee data from a large corporation called Pewlett-Hackard in the form of six large CSV files, each with hundreds of thousands of rows. PostgreSQL was employed to quickly deal with these large datasets and an analysis was performed using SQL queries to make tables that can help answer important questions for the business. The user interface (query editor) used to perform analysis on the PostgreSQL database is pgAdmin 4. Also, an entity-relationship diagram (see EmployeeDB.png file in repository) was made to help understand the relationships between the datasets from the csv files for the analysis. <br/>
For this analysis, the following business questions will be addressed:
* What are the titles of all the current employees at the company that are retiring?
* How many employees for each title are retiring?
* How many employees are eligible to participate in the company mentorship program for incoming employees?
## Results
### Key Points of Analysis:
* Below is a table made using PostgreSQL that contains the employees that are retiring and includes their employee number, full name, title, and employment dates. 
Only top ten rows displayed.
![Retirement Titles](./Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/retirement_titles.png)
<br/>

* The table above contained some duplicate employees because some employees had changed titles over time within the company. The table below has the past titles of employees removed to only show one (current) title per employee. Only top ten rows displayed.
![Unique Titles](./Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/unique_titles.png)
<br/>

* Below is the count of the employees per title retiring, which gives insight into the types of job openings the company will soon have. Whole table shown. <br/>
![Retiring Titles](./Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/retiring_titles.png)
<br/>

* Below is a table showing the employees that are eligible for the company's mentorship program. The criteria is that the employee must be born in the year 1965. Only top ten rows displayed.
![Mentorship Eligibility](./Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/mentorship_eligibility.png)<br/>

## Summary
In conclusion, the analysis shed light on the gravity of the retiring situation at Pewlett-Hackard. There are a total of 72,458 employees leaving the company, and planning needs to be done to ensure a smooth transition  for the company as they obtain new employees. <br/>
Additionally, it is important to check if there are enough mentors in the mentorship program per title, to ensure that the vacant positions in the company have a resepctive trainer for the incoming employee. Below is the count of available mentors per position.<br/>
![Mentor Count](./Analysis%20Projects%20Folder/Pewlett-Hackard%20Analysis%20Folder/mentor_count.png)
<br/>
When comparing the available mentors for each title to the number of retiring employees for each title, a discrepancy can be seen and there are not nearly enough mentors for the soon-to-be vacant positions. Also, there are no mentors for the two manager positions that will be filled.
<br/>
