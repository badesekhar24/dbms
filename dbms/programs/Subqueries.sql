-- Nested subquery
SELECT name FROM Students
WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'Computer Science');

-- Correlated subquery
SELECT name FROM Students s
WHERE age > (
  SELECT AVG(age) FROM Students WHERE dept_id = s.dept_id
);