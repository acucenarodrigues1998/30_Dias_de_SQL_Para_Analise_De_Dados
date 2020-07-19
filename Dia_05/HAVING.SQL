/*SQL HAVING*/

-- Selecionando os meses em que as ações ultrapassaram US$ 400/ação.
SELECT year,
       month,
       MAX(high) AS month_high
  FROM tutorial.aapl_historical_stock_price
  GROUP BY year, month
  HAVING MAX(high) > 400
  ORDER BY year, month;

/*RESUMO
- A cláusula HAVING permite a realização de filtros em dados agregados.
- Usado porque a cláusula WHERE não permite filtragem nesses dados.
- Essa operação também pode ser feita através de subconsultas.
- A ordem em que as cláusulas são escritas é muito importante.
*/
