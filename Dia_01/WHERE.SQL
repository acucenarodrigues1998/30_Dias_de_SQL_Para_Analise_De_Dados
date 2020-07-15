/*SQL WHERE*/

-- Selecionando todos os registros de uma tabela
SELECT * 
  FROM tutorial.us_housing_units;
  
-- Selecionando todos os registros da tabela cujo o mẽs é igual a 1
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month = 1;
  
/*RESUMO
- A cláusula WHERE tem como função adicionar condições a consulta
- Com o uso dela, pode-se selecionar apenas os dados dentro de alguma
condição específica.
*/
