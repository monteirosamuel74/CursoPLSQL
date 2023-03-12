SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary BETWEEN 10000 AND 15000;

SELECT
    employee_id,
    last_name,
    salary,
    manager_id,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'IT_PROG', 'FI_ACOOUNT', 'SA_REP' );

SELECT
    first_name,
    last_name
FROM
    employees
WHERE
    first_name LIKE 'Sa%';

SELECT
    employee_id,
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
        job_id NOT IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP') ORDER BY salary;

