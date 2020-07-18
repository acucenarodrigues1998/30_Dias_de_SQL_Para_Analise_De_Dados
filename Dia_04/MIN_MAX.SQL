/*SQL MIN/MAX*/

-- Selecionando o menor e o maior valor da coluna volume
SELECT MIN(volume) AS min_volume,
       MAX(volume) AS max_volume
  FROM tutorial.aapl_historical_stock_price;

-- Prática: Qual foi o menor preço das ações da Apple (no momento desta 
-- coleta de dados)?
SELECT MIN(low)
  FROM tutorial.aapl_historical_stock_price;

-- Prática: Qual foi o maior aumento em um dia no valor das ações da 
-- Apple?
SELECT MAX (close - open)
  FROM tutorial.aapl_historical_stock_price;

/*RESUMO
- MIN e MAX são funções de agregação que retornam o menor e o maior valor
de uma coluna, respectivamente. Numéricos ou não, considerando ordem 
alfabética ou de datas, por exemplo.
*/
