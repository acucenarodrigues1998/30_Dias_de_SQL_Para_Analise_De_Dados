/*SQL OR*/

-- Selecionando todas as músicas na posição 5 ou
-- as músicas do Gotye
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank = 5 OR artist = 'Gotye'; 
  
-- É possível combinar AND e OR
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2013
  AND ("group" ILIKE '%macklemore%' OR "group" ILIKE '%timberlake%');
  
-- Prática: Escreva uma consulta que retorne todas as linhas das 
-- dez principais músicas que apresentavam Katy Perry ou Bon Jovi.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank <= 10
  AND ("group" ILIKE '%katy perry%' OR "group" ILIKE '%bon jovi%');

-- Escreva uma consulta que retorne todas as músicas com títulos 
-- que contenham a palavra "Califórnia" nas décadas de 1970 ou 1990.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE song_name ILIKE '%california%'
  AND ((year BETWEEN 1970 and 1979) OR (year BETWEEN 1990 and 1999));

-- Faça uma consulta que lista todas as 100 melhores gravações que 
-- apresentam o Dr. Dre antes de 2001 ou depois de 2009.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" ILIKE '%dr. dre%'
  AND (year < 2001 OR year > 2009);
  
/*RESUMO
- Assim como o AND, o OR permite que mais de uma condição seja 
usada em uma consulta. 
- Entretanto, o AND só retorna os registros que estão verdadeiros 
para todas as condições. O OR retorna os registros em que ao menos
uma das condições é verdadeira.
*/
