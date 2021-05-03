-- CREATE TABLE student (
--     id int,
--     name VARCHAR(255)
-- );
--
-- INSERT INTO student(id, name) VALUES
-- (1,'A'),
-- (2,'B'),
-- (3,'C');

DROP TABLE IF EXISTS `call_data`;
CREATE TABLE `call_data` (
  `trx_id` varchar(50) NOT NULL,
  `msisdn` varchar(17) NOT NULL,
  `via` varchar(10) NULL,
  `token` varchar(17) NOT NULL,
  `dial_code` int(10) NULL,
  `dial_status` varchar(30) NULL,
  `call_status` varchar(30) NULL,
  `result` varchar(20) NULL,
  `is_done` tinyint(1) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;