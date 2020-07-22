/*SQL RIGHT JOIN*/

-- Exemplo de uso do RIGHT JOIN
SELECT companies.permalink AS companies_permalink,
       companies.name AS companies_name,
       acquisitions.company_permalink AS acquisitions_permalink,
       acquisitions.acquired_at AS acquired_date
  FROM tutorial.crunchbase_companies companies
  RIGHT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink

-- Prática: Reescrever a consulta prática anteriorem que você 
-- contabilizou empresas totais e adquiridas por estado, mas com um
-- RIGHT JOIN em vez de um LEFT JOIN.
SELECT companies.state_code,
       COUNT(DISTINCT companies.permalink) AS unique_companies,
       COUNT(DISTINCT acquisitions.company_permalink) AS unique_companies_acquired 
  FROM tutorial.crunchbase_companies companies
  RIGHT JOIN tutorial.crunchbase_acquisitions acquisitions
  ON companies.permalink = acquisitions.company_permalink
  WHERE companies.state_code IS NOT NULL
  GROUP BY 1
  ORDER BY 3 DESC

/*RESUMO
- RIGHT JOIN: Retorna os dados não correspondentes apenas da tabela a
direita.
*/
