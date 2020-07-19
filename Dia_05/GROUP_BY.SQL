/*SQL GROUP BY*/

-- Agrupando as linhas por ano
SELECT year,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year;
  
-- Agrupando as linhas por ano e por mês
SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month;
  
-- Prática: Calcule o número total de ações negociadas a cada mês. 
-- Ordene seus resultados cronologicamente.
SELECT year,
       month,
       COUNT(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month
  ORDER BY year, month;
  
-- Utilizando group by e order by
SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month
  ORDER BY month, year;
  
-- Prática: Faça uma consulta para calcular a variação diária média do
-- preço das ações da Apple, agrupada por ano.
SELECT year,
       AVG(close-open) AS avg_var
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year
  ORDER BY year;

-- Prática: Faça uma consulta que calcule os preços mais baixos e mais
-- altos que o estoque da Apple alcançou a cada mês.
SELECT year,
       month,
       MAX(high) AS max_high,
       MIN(low) AS min_low
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month
  ORDER BY year, month;

/*RESUMO
- A função GROUP BY é responsável por separar os dados em grupos que
podem ser agregados ou trabalhados de forma separada.
*/
