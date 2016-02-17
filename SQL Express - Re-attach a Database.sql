-- taken/modified from here: http://sqlandme.com/2011/08/02/sql-server-renaming-database-and-physical-database-files/
-- let's you re-attach a SQL or SQL Express DB after renaming it.
-- Make sure to update the C:\ to show the full path of where your DB files are located at.

USE [master]
CREATE DATABASE [Your DB Name] ON
( FILENAME = N'C:\..\Your DB Name.mdf'),
( FILENAME = N'C:\..\Your DB Name.LDF')
 FOR ATTACH