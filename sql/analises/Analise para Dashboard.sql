#Analise para Dashboard
SELECT 
  data,
  EXTRACT(MONTH FROM data) AS mes,
  SUM(total_corrigido) AS total_dia
FROM `mercearianb_dataset.vendas_tratadas`
GROUP BY data, mes
ORDER BY data