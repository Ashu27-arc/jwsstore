-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 06:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellerywholesalestoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `cover` text NOT NULL,
  `name` text NOT NULL,
  `images` text NOT NULL,
  `original_price` double(10,2) DEFAULT NULL,
  `sell_price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `sub_cate_id` int(11) DEFAULT NULL,
  `in_home` tinyint(4) DEFAULT NULL,
  `is_single` tinyint(4) DEFAULT NULL,
  `have_gram` tinyint(4) DEFAULT NULL,
  `gram` varchar(255) DEFAULT NULL,
  `have_kg` tinyint(4) DEFAULT NULL,
  `kg` varchar(255) DEFAULT NULL,
  `have_pcs` tinyint(4) DEFAULT NULL,
  `pcs` varchar(255) DEFAULT NULL,
  `have_liter` tinyint(4) DEFAULT NULL,
  `liter` varchar(255) DEFAULT NULL,
  `have_ml` tinyint(4) DEFAULT NULL,
  `ml` varchar(255) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `key_features` text DEFAULT NULL,
  `disclaimer` text DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `type_of` tinyint(4) NOT NULL DEFAULT 2,
  `in_offer` tinyint(4) NOT NULL DEFAULT 2,
  `in_stoke` tinyint(4) NOT NULL DEFAULT 0,
  `rating` double(10,2) DEFAULT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `size` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `product_code` varchar(25) DEFAULT NULL,
  `product_weight` float DEFAULT NULL,
  `product_length` float DEFAULT NULL,
  `product_breadth` float DEFAULT NULL,
  `product_height` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `cover`, `name`, `images`, `original_price`, `sell_price`, `discount`, `kind`, `cate_id`, `sub_cate_id`, `in_home`, `is_single`, `have_gram`, `gram`, `have_kg`, `kg`, `have_pcs`, `pcs`, `have_liter`, `liter`, `have_ml`, `ml`, `descriptions`, `key_features`, `disclaimer`, `exp_date`, `type_of`, `in_offer`, `in_stoke`, `rating`, `total_rating`, `variations`, `size`, `status`, `extra_field`, `product_code`, `product_weight`, `product_length`, `product_breadth`, `product_height`, `created_at`, `updated_at`) VALUES
(1, 2, 'KIqmiBd8sGsUPr0TpwWialTbXbh9Wud80wk1SAAM.jpg', 'Alphabet Pendants (Regular size)', '[\"UH7ki7HgLyjfS8T48gJHLwpgcS7zQmLGso4ARJKx.jpg\",\"4Qj9eAsvcCn46KziyJsXXCWx4yMz2UCMNkw2bVw6.jpg\",\"tOYFhLXC7rE96lDj4qFyDm3zd9mh4w2d6UCVhbU5.jpg\",\"fadmZ3LUFH1e7qbuvzJAHmvgmFuYZl5jFNv8W23R.jpg\",\"PZkOfTHkfDesZ3Mz8WJ1PhDDLIfYe4HlNnRYOr7u.jpg\",\"ndjUC2tkBjarLEoOkyCDgasgAZaSERk0dSdSqHQ2.jpg\"]', 100.00, 90.00, 10.00, 0, 3, 4, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver  Jewellery Alphabet Pendants (Regular size).', 'Alphabet Pendants (Regular size)', 'This Product is good.', '2026-06-10', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Regular Size\",\"price\":10,\"discount\":2},{\"title\":\"Small Size\",\"price\":5,\"discount\":1}]}]', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 06:16:07', '2024-01-22 08:29:14'),
(2, 2, 'K88N19hqW4u1CNGZ0yUgzzJkXXZATtCJemUBA18u.jpg', 'Alphabet Pendants', '[\"tsmoG9hGFMh5FL8sMFInROldvU0Fg7Dy9TYPDeTk.jpg\",\"eqBOqHw2gObePSh28SEhLW9PNcYndb9AxEajJt76.jpg\",\"JGQ0xmb6sCCqSPbVnxYoSHvAhyyLqaGya7VqW6P3.jpg\",\"08m1zIJBEY0a1lt90nyJV4UBU7ts112LHm8k24oS.jpg\",\"OALNFRED7kkf9ganEQ7cqwafAlBzn0HVehcPkOQv.jpg\",\"2iwiDczFVzYAskCt1PRbX5mxIQaEqarV0yGSLr1u.jpg\"]', 200.00, 180.00, 10.00, 0, 2, 16, 0, 0, 1, '10', 0, '0', 0, '0', 0, '0', 0, '0', 'This is Gold plated Alphabet Pendants Regular Size', 'Alphabet Pendants', 'This is Gold plated Alphabet Pendants Regular Size only', '2026-12-31', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Regular Size\",\"price\":20,\"discount\":2}]}]', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 08:10:08', '2024-01-22 08:10:08'),
(3, 2, 'PoGSNSrT72pWLiB04liUIA2WoWaOb4lKM1LcDtta.jpg', 'Alphabet Pendants (Small Size)', '[\"CAamcesnzYezsIyfLtYBmnZ6iU4mIa1chVLcya84.jpg\",\"xDkGpQ8Lw8cJXoXeztaNnzhhmgk8zDyXJH8tOo2L.jpg\",\"JmZ74pt7DrDm1phzsPEVOhPbnJKbYFGBEksv5MY6.jpg\",\"DNaOSDLQNPuh13T9f1Th5niPnIjfdDdUbdtmYkVZ.jpg\",\"r1OUH4VTzzeO8zSZyQqb3R6XpyDNBg6P6R7bbRIj.jpg\",\"YNagDDmUedtlgsJBGoni8WCBP18OBn7n1ok50WX4.jpg\"]', 100.00, 90.00, 10.00, 1, 3, 5, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver Jewellery Alphabet Pendants (Small Size).', 'Alphabet Pendants', 'This is Silver Jewellery Alphabet Pendants (Small Size) only.', '2026-02-05', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Size\",\"price\":10,\"discount\":2}]}]', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 08:40:48', '2024-01-22 08:40:48'),
(4, 2, 'xZUWPij2oNC5mdAJjUNj5627BB5fH7QDYBsgdRs5.jpg', 'Alphabet Pendants (Small Size)', '[\"78Z0PGVsm2FVjZrZucji848KLWXpjxKaMvILM7tw.jpg\",\"5Wo1LutXkd7De7oJZjJh1dWOw5dSXdHRIpHxa0VA.jpg\",\"R4XgV1tYp2sTky4bD5H7FXpRveT2MtJMhlKdt1Zv.jpg\",\"5j0SnI8SLRh7WtGd29fV54D7UHkxW0ghUYna22l4.jpg\",\"IPF1LbVmm3T7UDmglF7vs0JWHqXx4UQWq9f1YE2c.jpg\",\"tixidt5fL03uMJPta56pUPDmYudviMMcqx8JIBdo.jpg\"]', 300.00, 270.00, 10.00, 0, 2, 17, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver Jeweller Alphabet Pendants (Small Size).', 'Alphabet Pendants', 'This Product is good.', '2027-10-22', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"size\",\"price\":30,\"discount\":2}]}]', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 08:50:41', '2024-01-22 08:50:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
