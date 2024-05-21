-- create table p2_transaction in the designated database and schema in the snowflake

CREATE OR REPLACE TABLE P2_TRANSACTION (
    Transaction_ID VARCHAR(50) PRIMARY KEY,
    Customer_ID VARCHAR(50),
    Transaction_Date TIMESTAMP_NTZ,
    Transaction_Type VARCHAR(50),
    Amount DECIMAL(18, 2),
    Transaction_Status VARCHAR(50),
    Transaction_Location VARCHAR(100),
    Currency VARCHAR(3)
);

-- STORED PROCEDURE 


CREATE OR REPLACE PROCEDURE Transaction_Data()
RETURNS STRING NOT NULL
LANGUAGE JAVASCRIPT
AS
$$
var drop_cmd = "DROP TABLE IF EXISTS transaction_temp";
var sql_drop = snowflake.createStatement({sqlText: drop_cmd});
var drop_result = sql_drop.execute();

var select_cmd = `
    CREATE TABLE transaction_temp AS
    SELECT 
        Customer_ID,
        Transaction_ID,
        Amount
    FROM P2_TRANSACTION
    WHERE Transaction_Status = 'completed'
`;

var sql_select_stream = snowflake.createStatement({sqlText: select_cmd});
var select_stream_result = sql_select_stream.execute();

return '👍';
$$;



-- Call the stored procedure to be sure it worked
CALL TRANSACTION_DATA();

# It should return  '👍' or whaterver