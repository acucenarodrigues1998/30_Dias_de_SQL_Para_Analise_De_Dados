/*SQL AND*/

-- Retornando os registros para as 10 primeiras colocadas de 2012
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2012 AND year_rank <= 10;
  
-- Combinando AND e ILIKE para selecionar apenas as músicas do
-- top 10 de 2010 que tem feat
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2012 
  AND year_rank <= 10
  AND "group" ILIKE '%feat%';
  
-- Prática: Escreva uma consulta que revele todas as linhas dos 
-- 10 principais hits dos quais Ludacris faz parte do grupo.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank <= 10
  AND "group" ILIKE '%ludacris%';

-- Prática: Escreva uma consulta que revele os registros mais 
-- bem classificados em 1990, 2000 e 2010.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year IN (1990, 2000, 2010) 
  AND year_rank <= 10;

-- Prática: Escreva uma consulta que lista todas as músicas da 
-- década de 1960 com "love" no título.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year BETWEEN 1960 AND 1969
  AND song_name ILIKE '%love%';

/*RESUMO
- O AND é um operador lógico que permite o uso de duas ou 
mais condições em uma consulta.
- Um registro só é retornado de atender as duas condições ao mesmo tempo.
- Ele pode ser usado combinado com outros operadores lógicos.
*/
