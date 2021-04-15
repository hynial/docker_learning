CREATE DATABASE IF NOT EXISTS demo DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE USER 'smer'@'localhost' IDENTIFIED BY '12345lQ!';
CREATE USER 'smer'@'%' IDENTIFIED BY '12345lQ!';
GRANT ALL PRIVILEGES ON demo.* TO 'smer'@'%';
FLUSH PRIVILEGES;

SET NAMES utf8;
SET time_zone = '+08:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
SET GLOBAL time_zone = '+8:00';

USE demo;