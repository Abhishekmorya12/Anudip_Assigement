/* Question
Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101

answer: */

mysql> use bank;
Database changed

mysql> create table BankAccount ( account_id varchar(50) primary key not null, account_holder_name varchar(100) not null, account_balance double not null);
Query OK, 0 rows affected (0.14 sec)

mysql> desc BankAccount;
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| account_id          | varchar(50)  | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100) | NO   |     | NULL    |       |
| account_balance     | double       | NO   |     | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

-- Task 1: Insert data into the BankAccount table

mysql> insert into BankAccount values
    -> ('A101' , 'Amit Sharma', 50000.00),
    -> ('A102',  'Priya Verma', 25000.00),
    -> ('A103',  'Rahul Patil', 40000.00),
    -> ('A104',  'Sneha Joshi', 15000.00);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Amit Sharma         |           50000 |
| A102       | Priya Verma         |           25000 |
| A103       | Rahul Patil         |           40000 |
| A104       | Sneha Joshi         |           15000 |
+------------+---------------------+-----------------+
4 rows in set (0.01 sec)

-- Task 2: Retrieve account holder name and account balance of all account holders

mysql> select account_holder_name, account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Amit Sharma         |           50000 |
| Priya Verma         |           25000 |
| Rahul Patil         |           40000 |
| Sneha Joshi         |           15000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

-- Task 3: Retrieve account holder name and account balance where balance is more than 30,000

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Amit Sharma         |           50000 |
| Rahul Patil         |           40000 |
+---------------------+-----------------+
2 rows in set (0.01 sec)

-- Task 4: Update account balance of account holder whose ID is 'A101'

mysql> UPDATE BankAccount
    -> SET account_balance = 60000.00
    -> WHERE account_id = 'A101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Amit Sharma         |           60000 |
| A102       | Priya Verma         |           25000 |
| A103       | Rahul Patil         |           40000 |
| A104       | Sneha Joshi         |           15000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)
