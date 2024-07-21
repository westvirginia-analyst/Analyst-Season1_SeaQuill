SELECT gender, AVG (age)
FROM employee_demographics
WHERE AVG (age) > 40
GROUP BY gender
;
# no output, error: ivalid use of group function; bcs it hasnt group by gender yet before going into avg age >40

SELECT gender, AVG (age)
FROM employee_demographics
GROUP BY gender
HAVING AVG (age) > 40
;
# having comes after group by


SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;
# here it is filtering out average salary of each occupation ,if any occupation is unique.. here we can see that we have several managers,
# we can take it a step further and see what would the average be like for managers by usng WHERE


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;
# at the first line we filter out occupation and calculate average salary then from the emplotee salary
# we take occupations with words manager in them
# group them by occupation
# here we can take it further by seeing average of more than x amount
# HAVING only works for aggregated fx after GROUP BY
