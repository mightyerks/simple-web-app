DELETE DATABASE IF EXISTS COMP3095;

CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;
grant all on COMP3095.* to 'admin'@'localhost' identified by 'admin'; 

CREATE TABLE USERS 
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	
	firstname varchar(255) NOT NULL,
	
	lastname varchar(255) NOT NULL,
	
	address varchar(255) NOT NULL, 
	
	email varchar(255) NOT NULL, 
	
	role ENUM('a','b') NOT NULL DEFAULT 'a',
	
	created timestamp default current_timestamp,
	
	password varchar(20) NOT NULL
);

INSERT INTO `USERS` (`firstname`, `lastname`, `email`, `role`, `password`) VALUES
(NULL, NULL, `admin@domain.ca`, NULL, `P@ssword1`);
