# LIMIT AND ALIASING 

SELECT *
FROM employee_demographics
LIMIT 3
;
# result - first 3 in the table

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;
# result - with age descending in mind, take first 3 and list

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 1
;
# result - with age descending in mind, take first 3 and go ONE ROW DOWN

# ALIASING --- replacing name of column you are aggregating etc.

SELECT gender, AVG (age)
FROM employee_demographics
GROUP BY gender
HAVING AVG (age) > 40
;
# here is how we see it in the beginner lessons, naming aggregate clause of AVG (age).. we can actually rename this to
# a more common/readable name

#adding AS
SELECT gender, AVG (age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

#no need to add AS also works
SELECT gender, AVG (age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
