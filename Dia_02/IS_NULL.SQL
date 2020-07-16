/*SQL IS NULL*/

-- Selecionando os registros onde o valor da coluna artista é NULL
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE artist IS NULL
  
-- Prática: Escreva uma consulta que mostre todas as linhas para 
-- as quais song_name é nulo.
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE song_name IS NULL
  
/*RESUMO
- O operador IS NULL nos permite obter todos os registros com 
valor NULL em uma determinada coluna.
*/
