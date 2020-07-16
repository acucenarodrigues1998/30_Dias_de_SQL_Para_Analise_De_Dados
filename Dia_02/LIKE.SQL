/*SQL LIKE*/

-- Selecionando os registros cujo valor na coluna group começa com
-- Snoop
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" LIKE 'Snoop%'; -- Group está entre aspas porque é também
                              -- uma palavra reservada da linguagem

-- Selecionando os registros cujo valor na coluna group começa com
-- Snoop utilizando o comando ILIKE
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" ILIKE 'snoop%';
  
-- O caractere _ pode ser usado para substituir um caractere qualquer
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE artist ILIKE 'dr_ke'
  
-- Prática: Escreva uma consulta que retorne todas as linhas das quais 
-- Ludacris era membro do grupo.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" ILIKE '%ludacris%';
  
-- Prática: Escreva uma consulta que retorne todas as linhas para as 
-- quais o primeiro artista listado no grupo tem um nome que começa com 
-- "DJ".
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE "group" LIKE 'DJ%';
  
/*RESUMO
- A cláusula LIKE permite que se realizem consultas utilizando apenas 
parte do valor como filtro. Busca por valores que contenham 
semelhança.
- O operador % representa qualquer caractere ou grupo de caracteres.
- O _ pode substituir um caractere individual.
- O LIKE faz diferenciação entre maiúsculas e minúsculas. Para evitar
isso, é possível usar o ILIKE com a mesma funcionalidade.
*/
