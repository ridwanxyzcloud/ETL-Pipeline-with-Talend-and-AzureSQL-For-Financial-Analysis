## Data Structure

### Snowflake Database Table: "Financial_Transactions"
This table contains detailed transaction records, including customer ID, transaction date, transaction type, amount, and transaction status. It also includes relevant metadata such as transaction location and currency.

#### Columns:
- **Transaction_ID**: Unique identifier
- **Customer_ID**: Identifier for the customer involved in the transaction
- **Transaction_Date**: Date and time of the transaction
- **Transaction_Type**: e.g., deposit, withdrawal, transfer
- **Amount**: Transaction amount
- **Transaction_Status**: e.g., completed, pending
- **Transaction_Location**: e.g., branch or ATM location
- **Currency**: e.g., USD, EUR

### Azure SQL Database Table: "Customer_Details"
This table contains customer information, including customer name, contact information, account number, and account balance. It serves as a reference dataset for customer-related analysis.

#### Columns:
- **Customer_ID**: Unique identifier
- **Customer_Name**: Customer's full name
- **Email_Address**: Customer's email address
- **Phone_Number**: Customer's phone number
- **Account_Number**: Unique account identifier
- **Account_Balance**: Current account balance

### Mapping CSV: "Data_Mapping.csv"
This CSV file serves as a mapping reference to link the Snowflake and Azure SQL databases. It contains columns to match the customer IDs and account numbers between the two databases, ensuring data integration and consistency.

#### Columns:
- **Customer_ID**: Derived from an inner join from Snowflake database table and Azure SQL database table
- **Account_Number**: From the Azure SQL database table

### Sample Data

#### Financial_Transactions (Snowflake)
```json
![...sample JSON data...](https://github.com/ridwanxyzcloud/ETL-Pipeline-with-Talend-and-AzureSQL-For-Financial-Analysis/blob/main/data/description/financial_transaction_snowflakes.json)
```
#### Customer_Details (Azure SQL)
```json
![...sample JSON data...](https://github.com/ridwanxyzcloud/ETL-Pipeline-with-Talend-and-AzureSQL-For-Financial-Analysis/blob/main/data/description/customer_details_AzureSQL.json)
```
#### Data_Mapping.csv
```json
![...sample JSON data...](https://github.com/ridwanxyzcloud/ETL-Pipeline-with-Talend-and-AzureSQL-For-Financial-Analysis/blob/main/data/description/data_mapping.json)
```

