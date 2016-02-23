
-- Use this script to determine if a user owns different schemas and to clear them out. Good for maintenance when old uses are removed
-- Allen Vailliencourt
-- February 23, 2016
-- Taken from various posts on SO and MSDN
-- MSDN: https://blogs.technet.microsoft.com/mdegre/2010/12/19/the-database-principal-owns-a-schema-in-the-database-and-cannot-be-dropped/
-- SO: http://dba.stackexchange.com/questions/19456/the-database-principal-owns-a-schema-in-the-database-and-cannot-be-dropped-mess

-- run this to see all the schemas owned by a specific user
SELECT name FROM  sys.schemas WHERE principal_id = USER_ID('<user>')

-- Use this query to change the permissions on any owned schema to dbo
ALTER AUTHORIZATION
ON SCHEMA::<schema name>
TO dbo
GO

-- once all schemas have been changed then you can drop the user
DROP USER <user>
GO
