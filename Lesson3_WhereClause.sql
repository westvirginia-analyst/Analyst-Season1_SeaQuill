SELECT first_name, 
last_name,
age,                                                                                                                                                                                                                                                                                                                                                                                                                                                   
(age + 10)*10
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM employee_salary
WHERE salary != 5000
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;


-- AND, OR, OR NOT -- Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

#PEMDAS - Where you can put brackets is an isolated conditional statament
# cont - this means that this condition MUST be met and whatever outside is can be met too

SELECT *
FROM employee_demographics
WHERE (first_name='Leslie' AND age=44) OR age > 55
;

# LIKE Statement; looking for a specific pattern

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%' #% here means anything that starts with Jer
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%' # %er%  here means that any first name has er somewhere in it
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' #double underscore in 'a__'; searching 2 characters after it starting with a
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' #double underscore in 'a__'; searching 2 characters after it starting with a
;
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%' #a + 3 characters AND anything after that; this case Ann is not in the list
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%' #any birthdate with 1989 -- must add % 
;