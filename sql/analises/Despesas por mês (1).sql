#Despesas por Mês
SELECT 
  mes,
  SUM(
    CASE 
      WHEN categoria = 'produtos_revenda' THEN valor / 10
      ELSE valor
    END
  ) AS total_despesas
FROM `mercearianb_dataset.despesas`
GROUP BY mes
ORDER BY 
  CASE mes
    WHEN '01_janeiro' THEN 1
    WHEN '02_fevereiro' THEN 2
    WHEN '03_março' THEN 3
    WHEN '04_abril' THEN 4
    WHEN '05_maio' THEN 5
    WHEN '06_junho' THEN 6
    WHEN '07_julho' THEN 7
    WHEN '08_agosto' THEN 8
    WHEN '09_setembro' THEN 9
    WHEN '10_outubro' THEN 10
    WHEN '11_novembro' THEN 11
    WHEN '12_dezembro' THEN 12
  END