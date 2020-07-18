/*SQL SUM*/

-- Soma dos valores da coluna volume
SELECT SUM(volume)
  FROM tutorial.aapl_historical_stock_price;
  
-- Prática: Escreva uma consulta para calcular o preço médio de abertura 
-- (dica: você precisará usar ambos COUNT e SUM, assim como alguma 
-- aritmética simples).
SELECT SUM(open)/COUNT(open) AS media_abertura
  FROM tutorial.aapl_historical_stock_price;
  
/*RESUMO
- A função de agregação SUM realiza a somatória dos valores de uma 
coluna.
*/
