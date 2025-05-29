CREATE TABLE water_table
(
        last_load VARCHAR(2000)
)	

SELECT * FROM water_table;

SELECT min(Date_ID) from [dbo].[sales_cars];

INSERT INTO [dbo].[water_table]
VALUES ('DT00000');

SELECT COUNT(*) FROM [dbo].[sales_cars];
SELECT COUNT(*) FROM [dbo].[sales_cars] WHERE Date_ID > 'DT00000';