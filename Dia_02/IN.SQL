/*SQL IN*/

-- Selecionando os 3 primeiros lugares no ranking por anos usando IN
-- Valores numéricos
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank IN (1, 2, 3);
  
-- Selecionando as entradas que contenham alguns artistas específicos
-- Valores não numéricos
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE artist IN ('Taylor Swift', 'Usher', 'Ludacris');
  
-- Prática: Escreva uma consulta que mostre todas as entradas para 
-- Elvis e MC Hammer.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE artist IN ('M.C. Hammer', 'Hammer', 'Elvis Presley');
  
/*RESUMO
- O operador lógico IN permite filtrar os dados a partir de uma lista 
de valores.
- Funciona tanto para numéricos quanto não numéricos.
*/
