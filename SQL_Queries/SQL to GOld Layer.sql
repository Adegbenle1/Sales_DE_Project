--CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password';
--CREATE DATABASE SCOPED CREDENTIAL Adeniyi_Adegbenle WITH IDENTITY = 'Managed Identity';

SELECT * FROM sys.database_credentials;

CREATE EXTERNAL FILE FORMAT extfileformat WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

CREATE EXTERNAL DATA SOURCE GoldLayer WITH (
    LOCATION = 'https://adeniyistorageaccount.dfs.core.windows.net/olistdata/Gold',
    CREDENTIAL = Adeniyi_Adegbenle
);

CREATE EXTERNAL TABLE gold.finaltable WITH (
        LOCATION = 'finalserving', -- Folder name inside Gold Layer
        DATA_SOURCE = GoldLayer,
        FILE_FORMAT = extfileformat
) AS
SELECT * FROM gold1.[vw_gold_final];


SELECT * from gold.finaltable;