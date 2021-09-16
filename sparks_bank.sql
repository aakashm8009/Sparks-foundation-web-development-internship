

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Aakash', 'Abhishek', 5000, '2021-09-16 09:15:56'),
(2, 'Saif', 'Ankit', 2000, '2021-09-16 09:16:43'),
(3, 'Ashish', 'Ajay', 1, '2021-09-16 09:17:55'),
(4, 'Ashutosh', 'Vipin', 1000, '2021-09-16 09:18:16'),
(5, 'Mukul', 'Vijay', 4000, '2021-09-16 09:19:06'),
(6, 'Ajay', 'Mukul', 7000, '2021-09-16 09:20:40'),
(7, 'Ankit', 'Ashish', 3000, '2021-09-16 09:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Aakash', 'aakashm8009@gmail.com', 20000),
(2, 'Ashutosh', 'ashu123@gmail.com', 30000),
(3, 'Ashish', 'ashishsingh@gmail.com', 40000),
(4, 'Ankit', 'ankit@gmail.com', 50000),
(5, 'Ajay', 'ajay@gmail.com', 15000),
(6, 'Saif', 'saifali@gmail.com', 55000),
(7, 'Mukul', 'mukul@gmail.com', 25000),
(8, 'Vipin', 'vipin@gmail.com', 35000),
(9, 'Abhishek', 'abhishek@gmail.com', 17000),
(10, 'Vijay', 'vijay@gmail.com', 41000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
