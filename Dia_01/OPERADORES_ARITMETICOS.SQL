/*SQL Operadores Aritméticos*/

/* Os operadores aritméticos no SQL são:
   + : Adição
   - : Subtração
   * : Multiplicação
   / : Divisão
   
Essas operações aritméticas só podem ser feitas entre as colunas de uma 
mesma linha.
É possível criar novas colunas a partir de operações e essas colunas 
são chamadas de colunas derivadas.
Os parênteses podem ser usados para controlar a ordem de precedência
das operações.
*/

-- Exemplo de uso do operador +
SELECT year,
       month,
       west,
       south,
       west + south AS south_plus_west
  FROM tutorial.us_housing_units;
  
-- Exemplo de uso dos operadores - e + 
SELECT year,
       month,
       west,
       south,
       west + south - 4 * year AS nonsense_column
  FROM tutorial.us_housing_units;
  
-- Prática: Crie uma coluna com a soma das 4 regiões
SELECT year,
       month,
       west,
       south,
       midwest,
       northeast,
       west + south + midwest + northeast AS regions_sum
  FROM tutorial.us_housing_units;
  
-- Exemplo de uso do operador / e da ordem de precedência
-- Calculo da média entre south e west
SELECT year,
       month,
       west,
       south,
       (west + south)/2 AS south_west_avg
  FROM tutorial.us_housing_units;
  
-- Prática: Escreva uma consulta que retorne todas as linhas para as 
-- quais mais unidades foram produzidas na região west do que no 
-- midwest e northeast combinados.
SELECT year,
       month,
       west,
       midwest,
       northeast
  FROM tutorial.us_housing_units
  WHERE west > (midwest+northeast);
  
-- Prática: Escreva uma consulta que calcule a porcentagem de todas as
-- casas concluídas nos Estados Unidos representadas por cada região. 
-- Somente retorne resultados a partir do ano 2000 e posterior.
SELECT year,
       month,
       west/(west+south+midwest+northeast)*100 AS west_pct,
       south/(west+south+midwest+northeast)*100 AS south_pct,
       midwest/(west+south+midwest+northeast)*100 AS midwest_pct,
       northeast/(west+south+midwest+northeast)*100 AS northeast_pct
  FROM tutorial.us_housing_units
  WHERE year >= 2000;
