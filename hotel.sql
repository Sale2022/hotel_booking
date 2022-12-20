


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `uid_id` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid_id`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'sasa', '1234', 'Sasa Djukic', 'sasadjukic@gmail.com'),
(2, 'Andrej', 'andrej', 'Andrej Djukic', 'andrejdjukic@gmail.com'),
(3, 'admin', '1234', 'admin', 'admin@admin.com');

-- --------------------------------------------------------
--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `phone` int(100) NOT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT customers_unique UNIQUE (`customer_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `customers`
--

INSERT INTO `customers` 
(`customer_id`, `name`, `phone`) VALUES 
(1, '' , 0 ),
(2, '' , 0 ),
(3, '' , 0 ),
(4, '' , 0 ),
(5, '' , 0 ),
(6, '' , 0 ),
(7, '' , 0 ),
(8, '' , 0 ),
(9, '' , 0 ),
(10, '' , 0 ),
(11, '' , 0 );


-- --------------------------------------------------------
--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` text NOT NULL,
  `roomname` text NOT NULL,
  `room_nr` text NOT NULL,
  `area` text NOT NULL,
  `floor` text NOT NULL,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `roomtype` text NOT NULL,
  `facility` text NOT NULL,
  `price` float NOT NULL,
   PRIMARY KEY (`hotel_id`),
   CONSTRAINT hotels_unique UNIQUE (`hotel_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-----------------------------------------------------------------
