SELECT co_municipio AS codigo_municipio,
COUNT(ID_MATRICULA) AS total_matriculados
FROM "censo_database"."censo_raw_data"
WHERE TP_ETAPA_ENSINO = 41
GROUP BY co_municipio
ORDER BY total_matriculados DESC
LIMIT 10;
