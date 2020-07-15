/*SQL Operadores de Comparação*/

/*Os operadores de comparação para valores numéricos do SQL são:
- = : igual 
- <> ou != : diferente
- > : maior que
- < : menor que
- >= : maior ou igual
- <= : menor ou igual
*/

-- Selecionando dados onde a coluna west seja igual a 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west = 30;
  
-- Selecionando dados onde a coluna west seja diferente de 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west != 30;
  
-- Selecionando dados onde a coluna west seja maior que 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west > 30;
  
-- Selecionando dados onde a coluna west seja menor que 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west < 30;
  
-- Selecionando dados onde a coluna west seja maior ou igual a 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west >= 30;
  
-- Selecionando dados onde a coluna west seja menor ou igual a 30000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west <= 30;
  
-- Prática: Selecionar os dados onde a região west é maior que 50000
SELECT *
  FROM tutorial.us_housing_units
  WHERE west > 50;
  
-- Prática: Selecionar os dados onde a região south é menor ou igual
-- a 20000
SELECT *
  FROM tutorial.us_housing_units
  WHERE south <= 20;
  
/*Todos os operadores de comparação para dados numéricos funcionam
com dados não numéricos.
- Para comparação de valores não numéricos, o valor deve ser usado
entre aspas simples: 'valor'
- Os operadores = e != permitem selecionar linhas que correspondam ou 
não a qualquer valor.
- Os operadores >, <, >=, <= realizam a comparação com base na ordem
alfabética.
*/

-- Selecionando todos os registros cujo o valor na coluna month_name
-- é igual a 'January'
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name = 'January';
  
-- Selecionando todos os registros cujo o valor na coluna month_name
-- é diferente de 'January'
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name != 'January';
  
-- Consulta usando >
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name > 'January';

-- Consulta usando <  
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name < 'January';

-- Consulta usando >=  
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name >= 'January';

-- Consulta usando <=  
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name <= 'January';

-- Prática: Selecionar os registros nos quais o nome do mês é igual a
-- 'February'
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name = 'February';

-- Prática: Selecionar os registros cujo nome é iniciado com a letra
-- N ou alguma letra anterior.
SELECT * 
  FROM tutorial.us_housing_units
  WHERE month_name <= 'o';
