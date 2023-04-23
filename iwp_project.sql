-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 05, 2023 at 06:02 PM
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
-- Database: `iwp_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` float NOT NULL,
  `phone` bigint(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `user_id`, `date`, `total`, `phone`, `address`) VALUES
(1, 3, '2022-11-14 10:01:39', 52.53, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(4, 3, '2022-11-14 10:03:17', 161.967, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(5, 3, '2022-11-14 10:32:42', 51.912, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(6, 11, '2022-11-14 10:46:23', 110.313, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(7, 3, '2022-11-16 19:10:13', 24.72, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(8, 3, '2022-11-18 04:51:42', 151.462, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(9, 6, '2022-11-18 12:15:55', 17.51, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(10, 6, '2022-11-18 12:18:20', 36.771, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(11, 6, '2022-11-18 12:26:01', 51.912, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(12, 3, '2022-11-19 06:31:08', 165.469, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(13, 3, '2022-12-01 21:43:09', 794.078, 9526083012, 'K Block 916,VIT Mens Hostel,Vellore,Tamil Nadu. -682305'),
(14, 3, '2022-12-09 15:52:45', 12.257, 959526083012, 'Kolekulangara Valluthundil,4B1 International Garden Gate,Thiruvalla,Kerala. -689105'),
(15, 3, '2022-12-28 09:18:41', 70.04, 959526083012, 'Kolekulangara Valluthundil,4B1 International Garden Gate,Thiruvalla,Kerala. -689105'),
(16, 3, '2022-12-30 15:33:56', 221.45, 959526083012, 'Kolekulangara Valluthundil,4B1 International Garden Gate,Thiruvalla,Kerala. -689105'),
(17, 3, '2023-02-07 06:38:39', 47.586, 959526083012, 'Kolekulangara Valluthundil,4B1 International Garden Gate,Thiruvalla,Kerala. -689105');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `content`, `date`, `img`) VALUES
(1, 'Snowdrop', 'Galanthus nivalis, the snowdrop or common snowdrop, is the best-known and most widespread of the 20 species in its genus, Galanthus. Snowdrops are among the first bulbs to bloom in spring and can form impressive carpets of white in areas where they are native or have been naturalised. They should not be confused with the snowflakes, in the genera Leucojum and Acis.', '2022-11-14 05:59:30', 'p1.jpg'),
(2, 'Hellebore', 'Commonly known as hellebores (/ˈhɛlɪbɔːrz/), the Eurasian[2] genus Helleborus consists of approximately 20 species of herbaceous or evergreen perennial flowering plants in the family Ranunculaceae, within which it gave its name to the tribe of Helleboreae. Despite names such as \"winter rose\",[3] \"Christmas rose\" and \"Lenten rose\", hellebores are not closely related to the rose family (Rosaceae). Many hellebore species are poisonous.', '2022-11-14 05:59:30', 'p2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` bigint(11) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `discount`) VALUES
(1, 1234567890, 30),
(2, 1689743652, 15),
(3, 9867435681, 40);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `Seller` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `category` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `description`, `img1`, `img2`, `img3`, `img4`, `cost`, `Seller`, `featured`, `new`, `category`, `qty`) VALUES
(1, 'Snowdrop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'snowdrop1.jpg', 'snowdrop2.jpg', 'snowdrop3.jpg', 'snowdrop4.jpg', 17, 'Blooming Secrets', 1, 0, 'Winter', 36),
(2, 'Hellebores', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'hellebores1.jpg', 'hellebores2.jpg', 'hellebores3.jpg', 'hellebores4.jpg', 24, 'Plants That Work', 1, 0, 'Autumn', 109),
(3, 'Pieris Japonica', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'pieris1.jpg', 'pieris2.jpg', 'pieris3.jpg', 'pieris4.jpg', 29, 'Unique Gardens', 1, 0, 'Exotic', 22),
(4, 'Witch Hazel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'witch_hazel1.jpg', 'witch_hazel2.jpg', 'witch_hazel3.jpg', 'witch_hazel4.jpg', 100, 'Green Promise Farms', 1, 0, 'Exotic', 12),
(5, 'Cyclamen', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'cyclamen1.jpg', 'cyclamen2.jpg', 'cyclamen3.jpg', 'cyclamen4.jpg', 23, 'Van Zyverden', 1, 0, 'Winter', 72),
(6, 'Winterberry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'winterberry1.jpg', 'winterberry2.jpg', 'winterberry3.jpg', 'winterberry4.jpg', 23, 'Spring Hill Nurseries', 1, 0, 'Winter', 74),
(7, 'Crocus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'crocus1.jpg', 'crocus2.jpg', 'crocus3.jpg', 'crocus4.jpg', 17, 'Van Zyverden', 1, 0, 'Seasonal', 113),
(8, 'Primrose', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'primrose1.jpg', 'primrose2.jpg', 'primrose3.jpg', 'primrose4.jpg', 7, 'FAFAFA', 1, 0, 'Winter', 194),
(9, 'Camelia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'camelia1.jpg', 'camelia2.jpg', 'camelia3.jpg', 'camelia4.jpg', 40, 'The Tree Center', 0, 1, 'Exotic', 42),
(10, 'Chionodoxa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'chionodoxa1.jpg', 'chionodoxa2.jpg', 'chionodoxa3.jpg', 'chionodoxa4.jpg', 8, 'Plants Guru', 0, 1, 'Winter', 84),
(11, 'Daphne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'daphne1.jpg', 'daphne2.jpg', 'daphne3.jpg', 'daphne4.jpg', 7, 'Little Flowers Hut', 0, 1, 'Seasonal', 254),
(12, 'Heather', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'heather1.jpg', 'heather2.jpg', 'heather3.jpg', 'heather4.jpg', 60, 'The Spruce', 0, 1, 'Exotic', 33),
(13, 'Holly Bushes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'holly1.jpg', 'holly2.jpg', 'holly3.jpg', 'holly4.jpg', 75, 'The Spruce', 0, 1, 'Winter', 47),
(14, 'Mahonia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'mahonia1.jpg', 'mahonia2.jpg', 'mahonia3.jpg', 'mahonia4.jpg', 70, 'Garden Goods Direct', 0, 1, 'Seasonal', 86),
(15, 'Ornamental Cabbage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ocabbage1.jpg', 'ocabbage2.jpg', 'ocabbage3.jpg', 'ocabbage4.jpg', 5, 'Plants Guru', 0, 1, 'Seasonal', 457),
(16, 'Skimmia Japonica', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'skimmia1.jpg', 'skimmia2.jpg', 'skimmia3.jpg', 'skimmia4.jpg', 40, 'Gardenia', 0, 1, 'Exotic', 614);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item_id`, `quantity`, `bill_id`, `img`) VALUES
(5, 1, 3, 1, 'snowdrop1.jpg'),
(6, 1, 4, 4, 'snowdrop1.jpg'),
(7, 15, 3, 4, 'ocabbage1.jpg'),
(8, 7, 6, 4, 'crocus1.jpg'),
(9, 2, 3, 5, 'hellebores1.jpg'),
(10, 1, 4, 6, 'snowdrop1.jpg'),
(11, 3, 2, 6, 'pieris1.jpg'),
(12, 2, 1, 7, 'hellebores1.jpg'),
(13, 3, 2, 8, 'pieris1.jpg'),
(14, 6, 5, 8, 'winterberry1.jpg'),
(15, 1, 1, 9, 'snowdrop1.jpg'),
(16, 1, 3, 10, 'snowdrop1.jpg'),
(17, 2, 3, 11, 'hellebores1.jpg'),
(18, 1, 3, 12, 'snowdrop1.jpg'),
(19, 6, 6, 12, 'winterberry1.jpg'),
(20, 6, 4, 13, 'winterberry1.jpg'),
(21, 13, 9, 13, 'holly1.jpg'),
(22, 8, 20, 13, 'primrose1.jpg'),
(23, 1, 1, 14, 'snowdrop1.jpg'),
(24, 1, 4, 15, 'snowdrop1.jpg'),
(25, 2, 4, 16, 'hellebores1.jpg'),
(26, 7, 7, 16, 'crocus1.jpg'),
(27, 1, 3, 17, 'snowdrop1.jpg'),
(28, 15, 3, 17, 'ocabbage1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Rahul', 'darklight10691@gmail.com', 'Rahul123'),
(2, 'Nihael', 'nihaelkeel@gmail.com', 'Nihael123'),
(3, 'Nikhil', 'nikhillsam44@gmail.com', 'Nikhil123'),
(4, 'Tessy', 'samtes1@hotmail.com', 'Tessy123'),
(5, 'Nikki', 'nikhilmathew.sam2020@vitstudent.ac.in', 'Nikki123'),
(6, 'Test', 'test@gmail.com', 'Test1234'),
(10, 'Example', 'example@gmail.com', 'Example123'),
(11, 'Example1', 'example1@gmail.com', 'Example1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
