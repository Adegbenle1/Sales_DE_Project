CREATE SCHEMA gold1
CREATE VIEW vw_gold_final
AS
SELECT 
        * 
        FROM
        OPENROWSET(
            BULK 'https://adeniyistorageaccount.blob.core.windows.net/olistdata/silver/',
            FORMAT = 'PARQUET'
        ) AS result1

CREATE VIEW vw_gold_final2
AS
SELECT 
        * 
        FROM
        OPENROWSET(
            BULK 'https://adeniyistorageaccount.blob.core.windows.net/olistdata/silver/',
            FORMAT = 'PARQUET'
        ) AS result1 
        WHERE seller_city = 'maringa';  

        
             