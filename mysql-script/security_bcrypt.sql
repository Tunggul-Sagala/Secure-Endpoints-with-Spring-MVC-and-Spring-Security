DROP SCHEMA IF EXISTS `security_bcrypt`;
CREATE SCHEMA `security_bcrypt`;
USE `security_bcrypt`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`username` VARCHAR(50) NOT NULL, 
    `password` CHAR(68) NOT NULL,
    `enabled` tinyint(1) NOT NULL,
    PRIMARY KEY(`username`)
) ENGINE=InnoDb DEFAULT CHARSET=latin1;

INSERT INTO `users` VALUES 
	('john','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
    ('mary','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1),
    ('susan','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',1);

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
	`username` VARCHAR(50) NOT NULL,
    `authority` VARCHAR(50) NOT NULL,
    KEY `authorities_idx_1`(`username`,`authority`),
    CONSTRAINT `authorities_ibfk_1` FOREIGN KEY(`username`)
    REFERENCES `users`(`username`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `authorities` VALUES
	('john','ROLE_EMPLOYEE'),
    ('mary','ROLE_EMPLOYEE'),
    ('mary','ROLE_MANAGER'),
    ('susan','ROLE_EMPLOYEE'),
    ('susan','ROLE_ADMIN');