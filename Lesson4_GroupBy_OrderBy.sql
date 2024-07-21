#Using GROUP BY

SELECT gender
FROM employee_demographics
GROUP BY gender
#result would be 2 male & female.. but how is it different from DISTINCT? would be clearer when we use agregate functions
;

#would not work
SELECT first_name
FROM employee_demographics
GROUP BY gender
#result the selected column in this case, first_name is not an aggregated column.. so SELECT and GROUP BY need to match
;

#here adding aggregate functin from SELECT function
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;
#result  seeing average age of Male & average age of female, here we can see that female avg age is lower than male


#grouping more than 1 field
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;
#result it shows that office manager 5000 and 6000, if both office managers get paid 5000, only 1 Office Manager would be shown

#using MAX, MIN, COUNT
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;
#result  shows 2 rows, Female and Male, for both will show 
# AVG age, Max age from the list,Min age from the list and the Count/# of people in female & male
# here, female avg age is 38.5 where max is 46, min is 29 among 4 FEMALE employee

# Using ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name
;
# result shows first_name in increasing/alphabetical order BY DEFAULT, another way as below using ASC

# Using ORDER BY & ASC
SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;

# Using ORDER BY & DESC
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

 # Using ORDER
SELECT *
FROM employee_demographics
ORDER BY gender
;
#result; female would be at the top as F comes before M

SELECT *
FROM employee_demographics
ORDER BY gender, age
;
#result; female would be at the top as F comes before M and would start from the LOWEST AGE to highest

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;
#result; female would be at the top as F comes before M and would start from the HIGHEST AGE to lowest

# CAUTION!!! THE ORDER OF WHICH FIELD COMES FIRST IS IMPORTANT. USUALLY we order something that is UNIQUE FIRST
SELECT *
FROM employee_demographics
ORDER BY age, gender
;
#result; wont be ordered by anything as there is nothing unique in gender.. everyone is aged differently in the list

# instead of column name, we can use column POSITION but it is NOT RECOMMENDABLE/Best practise
SELECT *
FROM employee_demographics
ORDER BY 5, 4
;
#result; 5 is gender 4 is age; this case, as per previous queries, Female first then Male as F comes before M





