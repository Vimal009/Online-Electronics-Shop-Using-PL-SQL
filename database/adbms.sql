-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 06:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adbms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addproduct` (IN `id` INT, IN `name` VARCHAR(30), IN `description` VARCHAR(80), IN `price` BIGINT, IN `color` VARCHAR(30), IN `company` VARCHAR(30), IN `type` VARCHAR(30), IN `available` BIGINT)   BEGIN
INSERT INTO details(id, name, description, price, color, company, type, available)VALUES(id, name, description, price, color, company, type, available);
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cur` ()   BEGIN
    DECLARE pname,pcolor Text;
    DECLARE exit_loop BOOlEAN DEFAULT FALSE;
    DECLARE prt_cursor CURSOR FOR SELECT name, color FROM details;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
    OPEN prt_cursor;
    prt_loop: LOOP
         FETCH FROM prt_cursor INTO pname,pcolor;
         IF exit_loop THEN 
             LEAVE prt_loop;
         END IF;
         IF pcolor = "White" THEN
             SELECT pname;
         END IF;
     END LOOP prt_loop;
     CLOSE prt_cursor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteproduct` (IN `pid` INT)   BEGIN
DELETE FROM details WHERE id=pid;
COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showproduct` (OUT `pid` INT, OUT `pname` VARCHAR(30), OUT `pdescription` VARCHAR(80), OUT `pprice` BIGINT, OUT `pcolor` VARCHAR(30), OUT `pcompany` VARCHAR(30), OUT `ptype` VARCHAR(30), OUT `pavailable` BIGINT)   BEGIN
SELECT * FROM details;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateproduct` (IN `pid` INT, IN `pname` VARCHAR(30), IN `pdescription` VARCHAR(80), IN `pprice` BIGINT, IN `pcolor` VARCHAR(30), IN `pcompany` VARCHAR(30), IN `ptype` VARCHAR(30), IN `pavailable` BIGINT)   BEGIN
UPDATE details SET id=pid, name=pname, description=pdescription, price=pprice, color=pcolor, company=pcompany, type=ptype, available=pavailable WHERE id=pid;
COMMIT;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `count123` () RETURNS INT(11)  RETURN(SELECT COUNT(*) AS HELLO FROM details)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `available` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `description`, `price`, `color`, `company`, `type`, `available`) VALUES
(1234, 'Nothing Phone 1', '12GB RAM 256 GB ROM QUALCOMNN SNAPDRAGON 778G', 36999, 'White/Black', 'Nothing', 'Smartphone', 100),
(1235, 'Sony Bravia', '4K ULTRA TV', 8999, 'Black', 'Sony', 'Television', 200),
(1236, 'JBL Speaker 2', 'IP68 Rating High Base', 4999, 'White/Black/Red', 'JBL', 'Speaker', 100),
(1237, 'iPhone 13 Pro Max', '4GB RAM 1 TB ROM A14 Bionic Chip 12MP+12MP+12MP Rear Camera 12MP Front Camera', 15999, 'White', 'Apple', 'Smartphone', 100),
(1238, 'MacBook Pro', '4GB RAM 512 SSD M12 CHIP IOS 17', 99999, 'White', 'Apple', 'Laptop', 100);

--
-- Triggers `details`
--
DELIMITER $$
CREATE TRIGGER `deletelog` AFTER DELETE ON `details` FOR EACH ROW BEGIN
INSERT INTO logs VALUES(NULL, OLD.id, 'DELETED' ,NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertlog` AFTER INSERT ON `details` FOR EACH ROW BEGIN
INSERT INTO logs VALUES(null, NEW.id, 'INSERTED', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatelog` AFTER UPDATE ON `details` FOR EACH ROW BEGIN
INSERT INTO logs VALUES(NULL, OLD.id, 'UPDATED', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `action` varchar(30) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `pid`, `action`, `cdate`) VALUES
(1, 1234, 'INSERTED', '2022-09-04 18:39:33'),
(2, 1235, 'INSERTED', '2022-09-04 21:01:39'),
(3, 1235, 'DELETED', '2022-09-04 21:13:13'),
(4, 1235, 'INSERTED', '2022-09-04 21:14:44'),
(5, 1236, 'INSERTED', '2022-09-04 21:15:59'),
(6, 1237, 'INSERTED', '2022-09-04 21:17:23'),
(7, 1238, 'INSERTED', '2022-09-04 21:18:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
