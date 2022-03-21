USE employees;

-- PART 1
-- TODO: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- TODO: Modify your first query to order by first name.
--  The first result should be Irena Pelz and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
-- TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC;

-- TODO: Update the query to order by first name and then last name.
--  The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
--TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC, last_name DESC;

-- TODO: Change the ORDER BY clause so that you order by last name before first name.
--  Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
--TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

-- TODO: Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';
-- TODO: Update your queries for employees with 'e' in their last name to sort the results by their employee number.
--  Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
--TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

-- TODO: Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

-- PART 2

-- TODO: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya';

-- TODO: Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE (
    first_name = 'irena' OR
    first_name = 'vidya' OR
    first_name ='maya') AND
    gender = 'm';

-- TODO: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE  ( last_name LIKE 'e%' OR last_name LIKE '%e');
-- TODO: Update your queries for employees with 'e' in their last name to sort the results by their employee number.
--  Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE  ( last_name LIKE 'e%' OR last_name LIKE '%e') ORDER BY emp_no;
--TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE  ( last_name LIKE 'e%' OR last_name LIKE '%e') ORDER BY emp_no DESC;

-- TODO: Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE  ( last_name LIKE 'e%' AND last_name LIKE '%e')ORDER BY emp_no;
--TODO: Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE  ( last_name LIKE 'e%' AND last_name LIKE '%e') ORDER BY emp_no DESC;

-- TODO: Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE (
    last_name LIKE 'q%'
    OR last_name LIKE '%q%'
    OR last_name LIKE '%q')
                      AND (last_name NOT LIKE '%qu%'
    AND last_name NOT LIKE 'qu%'
    AND last_name NOT LIKE '%qu'
    );

-- TODO: Update your queries for employees whose names start and end with 'E'.
--  Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY last_name;

-- TODO: Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

-- TODO: Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;

-- TODO: Change the query for employees hired in the 90s and born on Christmas,
--  such that the first result is the oldest employee who was hired last.
--  It should be Khun Bernini.
SELECT * FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY hire_date DESC, birth_date;

-- TODO: For your query of employees born on Christmas and hired in the 90s,
--  use datediff() to find how many days they have been working at the company
--  (Hint: You might also need to use now() or curdate()).
SELECT DATEDIFF(NOW(), hire_date), first_name, last_name FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;
