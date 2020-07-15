/*SQL SELECT*/

/*Selecionar apenas algumas colunas da tabela*/
SELECT year,
       month,
       west
  FROM tutorial.us_housing_units;
  
/*Selecionar todas as colunas do banco*/
SELECT * 
  FROM tutorial.us_housing_units;
  
/*Prática: Selecionando todas as colunas da tabela sem usar * */
SELECT year,
       month,
       month_name,
       south,
       west,
       midwest,
       northeast
  FROM tutorial.us_housing_units;
  
/*Formatando o nome das colunas na tabela resposta*/
SELECT west AS "West Region" -- Para nomes com espaço, utilizar aspas
  FROM tutorial.us_housing_units;
  
SELECT west AS West_Region, -- Para esse caso, não é necessário usar
        south AS South_Region -- aspas, mas as letras serão todas
  FROM tutorial.us_housing_units; -- minúsculas.

/*Prática: selecionar todas as colunas da tabela modificando os 
seus nomes para que todos tenham a primeira letra maiúscula.*/
SELECT year AS "Year",
       month AS "Month",
       month_name AS "Month_Name",
       south AS "South",
       west AS "West",
       midwest AS "Midwest",
       northeast AS "Northeast"
  FROM tutorial.us_housing_units;
  
/*RESUMO
- A cláusula SELECT é responsável por buscar/selecionar algumas 
colunas nas tabelas do banco de dados.
- A cláusula SELECT deve ser seguido da cláusula FROM que identifica a
tabela na qual estão as colunas.
- SELECT * FROM alguma_tabela: seleciona todas as colunas
- SELECT coluna_1, coluna_2 FROM alguma_tabela: seleciona as colunas
especificadas. No caso de mais de uma coluna, elas devem ser separadas
por vírgula
- A cláusula AS dá ao programador a possibilidade de alterar o nome de
uma coluna no resultado da consulta.
- Um consulta com o SELECT retorna uma tabela temporária, em que o
conteúdo da tabela no banco não é alterado.
*/
