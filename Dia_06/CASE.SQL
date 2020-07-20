/*SQL CASE*/

-- Verificando se um aluno é veterano ou não
SELECT player_name,
       year,
       CASE WHEN year = 'SR' THEN 'yes'
            ELSE 'no' END AS is_a_senior
  FROM benn.college_football_players;
  
-- Prática: Escreva uma consulta que inclua uma coluna sinalizada como 
-- "sim" quando um jogador for da Califórnia e classifique os resultados
-- com esses jogadores primeiro.
SELECT player_name,
       state,
       CASE WHEN state = 'CA' THEN 'yes'
            ELSE NULL END AS is_from_ca
  FROM benn.college_football_players
  ORDER BY is_from_ca

-- É possível utilizar várias condições dentro de um CASE
SELECT player_name,
       weight,
       CASE WHEN weight > 250 THEN 'over 250'
            WHEN weight > 200 AND weight <= 250 THEN '201-250'
            WHEN weight > 175 AND weight <= 200 THEN '176-200'
            ELSE '175 or under' END AS weight_group
  FROM benn.college_football_players;
  
-- Prática: Escreva uma consulta que inclua os nomes dos jogadores e 
-- uma coluna que os classifique em quatro categorias com base na 
-- altura.
SELECT player_name,
       height,
       CASE WHEN height > 80 THEN 'over 80'
            WHEN height > 75 AND height <= 80 THEN '76-80'
            WHEN height > 70 AND height <= 75 THEN '71-75'
            ELSE '70 or under' END AS height_group
  FROM benn.college_football_players;
  
-- É possível combinar condições usando AND e OR, como no WHERE:
SELECT player_name,
       CASE WHEN year = 'FR' AND position = 'WR' THEN 'frosh_wr'
            ELSE NULL END AS sample_case_statement
  FROM benn.college_football_players;
  
-- CASE com funções agregadas
-- Contagem de jogadores por year
SELECT CASE WHEN year = 'FR' THEN 'FR'
            WHEN year = 'SO' THEN 'SO'
            WHEN year = 'JR' THEN 'JR'
            WHEN year = 'SR' THEN 'SR'
            ELSE 'No Year Data' END AS year_group,
            COUNT(1) AS count
  FROM benn.college_football_players
 GROUP BY year_group;
 
-- Prática: Escreva uma consulta que conte o número de jogadores com 
-- 300 libras+ para cada uma das seguintes regiões: Costa Oeste (CA, 
-- OR, WA), Texas e Other (Em qualquer outro lugar).
SELECT CASE WHEN state IN ('CA', 'OR', 'WA') then 'West Coast'
            WHEN state = 'TX' THEN 'Texas'
            ELSE 'Other' END AS regional_distribution,
            COUNT(1) AS players
  FROM benn.college_football_players
  WHERE weight >= 300
  GROUP BY regional_distribution

-- Prática: Escreva uma consulta que calcule o peso combinado de todos
-- os jogadores de subclasse (FR / SO) na Califórnia, bem como o peso 
-- combinado de todos os jogadores de classe inferior (JR / SR) na 
-- Califórnia.
SELECT CASE WHEN year IN ('FR', 'SO') THEN 'underclass'
            WHEN year IN ('JR', 'SR') THEN 'upperclass'
            ELSE NULL END AS class_group,
       SUM(weight) AS combined_player_weight
  FROM benn.college_football_players
 WHERE state = 'CA'
 GROUP BY class_group

-- CASE dentro de funções agregadas
SELECT COUNT(CASE WHEN year = 'FR' THEN 1 ELSE NULL END) AS fr_count,
       COUNT(CASE WHEN year = 'SO' THEN 1 ELSE NULL END) AS so_count,
       COUNT(CASE WHEN year = 'JR' THEN 1 ELSE NULL END) AS jr_count,
       COUNT(CASE WHEN year = 'SR' THEN 1 ELSE NULL END) AS sr_count
  FROM benn.college_football_players;
  
-- Prática: Escreva uma consulta que exiba o número de jogadores em 
-- cada estado, com os jogadores FR, SO, JR e SR em colunas separadas 
-- e outra coluna para o número total de jogadores. Solicite resultados
-- de forma que os estados com mais jogadores cheguem primeiro.
SELECT state,
       COUNT(CASE WHEN year = 'FR' THEN 1 ELSE NULL END) AS fr_count,
       COUNT(CASE WHEN year = 'SO' THEN 1 ELSE NULL END) AS so_count,
       COUNT(CASE WHEN year = 'JR' THEN 1 ELSE NULL END) AS jr_count,
       COUNT(CASE WHEN year = 'SR' THEN 1 ELSE NULL END) AS sr_count,
       COUNT(1) AS total_players
  FROM benn.college_football_players
  GROUP BY state
  ORDER BY total_players DESC

-- Prática: Escreva uma consulta que mostre o número de jogadores nas 
-- escolas com nomes que começam com A a M e o número nas escolas com 
-- nomes começando com N - Z.
SELECT CASE WHEN school_name < 'n' THEN 'A-M'
            WHEN school_name >= 'n' THEN 'N-Z'
            ELSE NULL END AS school_name_group,
        COUNT(1) AS players
  FROM benn.college_football_players
  GROUP BY school_name_group

/*RESUMO
- A cláusula CASE é semelhante ao if...else de outras linguagens
- Pode ser usada com várias condições indicadas pelo WHEN... THEN...
- O CASE deve ser usado com pelo menos um WHEN... THEN...
- Permite o uso de ELSE e é finalizado com END.
- Pode ser usado com e dentro de funções de agregação.
*/
