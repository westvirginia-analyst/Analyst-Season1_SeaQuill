SELECT * 
FROM parks_and_recreation.employee_demographics;

#PEMDAS 

# using DISTNCT to get common UNIQUE values from a table e.g. Male or Female; names are often unique
#result = show 2 gender male & female in 1 column
SELECT DISTINCT gender
FROM Parks_and_Recreation.employee_demographics;

# using DISTNCT to get common UNIQUE values from a table e.g. Male or Female; names are often unique
#result = show 2 gender male & female AND First name so 2 columns
SELECT DISTINCT gender, first_name
FROM Parks_and_Recreation.employee_demographics;




