-- Use this simple script to offline a SQL Express or SQL Server DB
-- It should drop all connections and offline the DB for whatever reason you want it offlined.
-- Allen Vailliencourt
-- March 4, 2016

USE master
GO
ALTER DATABASE <DB NAME>
SET OFFLINE WITH ROLLBACK IMMEDIATE
GO
