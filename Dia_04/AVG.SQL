/*SQL AVG*/

-- Calculando a média da coluna high
SELECT AVG(high)
  FROM tutorial.aapl_historical_stock_price;

-- Prática: Faça uma consulta que calcule o volume médio diário de 
-- negociação de ações da Apple.
SELECT AVG(volume) As avg_volume
  FROM tutorial.aapl_historical_stock_price;

/*RESUMO
- A função AVG é responsável por calcular a média de um grupo de valores.
- Só funciona em variáveis numéricas.
- Ignora valores NULL
*/
