/*SQL Outer Joins*/

/*
-> Ao executar um inner join, as linnhas de uma tabela que não 
correspondem as outra não não retornadas.
-> Em uma outer join, linhas sem correspondência também são retornadas.
-> Divide-se em 3 tipos:
  - LEFT JOIN: Retorna os dados não correspondentes apenas da tabela a
esquerda.
  - RIGHT JOIN: Retorna os dados não correspondentes apenas da tabela a
direita.
  - FULL OUTER JOIN: Retorna as linhas sem correspondência de ambas as
tabelas.
*/

/*SQL LEFT JOIN*/

-- Exemplo de uso do LEFT JOIN
SELECT companies.permalink AS companies_permalink,
       companies.name AS companies_name,
       acquisitions.company_permalink AS acquisitions_permalink,
       acquisitions.acquired_at AS acquired_date
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink
  
-- Prática: Escreva uma consulta que execute uma junção interna entre 
-- a tabela tutorial.crunchbase_acquisitions e a tabela
-- tutorial.crunchbase_companies, mas em vez de listar linhas 
-- individuais, conte o número de linhas não nulas em cada tabela.
SELECT COUNT(companies.permalink) AS count_comp_permalink,
       COUNT(acquisitions.company_permalink) AS count_acqu_permalink
  FROM tutorial.crunchbase_companies companies
  JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink

-- Prática: Modifique a consulta acima para LEFT JOIN. Observe a 
-- diferença nos resultados.
SELECT COUNT(companies.permalink) AS count_comp_permalink,
       COUNT(acquisitions.company_permalink) AS count_acqu_permalink
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink

-- Prática: Conte o número de empresas exclusivas (não conte duas 
-- vezes) e empresas adquiridas exclusivas por estado. Não inclua 
-- resultados para os quais não há dados do estado e ordene pelo 
-- número de empresas adquiridas do mais alto para o mais baixo.
SELECT companies.state_code,
       COUNT(DISTINCT companies.permalink) AS unique_companies,
       COUNT(DISTINCT acquisitions.company_permalink) AS unique_companies_acquired 
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink
  WHERE companies.state_code IS NOT NULL
  GROUP BY 1
  ORDER BY 3 DESC
