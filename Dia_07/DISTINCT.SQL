/*SQL DISTINCT*/

-- Selecionando os valores únicos na coluna month
SELECT DISTINCT month
  FROM tutorial.aapl_historical_stock_price;
  
-- Selecionando os pares year e month únicos
SELECT DISTINCT year, 
                month
  FROM tutorial.aapl_historical_stock_price;
  
-- Prática: Escreva uma consulta que retorne os valores únicos na 
-- coluna year, em ordem cronológica.
SELECT DISTINCT year
  FROM tutorial.aapl_historical_stock_price
  ORDER BY year;
  
-- DISTINCT com funções de agregação 
-- Contagem de meses únicos
SELECT COUNT(DISTINCT month) AS unique_months
  FROM tutorial.aapl_historical_stock_price;
  
-- Prática: Escreva uma consulta que conte o número de valores únicos
-- na coluna month para cada ano.
SELECT year,
       COUNT(DISTINCT month) AS months_count
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year
  ORDER BY year;

-- Prática: Escreva uma consulta que conte separadamente o número de 
-- valores únicos na coluna month e o número de valores únicos na 
-- coluna year.
SELECT COUNT(DISTINCT month) AS month_counts,
       COUNT(DISTINCT year) AS year_counts
  FROM tutorial.aapl_historical_stock_price;

/*RESUMO
- O DISTINCT permite selecionar os valores únicos em colunas.
- Pode ser usado em funções de agregação.
*/
