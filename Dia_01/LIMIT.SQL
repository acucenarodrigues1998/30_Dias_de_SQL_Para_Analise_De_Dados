/*SQL LIMIT*/

-- Mostrando todas os registros presentes na tabela
SELECT * 
  FROM tutorial.us_housing_units;

-- Limitando o resultado da consulta a 200 registros   
SELECT * 
  FROM tutorial.us_housing_units
  LIMIT 200;
  
-- Prática: Limitar o resultado da consulta a 15 registros
SELECT *
  FROM tutorial.us_housing_units
  LIMIT 15;
  
/*RESUMO
- A cláusula LIMIT limita o resultado de uma consulta a um número n de 
registros. 
- A principal vantagem é que ela evita que o programador, ao analisar a 
tabela, tenha que lidar com um retorno com milhões de registros em 
uma consulta.
*/
