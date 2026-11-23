# Tarea M71: agrupación y funciones de ventana

Tarea de SQL Server de la profesión Full Stack Python de EBAC, hecha sobre la base de datos de ejemplo [AdventureWorks2022](https://learn.microsoft.com/es-es/sql/samples/adventureworks-install-configure).

## Tecnologías

- SQL Server (T-SQL)

## Consultas sobre `Sales.SalesOrderDetail`

| # | Tema | Resultado |
|---|---|---|
| 1 | GROUP BY | Cantidad y valor total vendido por producto |
| 2 | HAVING | Productos con más de 50 unidades vendidas |
| 3 | OVER con PARTITION BY | Total de cada orden junto a cada línea |
| 4 | ROW_NUMBER() | Numeración de las líneas de cada orden |
| 5 | RANK() | Ranking de productos dentro de cada orden |
| 6 | DENSE_RANK() | Ranking sin saltos después de un empate |
| 7 | HAVING con ORDER BY | Productos que vendieron más de $5000, de mayor a menor |

El PDF del repositorio tiene las capturas de los resultados.

## Cómo ejecutarlo

1. Restaura AdventureWorks2022 en SQL Server.
2. Abre el archivo `.sql` en SQL Server Management Studio o en Azure Data Studio.
3. Ejecuta el script completo o cada consulta por separado.

## Autor

Juan Carlos González Herrera · [LinkedIn](https://www.linkedin.com/in/juan-carlos-desarrollador-web) · [Portafolio](https://moremaster123.github.io)
