---- Update part gen
select 
',' || COLUMN_NAME || '= src.' || COLUMN_NAME AS "WHEN MATCHED THEN UPDATE SET"
FROM USER_TAB_COLUMNS
WHERE UPPER(TABLE_NAME) = 'BOOKING'
ORDER BY COLUMN_ID;


--- INSERT COLUMN LIST
SELECT
',' || COLUMN_NAME "WHEN NOT MATCHED THEN ISNERT("
FROM USER_TAB_COLUMNS
WHERE UPPER(TABLE_NAME)='BOOKING'
order by COLUMN_ID;


--INSERT VALUE LIST
SELECT
'src.' || COLUMN_NAME ") VALUES("
FROM USER_TAB_COLUMNS
WHERE UPPER(TABLE_NAME) = 'BOOKING'
ORDER BY column_id;

merge into n_marketsession lcl
  using n_marketsession@dblink_gal_prod.world src
on (lcl.marketid=src.marketid and lcl.prouctid=src.productid)
WHEN MATCHED THEN UPDATE SET
--
---
--
WHEN NOT MATCHED THEN INSERT (
---
--
--
--
) VALUES (
src.***
...
0
);
