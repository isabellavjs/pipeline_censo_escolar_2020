SELECT mc.codigo_estado,
mc.tp_cor_raca,
mc.total_matriculados,
ROUND(CAST(mc.total_matriculados AS DOUBLE) * 100 / CAST(me.total_matriculados AS DOUBLE), 2) AS percentual_matriculados_estado
FROM "censo_database"."vi_matriculados_cor_estado" mc
JOIN "censo_database"."vi_total_matriculados_estado" me ON
mc.codigo_estado = me.codigo_estado
ORDER BY mc.codigo_estado, mc.tp_cor_raca ASC;
