#Receita/Despesa/Lucro
SELECT
  SUM(v.total_corrigido) AS total_vendas,

  -- DESPESAS CORRIGIDAS
  (
    SELECT 
      SUM(
        CASE 
          WHEN categoria = 'produtos_revenda' THEN valor / 10
          ELSE valor
        END
      )
    FROM `mercearianb_dataset.despesas`
  ) AS total_despesas,

  -- LUCRO
  SUM(v.total_corrigido) - (
    SELECT 
      SUM(
        CASE 
          WHEN categoria = 'produtos_revenda' THEN valor / 10
          ELSE valor
        END
      )
    FROM `mercearianb_dataset.despesas`
  ) AS lucro

FROM `mercearianb_dataset.vendas_tratadas` v;