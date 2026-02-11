-- Lista funcionários dos departamentos de Marketing e Administration
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN (
    -- Busca os IDs dos departamentos desejados
    SELECT DEPARTMENT_ID
    FROM HR.DEPARTMENTS
    WHERE DEPARTMENT_NAME IN ('Marketing', 'Administration')
);

/*Subquery (ou subconsulta) é uma consulta SQL aninhada 
dentro de outra consulta, utilizada para produzir um conjunto de 
valores intermediários que serão consumidos pela query principal.

👉 Em termos simples:

é uma query que fornece dados para outra query.

Ela permite escrever consultas mais expressivas, 
alinhadas às regras de negócio, sem depender de valores fixos.*/

SELECT FIRST_NAME, JOB_ID,
DECODE (JOB_ID,
        'IT_PROG','Programador',
        'FI_ACCOUNT','Contador',
        'VERIFICAR') CARGO
FROM HR.EMPLOYEES;

/*DECODE é uma função condicional do Oracle, utilizada 
para realizar comparações e retornar valores diferentes 
com base no resultado dessa comparação.*/

SELECT FIRST_NAME, JOB_ID, SALARY,
  CASE
    WHEN SALARY < 5000 THEN SALARY * 1.05
    WHEN SALARY > 10000 THEN SALARY * 1.10
    ELSE salary
  END VERIFICAR_AUMENTO
FROM HR.EMPLOYEES;
 
 /*Esse uso do CASE é chamado de:

Expressão condicional derivada

Você não está alterando dados na tabela.
Está apenas calculando um valor em tempo de execução.*/