/*SQL INNER JOIN*/

-- Unindo as tabelas de players e de teams
SELECT players.*,
       teams.*
  FROM benn.college_football_players players
  INNER JOIN benn.college_football_teams teams
  ON teams.school_name = players.school_name;
  
-- Tabelas com nomes de colunas identicos
SELECT players.school_name AS players_school_name,
       teams.school_name AS teams_school_name
  FROM benn.college_football_players players
  INNER JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name
  
-- Prática: Escreva uma consulta que exiba nomes de jogadores, nomes 
-- de escolas e conferências para escolas na divisão "FBS (Division 
-- I-A Teams)".
SELECT players.player_name,
       players.school_name,
       teams.conference
  FROM benn.college_football_players players
  INNER JOIN benn.college_football_teams teams
  ON teams.school_name = players.school_name
  WHERE teams.division = 'FBS (Division I-A Teams)'

/*RESUMO
- A INNER JOIN ou junção interna permite juntar duas tabelas retornando
apenas os dados em que as duas são correspondentes.
- Caso um dado de uma tabela não corresponda com nenhum dos dados da 
outra, ele não é retornado no resultado.
- Pode ser feito usando apenas JOIN ou usando INNER JOIN.
*/
