/*SQL COUNT*/

-- Contando todas as linhas (Funciona com * ou 1, tendo o mesmo resultado)
SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price;

SELECT COUNT(1)
  FROM tutorial.aapl_historical_stock_price;
  
-- Contando colunas individuais (Contagem de valores não nulos)
SELECT COUNT(high)
  FROM tutorial.aapl_historical_stock_price;
  
-- Prática: Escreva uma consulta para contar o número de linhas não 
-- nulas na coluna low.
SELECT COUNT(low)
  FROM tutorial.aapl_historical_stock_price;
  
-- Contando colunas não numéricas
SELECT COUNT(date)
  FROM tutorial.aapl_historical_stock_price;
  
-- Para mudar o nome da coluna que receberá o resultado
SELECT COUNT(date) AS count_of_date
  FROM tutorial.aapl_historical_stock_price;
  
-- Também é permitido usar espaços no nome da coluna, desde que entre
-- aspas.
SELECT COUNT(date) AS "Count of Date"
  FROM tutorial.aapl_historical_stock_price;
  
-- Prática: Escreva uma consulta que determine as contagens de cada 
-- coluna. Qual coluna tem mais valores nulos?
SELECT COUNT(year) AS count_of_year,
       COUNT(month) AS count_of_month,
       COUNT(open) AS count_of_open,
       COUNT(high) AS count_of_high,
       COUNT(low) AS count_of_low,
       COUNT(close) AS count_of_close,
       COUNT(volume) AS count_of_volume
  FROM tutorial.aapl_historical_stock_price;

/*RESUMO
- A função de agregação COUNT é responsável pela contagem de valores 
na tabela.
- Quando usada com um * ou com 1, retorna o número total de linhas
na tabela. 
- Quando usada com o nome de uma coluna, conta os valores não nulos
presentes na mesma.
*/