--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `roomname`, `room_nr`,`area`, `floor`, `room_qnty`, `available`, `booked`, `roomtype`, `facility`, `price`) VALUES 
(1, 'Hilton Exlusiv hotel', 'Presidential suite', '400', '150 m2', '4', 5, 5, 0, 'suite', 'AC, TV, Wifi, Sofa, Balcony, Sea View, Jacuzzi', 1500),
(2, 'Hilton Exlusiv hotel', 'Presidential suite', '401', '150 m2', '4', 5, 5, 0, 'suite', 'AC, TV, Wifi, Sofa, Balcony, Sea View, Jacuzzi', 1500),
(3, 'Hilton Exlusiv hotel', 'Presidential suite', '402', '150 m2', '4', 5, 5, 0, 'suite', 'AC, TV, Wifi, Sofa, Balcony, Sea View, Jacuzzi', 1500),
(4, 'Hilton Exlusiv hotel', 'Presidential suite', '403', '150 m2', '4', 5, 5, 0, 'suite', 'AC, TV, Wifi, Sofa, Balcony, Sea View, Jacuzzi', 1500),
(5, 'Hilton Exlusiv hotel', 'Presidential suite', '404', '150 m2', '4', 5, 5, 0, 'suite', 'AC, TV, Wifi, Sofa, Balcony, Sea View, Jacuzzi', 1500),
(6, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '300', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(7, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '301', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(8, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '302', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(9, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '303', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(10, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '304', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(11, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '305', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(12, 'Hilton Exlusiv hotel', 'Exlusiv studio apartment', '306', '90 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 1000),
(13, 'Hilton Exlusiv hotel', 'Deluxe apartment', '200', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(14, 'Hilton Exlusiv hotel', 'Deluxe apartment', '201', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(15, 'Hilton Exlusiv hotel', 'Deluxe apartment', '202', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(16, 'Hilton Exlusiv hotel', 'Deluxe apartment', '203', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(17, 'Hilton Exlusiv hotel', 'Deluxe apartment', '204', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(18, 'Hilton Exlusiv hotel', 'Deluxe apartment', '205', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(19, 'Hilton Exlusiv hotel', 'Deluxe apartment', '206', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(20, 'Hilton Exlusiv hotel', 'Deluxe apartment', '207', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 800),
(21, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '100', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(22, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '101', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(23, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '102', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(24, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '103', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(25, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '104', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(26, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '105', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(27, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '106', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(28, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '107', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(29, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '108', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(30, 'Hilton Exlusiv hotel', 'Deluxe exlusiv room', '109', '30 m2', '1', 10, 10, 0, 'double', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 500),
(31, 'Hilton Business hotel', 'Bridal suite', '4000', '99 m2', '4', 4, 4, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 400),
(32, 'Hilton Business hotel', 'Bridal suite', '4001', '99 m2', '4', 4, 4, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 400),
(33, 'Hilton Business hotel', 'Bridal suite', '4002', '99 m2', '4', 4, 4, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 400),
(34, 'Hilton Business hotel', 'Bridal suite', '4003', '99 m2', '4', 4, 4, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 400),
(35, 'Hilton Business hotel', 'Studio apartment', '3000', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(36, 'Hilton Business hotel', 'Studio apartment', '3001', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(37, 'Hilton Business hotel', 'Studio apartment', '3002', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(38, 'Hilton Business hotel', 'Studio apartment', '3003', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(39, 'Hilton Business hotel', 'Studio apartment', '3004', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(40, 'Hilton Business hotel', 'Studio apartment', '3005', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(41, 'Hilton Business hotel', 'Studio apartment', '3006', '50 m2', '3', 7, 7, 0, 'apartment', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 350),
(42, 'Hilton Business hotel', 'Business apartment', '2000', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(43, 'Hilton Business hotel', 'Business apartment', '2001', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(44, 'Hilton Business hotel', 'Business apartment', '2002', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(45, 'Hilton Business hotel', 'Business apartment', '2003', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(46, 'Hilton Business hotel', 'Business apartment', '2004', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(47, 'Hilton Business hotel', 'Business apartment', '2005', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(48, 'Hilton Business hotel', 'Business apartment', '2006', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(49, 'Hilton Business hotel', 'Business apartment', '2007', '45 m2', '2', 8, 8, 0, 'apartment', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 300),
(50, 'Hilton Business hotel', 'Deluxe room', '1000', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(51, 'Hilton Business hotel', 'Deluxe room', '1001', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(52, 'Hilton Business hotel', 'Deluxe room', '1002', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(53, 'Hilton Business hotel', 'Deluxe room', '1003', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(54, 'Hilton Business hotel', 'Deluxe room', '1004', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(55, 'Hilton Business hotel', 'Deluxe room', '1005', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(56, 'Hilton Business hotel', 'Deluxe room', '1006', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(57, 'Hilton Business hotel', 'Deluxe room', '1007', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(58, 'Hilton Business hotel', 'Deluxe room', '1008', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(59, 'Hilton Business hotel', 'Deluxe room', '1009', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(60, 'Hilton Business hotel', 'Deluxe room', '1010', '30 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 220),
(61, 'Hilton Family hotel', 'Family suite', '4000', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(62, 'Hilton Family hotel', 'Family suite', '4001', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(63, 'Hilton Family hotel', 'Family suite', '4002', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(64, 'Hilton Family hotel', 'Family suite', '4003', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(65, 'Hilton Family hotel', 'Family suite', '4004', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(66, 'Hilton Family hotel', 'Family suite', '4005', '60 m2', '4', 6, 6, 0, 'suite', 'AC, TV, Wifi, Balcony, Sea View, Jacuzzi', 250),
(67, 'Hilton Family hotel', 'Family room', '3000', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(68, 'Hilton Family hotel', 'Family room', '3001', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(69, 'Hilton Family hotel', 'Family room', '3002', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(70, 'Hilton Family hotel', 'Family room', '3003', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(71, 'Hilton Family hotel', 'Family room', '3004', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(72, 'Hilton Family hotel', 'Family room', '3005', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(73, 'Hilton Family hotel', 'Family room', '3006', '50 m2', '3', 7, 7, 0, 'double', 'AC, TV, Wifi, Balcony, Garden View, Bath tub', 150),
(74, 'Hilton Family hotel', 'Double room', '2000', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(75, 'Hilton Family hotel', 'Double room', '2001', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(76, 'Hilton Family hotel', 'Double room', '2002', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(77, 'Hilton Family hotel', 'Double room', '2003', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(78, 'Hilton Family hotel', 'Double room', '2004', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(79, 'Hilton Family hotel', 'Double room', '2005', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(80, 'Hilton Family hotel', 'Double room', '2006', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(81, 'Hilton Family hotel', 'Double room', '2007', '30 m2', '2', 8, 8, 0, 'double', 'AC, TV, Wifi, Sea View, Shower', 120),
(82, 'Hilton Family hotel', 'Single room', '1000', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(83, 'Hilton Family hotel', 'Single room', '1001', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(84, 'Hilton Family hotel', 'Single room', '1002', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(85, 'Hilton Family hotel', 'Single room', '1003', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(86, 'Hilton Family hotel', 'Single room', '1004', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(87, 'Hilton Family hotel', 'Single room', '1005', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(88, 'Hilton Family hotel', 'Single room', '1006', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(89, 'Hilton Family hotel', 'Single room', '1007', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(90, 'Hilton Family hotel', 'Single room', '1008', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(91, 'Hilton Family hotel', 'Single room', '1009', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(92, 'Hilton Family hotel', 'Single room', '1010', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(93, 'Hilton Family hotel', 'Single room', '1011', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(94, 'Hilton Family hotel', 'Single room', '1012', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100),
(95, 'Hilton Family hotel', 'Single room', '1013', '20 m2', '1', 11, 11, 0, 'single', 'AC, TV, Wifi, Balcony, Garden View, Shower', 100);

-- --------------------------------------------------------
--
-- Table structure for table `bookings`
--
CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `book` text NOT NULL,
  `payment` text NOT NULL,
   PRIMARY KEY (`booking_id`), 
   CONSTRAINT bookings_unique UNIQUE (`booking_id`),
   CONSTRAINT `fk_bookings__customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE RESTRICT  ON DELETE RESTRICT,
   CONSTRAINT `fk_bookings__hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON UPDATE RESTRICT ON DELETE RESTRICT 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` 
(`booking_id`, `customer_id`, `hotel_id`, `checkin` ,`checkout` , `book`, `payment`) VALUES 
(1, 1, 1 ,  '0000-00-00', '0000-00-00','false', ''),
(2, 2, 2 ,  '0000-00-00', '0000-00-00','false', ''),
(3, 3, 3 ,  '0000-00-00', '0000-00-00','false', ''),
(4, 4, 4 ,  '0000-00-00', '0000-00-00','false', ''),
(5, 5, 5 ,  '0000-00-00', '0000-00-00','false', ''),
(6, 6, 6 ,  '0000-00-00', '0000-00-00','false', ''),
(7, 7, 7 ,  '0000-00-00', '0000-00-00','false', ''),
(8, 8, 8 ,  '0000-00-00', '0000-00-00','false', ''),
(9, 9, 9,  '0000-00-00', '0000-00-00','false', ''),
(10, 10, 10 ,  '0000-00-00', '0000-00-00','false', ''),
(11, 11, 11 ,  '0000-00-00', '0000-00-00','false', '');
-- --------------------------------------------------------

-- --------------------------------------------------------
--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` text NOT NULL,
  `carname` text NOT NULL,
  `seats_nr` text NOT NULL,
  `transmission_type` text NOT NULL,
  `volume_gearbox` text NOT NULL,
  `price_car` text NOT NULL,
  `pictures` mediumtext NOT NULL,
   PRIMARY KEY (`car_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
  

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `brand`, `carname`, `seats_nr`, `transmission_type`, `volume_gearbox`, `price_car`, `pictures`) VALUES
(1, 'Mercedes-Benz', 'CLA200', '5 seats', 'Automatic', '2 large suitscases', '200 Euro per day', 'images/autos/cla200.jpg'),
(2, 'Volkswagen', 'Passat', '5 seats', 'Manuel', '2 large suitscases', '150 Euro per day', 'images/autos/passat.jpg'),
(3, 'Volkswagen', 'Golf VII', '5 seats', 'Automatic', '1 large suitscases', '120 Euro per day', 'images/autos/golfVII.jpg'),
(4, 'Audi', 'Q7', '7 seats', 'Automatic', '2 large suitscases','250 Euro per day', 'images/autos/audiq7.jpg'),
(5, 'Mazda', 'CX5', '5 seats', 'Manuel', '2 large suitscases', '180 Euro per day','images/autos/mazdacx5.jpg'),
(6, 'BMW', 'X6', '7 seats', 'Automatic', '2 large suitscases','260 Euro per day','images/autos/bmwx6.jpg'),
(7, 'Opel', 'Astra', '5 seats', 'Manuel', '2 large suitscases', '130 Euro per day', 'images/autos/opelastra.jpg');

-----------------------------------------------
--
-- Table structure for table `meals_offer`
--

CREATE TABLE `meals_offer` (
  `meal_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `meals_category` text NOT NULL,
  `price_meals` text NOT NULL,
  PRIMARY KEY (`meal_id`),
  CONSTRAINT `fk_meals_offer__booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT `fk_meals_offer__hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `meals`
--

INSERT INTO `meals_offer` (`meal_id`, `booking_id`, `hotel_id`, `meals_category`, `price_meals`) VALUES
(1, 1, 1, 'All inclusive', '150 Euro'),
(2, 2, 2, 'Breakfast included', '20 Euro'),
(3, 3, 3, 'Half board', '50 Euro'),
(4, 4, 4, 'Full board', '80 Euro');

-----------------------------------------------
--
-- Table structure for table `hotels_cars`
--

CREATE TABLE `hotels_cars` (
	`hotel_id` INT(11) NOT NULL,
	`car_id` INT(11) NOT NULL,
	CONSTRAINT unique_key UNIQUE (`hotel_id`,`car_id`),
	CONSTRAINT `fk_hotels_cars__hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES hotels (`hotel_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `fk_hotels_cars__car_id` FOREIGN KEY (`car_id`) REFERENCES cars (`car_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `hotels`_`bookings`
--
INSERT INTO `hotels_cars` (`hotel_id`,`car_id`) VALUES 
(1, 2),
(2, 3);
-----------------------------------------------
--
-- Table structure for table `cars_bookings`
--

CREATE TABLE `cars_bookings` (
	`car_id` INT(11) NOT NULL,
	`booking_id` INT(11) NOT NULL,
	CONSTRAINT unique_key UNIQUE (car_id,booking_id),
	CONSTRAINT `fk_cars_bookings__car_id` FOREIGN KEY (`car_id`) REFERENCES cars (`car_id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `fk_cars_bookings__booking_id` FOREIGN KEY (`booking_id`) REFERENCES bookings (`booking_id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `cars`_`bookings`
--
INSERT INTO `cars_bookings` (`car_id`,`booking_id`) VALUES 
(2, 1),
(3, 2);

UPDATE hotels, customers, bookings 
SET 
bookings.checkin='2022-12-03', bookings.checkout='2022-12-24', 
customers.name='Mark', customers.phone='01576543245', 
hotels.booked=true 
WHERE 
hotels.roomname='Deluxe exlusiv room'