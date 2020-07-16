/*SQL ORDER BY*/

-- Consultando com a tabela é normalmente ordenada.
SELECT *
  FROM tutorial.billboard_top_100_year_end;
  
-- Ordenando os dados a partir da coluna artist
SELECT *
  FROM tutorial.billboard_top_100_year_end
  ORDER BY artist;
  
-- Ordenando os dados a partir da coluna year_rank
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  ORDER BY year_rank;
  
-- Ordenando os dados a partir da coluna year_rank de forma decrescente
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  ORDER BY year_rank DESC;
  
-- Prática: Escreva uma consulta que retorna todas as linhas de 2012,
-- ordenadas pelo nome da música de forma descrescente
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2012
  ORDER BY song_name DESC;
  
-- Ordenando os dados a partir de múltiplas colunas
-- A consulta ordena por ano de forma decrescente, mas ordena as 
-- as linhas dentro de cada ano por posição.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank <= 3
  ORDER BY year DESC, year_rank;
  
-- O DESC atua sob a coluna que o precede
-- Para essa consulta, ele ordena o pelo year_rank de forma crescente
-- e pelo year de forma decrescente, respeitando a ordem em que as
-- colunas aparecem.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank <= 3
  ORDER BY year_rank, year DESC;

-- Prática: Escreva uma consulta que retorne todas as linhas de 2010 
-- ordenadas por classificação, com artistas ordenados alfabeticamente
-- para cada música.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2012
  ORDER BY year_rank, artist;

-- Prática: Escreva uma consulta que mostre todas as linhas para as 
-- quais o T-Pain era membro do grupo, ordenadas por classificação,
-- da menor para a mais alta (de 100 para 1).
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" ILIKE '%t-pain%'
  ORDER BY year_rank DESC;

-- Prática: Escreva uma consulta que retorne músicas com 
-- classificação entre 10 e 20 (inclusive) em 1993, 2003 ou 2013. 
-- Ordene os resultados por ano e classificação.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year IN (1993, 2003, 2013) 
  AND year_rank BETWEEN 10 AND 20 
  ORDER BY year, year_rank;

/*RESUMO
- A cláusula order by é usada para ordernar os dados a partir de 
alguma coluna especificada.
- Pode vir acompanhada do DESC que indica que os valores devem ser
ordenados de forma decrescente.
*/
