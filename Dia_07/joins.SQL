/*SQL joins*/

/*No SQL, é possível trabalhar com mais de uma tabela ao mesmo tempo
utilizando as junções ou joins.
- Um BD Relacional indica que as tabelas se relacionam umas com as 
outras.
*/

-- Anatomia de uma junção
SELECT teams.conference AS conference,
       AVG(players.weight) AS average_weight
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
  ON teams.school_name = players.school_name
  GROUP BY teams.conference
  ORDER BY AVG(players.weight) DESC;
  
/*
Após a instrução FROM, temos duas novas instruções: JOIN, que é 
seguida por um nome de tabela e ON, seguida por dois nomes de colunas 
separados por um sinal de igual.
- JOIN indica a qual tabela a tabela principal se relaciona.
- ON indica como as duas tabelas se relacionam.
*/

SELECT *
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
  ON teams.school_name = players.school_name;
  
-- O * retornando todas as colunas das duas tabelas
  
/* Aliases em SQL
- Nas junções, se torna mais fácil utilizar aliases para identificar
as tabelas. 
*/

-- Prática: Escreva uma consulta que selecione o nome da escola, o 
-- nome do jogador, a posição e o peso de cada jogador na Geórgia, 
-- ordenado por peso (do mais pesado ao mais leve). Certifique-se de 
-- criar um alias para a tabela e de fazer referência a todos os nomes 
-- de colunas em relação ao alias.
SELECT players.school_name,
       players.player_name,
       players.position,
       players.weight
  FROM benn.college_football_players players
  WHERE players.state = 'GA'
  ORDER BY players.weight DESC;
