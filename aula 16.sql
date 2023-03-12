SELECT
    employee_id,
    last_name,
    department_id
FROM
    employees
WHERE
    upper(last_name) = 'KING';

SELECT
    last_name,
    job_id,
    salary,
    CASE job_id
        WHEN 'IT_PROG'  THEN
            1.10 * salary
        WHEN 'ST_CLERK' THEN
            1.15 * salary
        WHEN 'SA_REP'   THEN
            1.20 * salary
        ELSE
            salary
    END "NOVO SALÁRIO"
FROM
    employees;

SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    department_id,
    job_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id,
    job_id
ORDER BY
    department_id,
    job_id;
    
SELECT e.department_id, MAX(salary), d.department_name
FROM employees e JOIN departments d
ON (e.department_id=d.department_id)
GROUP BY departments.department_name
HAVING MAX(salary) > 10000;

CREATE TABLE job_grades (
    grade_level VARCHAR2(2) NOT NULL,
    lowest_sal NUMBER(11,2),
    highest_sal NUMBER(11,2),
    CONSTRAINT job_grades_pk PRIMARY KEY (grade_level));
    
INSERT INTO job_grades VALUES ('A',1000,2999);
INSERT INTO job_grades VALUES ('B',3000,5999);
INSERT INTO job_grades VALUES ('C',6000,9999);
INSERT INTO job_grades VALUES ('D',10000,14999);
INSERT INTO job_grades VALUES ('E',15000,24999);
INSERT INTO job_grades VALUES ('F',25000,40000);

COMMIT;

