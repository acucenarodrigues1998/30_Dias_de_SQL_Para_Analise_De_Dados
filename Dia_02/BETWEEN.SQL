/*SQL BETWEEN*/

-- Selecionando as músicas que ficaram entre as posições 5 e 10 todos os
-- anos(incluindo os limites do intervalo).
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank BETWEEN 5 AND 10;
  
-- A mesma consulta sem o BETWEEN
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank >= 5 AND year_rank <= 10;
  
-- Prática: Escreva uma consulta que mostre as 100 melhores músicas de 
-- 1º de janeiro de 1985 a 31 de dezembro de 1990.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year BETWEEN 1985 and 1990; 
  
/*RESUMO
- O operador BETWEEN seleciona todos os registros que estão entre dois 
valores (incluindo esses esses valores)
*/
