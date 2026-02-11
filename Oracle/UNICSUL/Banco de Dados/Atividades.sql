/*Pesquise na tabela locations (retorne CITY e STATE_PROVINCE), 
aplicando uma função de decisão no campo State_Province  */

SELECT * FROM HR.LOCATIONS;

SELECT CITY, STATE_PROVINCE,
DECODE (STATE_PROVINCE, 
        'Washington','Bem vindo a Casa Branca',
        'Texas','Olá Cowboy',
        'California', CITY,
        'New Jersey', Street_Address
        ) Retorno_Decode
FROM HR.LOCATIONS;

/* Pesquise na tabela employees (retorne o last_name e o salary), 
usando uma função de decisão no campo Salary*/

SELECT LAST_NAME, SALARY,
    CASE
        WHEN SALARY BETWEEN 4200 AND 6000  THEN SALARY * 1.10
        WHEN SALARY BETWEEN 9000 AND 17000 THEN SALARY * 1.20
        ELSE SALARY
    END NOVO_SALARIO
FROM HR.EMPLOYEES;
