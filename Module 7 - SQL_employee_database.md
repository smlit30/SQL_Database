# MODULE 7 - RETIRING EMPLOYEE ANALYSIS 

# OVERVIEW 

The following sections will explain the breakdown of employee at the company Pewlett Hackard.  The tables that are mentioned below are list of epmloyees that are eligible for retiring, what titles they had and which of the employees can participate in a mentorship program.  This breakdown was provided using SQL then exported to a CSV file for easier viewing.  These list will better help the company leadership anticipate how many employees will retire soon and help better prepare younger employees learn from those about to retire.  

# RESULTS

Retirement Tables

Our first table "retirement_titles" contains simply a list of employee numbers, names, titles and dates they worked for the company for employees that were born between 1952 & 1955.  This is a list of employees that are anticipated to retire soon.  From these we can mainly gather a number of employees in this age range expected to leave the company in coming years.  NOTE: this list contains some employees that may have already left the company as well as duplicates if employees have had more than one title while at Pewlett Hackard.  

The table labeled "unique_titles" contains similiar information to the "retirement_titles" table except it just list current employees and only their most recent title.  This list is more helpful as it list the employee only once, their most recent title and would give us a better indication of the number of employees expected to retire soon.  

Finally the table "retiring_titles" contains simply the count of different titles for employees that were born between 1952 & 1955.  This table also list title in order of how many employees will retire with that table.  Example: we can see the first title listed - Senior Engineer has 25,916 employees in that age range while at the bottom of the list there are only 2 Managers that are within the expected retirement age range.  NOTE: This table only filters out employees by age range and does not take into account individuals ability to retire.  

Mentorship Table

The mentorship table listed as  "mentorship_eligibility" is a list of employess born in the year 1965.  This table list their empployee number, name, birthday date, their title and time they have been at the company.   The company wants to take a look at this list to see if those near retirement can mentor younger employees to retain their knowledge.  


# SUMMARY

As the "silver tsunami" approaches the company has 72,458 employees that are near retirment age and only 1,549 employees that are eligible for the mentorship program.  This is a great disparity that leaves the company in a less than ideal position.  There are a couple of different solutions that could be viable to help pass on the knowledge.  First, they could expand the eligibility years for who qualifies as a mentor or make sure that each "mentor" has multiple younger employees to teach.  

The table "total_employee_count" shows the count of all employee by title from which you can see how many employees there are with each title that could be compared to the retiring employees in each title.  As compared to the "retiring_title" table that has roughly 25,000 of the 85,000 senior engineers nearing retirement age and 2 of the 9 managers near retirement age.  This helps the company leadership gauge which roles they will need to fill in the coming years.  

