#Media Venda Diária
SELECT 
  AVG(total_dia) AS media_diaria
FROM (
  SELECT 
    data,
    SUM(total_corrigido) AS total_dia
  FROM `mercearianb_dataset.vendas_tratadas`
  GROUP BY data
)