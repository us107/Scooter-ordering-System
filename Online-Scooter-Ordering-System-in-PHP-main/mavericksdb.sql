

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- admin

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13');

-- --------------------------------------------------------

-- manufacturers

CREATE TABLE `manufacturers` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `manufacturers`


INSERT INTO `manufacturers` (`rs_id`, `c_id`, `title`, `image`, `date`) VALUES
(1, 1, 'Ather Energy', '', '2024-09-05 16:35:55'),
(2, 1, 'Ola Electric', '', '2024-09-05 16:35:55'),
(3, 1, 'Bajaj Auto', '', '2024-09-05 16:35:55'),
(4, 1, 'Hero Electric', '', '2024-09-05 16:35:55'),
(5, 1, 'TVS Motors', '', '2024-09-05 16:35:55'),
(6, 1, 'Revamp Moto', '', '2024-09-05 16:35:55');

-- --------------------------------------------------------

-- remark

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

-- rfid_tracking

CREATE TABLE `rfid_tracking` (
  `sno` int(11) NOT NULL,
  `rfid` varchar(20) NOT NULL,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rfid_tracking`
--

INSERT INTO `rfid_tracking` (`sno`, `rfid`, `stage_id`) VALUES
(1, 'FMUK6293', 1),
(2, 'GTYP0376', 1),
(3, 'HQHL4873', 1),
(4, 'ZIQE8042', 1),
(5, 'WGST7204', 1),
(6, 'ZXMU4077', 1),
(7, 'DJLD2041', 1),
(8, 'SCLX1819', 1),
(9, 'QWLN3374', 1),
(10, 'JJTP8284', 1),
(11, 'APYW6435', 1),
(12, 'MKNK4925', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scooters`
--

CREATE TABLE `scooters` (
  `d_id` int(11) NOT NULL,
  `mf_id` int(11) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  `RFID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scooters`
--

INSERT INTO `scooters` (`d_id`, `mf_id`, `company`, `name`, `price`, `img`, `RFID`) VALUES
(1, 1, 'Ather Energy', 'Ather 450X', 139000.00, '', 'FMUK6293'),
(2, 1, 'Ather Energy', 'Ather 450 Plus', 109000.00, '', 'GTYP0376'),
(3, 2, 'Ola Electric', 'S1 Pro', 139999.00, '', 'HQHL4873'),
(4, 2, 'Ola Electric', 'S1', 99999.00, '', 'ZIQE8042'),
(5, 3, 'Bajaj Auto', 'Chetak', 114000.00, '', 'WGST7204'),
(6, 3, 'Bajaj Auto', 'Chetak Premium', 124000.00, '', 'ZXMU4077'),
(7, 4, 'Hero Electric', 'Optima HX', 59900.00, '', 'DJLD2041'),
(8, 4, 'Hero Electric', 'Photon HX', 74900.00, '', 'SCLX1819'),
(9, 5, 'TVS Motors', 'iQube Electric', 105000.00, '', 'QWLN3374'),
(10, 5, 'TVS Motors', 'iQube Electric S', 115000.00, '', 'JJTP8284'),
(11, 6, 'Revamp Moto', 'RM25', 79900.00, '', 'APYW6435'),
(12, 6, 'Revamp Moto', 'RM25 Pro', 89900.00, '', 'MKNK4925');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`c_id`, `c_name`, `date`) VALUES
(5, 'Manufacturer', '2024-09-05 16:24:32'),
(6, 'Bikesetu-yard', '2024-09-05 16:24:32'),
(7, 'Franchise-outlet', '2024-09-05 16:24:32'),
(8, 'Delivered', '2024-09-05 16:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfid_tracking`
--
ALTER TABLE `rfid_tracking`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `scooters`
--
ALTER TABLE `scooters`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rfid_tracking`
--
ALTER TABLE `rfid_tracking`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `scooters`
--
ALTER TABLE `scooters`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

