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
  `via` varchar(10) NOT NULL,
  `token` varchar(17) NOT NULL,
  `dial_code` int(10) NOT NULL,
  `dial_status` varchar(30) NOT NULL,
  `call_status` varchar(30) NOT NULL,
  `result` varchar(20) NOT NULL,
  `is_done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;