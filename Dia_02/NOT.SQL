/*SQL NOT*/

-- Selecionando os registros do ano 2013 em que o valor 
-- de year_rank não estejam entre 2 e 3.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  AND year_rank NOT BETWEEN 2 AND 3;
  
-- Not é utilizado também com LIKE para eliminar registros
-- com uma palavra em específico.
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  AND "group" NOT ILIKE '%macklemore%';
  
-- É muito utilizado para selecionar os registros não nulos
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  AND artist IS NOT NULL;
  
-- Prática: Escreva uma consulta que retorne todas as linhas 
-- das músicas que estavam nas paradas em 2013 e não contenham a 
-- letra "a".
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  AND song_name NOT ILIKE '%a%';

/*RESUMO
- O comando NOT serve para negar ou inverter um resultado positivo.
- Pode ser usado para remover sujeira do dados, ou eliminar determinados
resultados de acordo com alguma condição.
*/
