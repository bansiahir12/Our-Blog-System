-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 12:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Khyatiba', '12040808'),
(2, 'BansiAhir', '12040808');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_Id`, `user_Id`, `Title`, `Content`, `image`, `created_at`, `Description`) VALUES
(1, 6, 'TECHNOLOGY', 'Convert the socity into the Modern city.', '1760236944_tech.jpeg', '2025-10-12 04:42:24', 'Do that!'),
(2, 6, 'AI', 'Think about do the big', '1760238374_Think.jpeg', '2025-10-12 05:06:14', 'Think bigger.'),
(3, 6, 'AI', 'monkey singing', '1760238638_AII.jpeg', '2025-10-12 05:10:38', 'singer monkey'),
(4, 9, 'demo', 'demo', '1760240033_download.png', '2025-10-12 05:33:53', 'demo'),
(6, 10, 'AI', 'Artificial Intelligence isn\'t just changing technology.', '1760453582_Blue Modern Artificial Intelligence Technology Logo.png', '2025-10-14 16:53:02', 'It\'s redefining how we live, work, and connect.'),
(7, 10, 'IT', 'Information Technology powers the modern world.', '1760453680_360_F_314927575_yqFMAuXFTNC6gBflR2njRZ4bQb8dAb7y.jpg', '2025-10-14 16:54:40', 'IT is the backbone of every digital transformation.'),
(8, 10, 'WD', 'Web Development', '1760453859_0_M4bxiCIjcTK-2Xr6.jpg', '2025-10-14 16:57:39', 'WD brings ideas to life on the internet.'),
(9, 11, 'Web', 'Great Developing', '1762248525_AI.jpeg', '2025-11-04 10:28:45', 'Niceee');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `fullname`, `Username`, `Password`, `email`, `created_at`) VALUES
(1, 'khyatiba', 'khyati_.08', '$2y$10$1/DMI.veNIMzXmM/AlbZCehT8tJfcsWnDg3ei.iJ266', 'khyati08@gmail.com', '2025-10-07 22:47:12'),
(2, 'Bansi', 'bnc_.12', '$2y$10$AgUldohgP.8TcDLtYHbOouMXoY/ljoBbUKYLpUNvVvS', 'bansi12@gmail.com', '2025-10-07 22:47:56'),
(3, 'Vibhutiba', 'bhuti_vi', '$2y$10$P6hSxa0D03h5Cmk/lE5wwOOdM5vQ/DJcquya54UpdMQ', 'vibhutii@gmail.com', '2025-10-07 22:49:10'),
(4, 'Abc', 'Ab_c', '$2y$10$81kahXFf4WR9T/ByC6g08umMkN6.k/QyLZny2zsedft', 'abc@gmail.com', '2025-10-08 13:18:33'),
(5, 'khya', 'khya_8', '$2y$10$n39nnF5HERAWkhTfX.9uMOrUkVJxjla59cTTfKQfEsi', 'khyati08@gmail.com', '2025-10-10 09:06:40'),
(6, 'khyati Chauhan', 'Def', '$2y$10$q3MN9uv9gfP7AZpWMAzlJelrYnu7st3cVgKgQ.lifNC8uglKI0TBW', 'd@gmail.com', '2025-10-11 08:23:48'),
(7, 'parth', 'parth', '$2y$10$/YQG17aLcQWddHqtFdGMDez7cmaYXSkcISJJB/v.SKAEQ5nzMfOx6', 'p@gmail.com', '2025-10-11 14:53:39'),
(9, 'khyatiba', 'khya', '$2y$10$LXhZirsn0rIZ8wRBmHHxVutJHvGkSzmNMLO5CJrxs3GhLfa/1ku/q', 'k@gmail.com', '2025-10-12 09:02:53'),
(10, 'bansii ahir', 'ahir', '$2y$10$ShWbu5LAYGIvhM1dobe5.uAz75Tdighu62JOL2mP8LN/TFD6shGIi', 'bnsii12@gmail.com', '2025-10-14 20:17:36'),
(11, 'bansi', 'bansii', '$2y$10$YfRgyk5iV2oJIVqyBjENY.mlNdkQt/sgFS6Bh6nZJ1DBbOoqCqQH.', 'bnsiii04@gmail.com', '2025-10-30 13:44:18'),
(12, 'bansiii chavda', 'bnsii', '$2y$10$xg211tEMtfhX3gAMEfbw8Og0MHwuY1R4.scDT9Et7hH5lqOAzfg26', 'bnsi12@gmail.com', '2025-10-31 21:32:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_Id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `users` (`user_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
