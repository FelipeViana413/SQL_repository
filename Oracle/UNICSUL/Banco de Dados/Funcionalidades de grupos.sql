SELECT DEPARTMENT_ID,AVG(SALARY), MAX(SALARY), MIN(SALARY) FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN(10,20,30)
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) <= 5000;

SELECT DEPARTMENT_ID, SALARY
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 100;

SELECT DEPARTMENT_ID, MAX(SALARY) FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY) > 7500
ORDER BY DEPARTMENT_ID;

/*
🔹 WHERE

Filtra somente departamentos 10, 20 e 30.

🔹 GROUP BY

Agrupa funcionários por DEPARTMENT_ID.

🔹 Funções agregadas

Calcula:

AVG(SALARY)

MAX(SALARY)

MIN(SALARY)

🔹 HAVING

Filtra os grupos cuja média salarial seja ≤ 5000.
*/

SELECT department_id dept_id, job_id, SUM(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id;

/*
SELECT coluna(s)
FROM tabela(s)
WHERE condição linha
GROUP BY coluna(s)
HAVING condição de grupo de linhas
ORDER BY coluna(s);
*/