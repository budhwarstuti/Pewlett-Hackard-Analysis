-- retirement info when dept = sales
SELECT ri.emp_no, ri.first_name, ri.last_name, de.dept_no, d.dept_name
FROM retirement_info as ri
JOIN dept_emp as de
ON ri.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT * FROM retirement_info;
SELECT * FROM departments;

-- retirement info when dept = sales or developemnt
SELECT ri.emp_no, ri.first_name, ri.last_name, de.dept_no, d.dept_name
FROM retirement_info as ri
JOIN dept_emp as de
ON ri.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';