-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2026 at 01:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_disaster_relief`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`admin_id`, `username`, `password`, `full_name`, `email`, `role`, `created_at`) VALUES
(1, 'admin', 'admin123', 'System Administrator', 'admin@relief.lk', 'Admin', '2026-01-09 17:10:56'),
(2, 'officer1', 'officer123', 'Relief Officer', 'officer1@relief.lk', 'Officer', '2026-01-09 17:10:56'),
(3, 'volunteer1', 'vol123', 'Volunteer User', 'volunteer1@relief.lk', 'Volunteer', '2026-01-09 17:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `affected_areas`
--

CREATE TABLE `affected_areas` (
  `area_id` int(11) NOT NULL,
  `district` varchar(100) DEFAULT NULL,
  `division` varchar(100) DEFAULT NULL,
  `epidemic_id` int(11) DEFAULT NULL,
  `severity_level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `affected_areas`
--

INSERT INTO `affected_areas` (`area_id`, `district`, `division`, `epidemic_id`, `severity_level`) VALUES
(1, 'Anuradhapura', 'Nuwaragam Palatha', 1, 'High'),
(2, 'Colombo', 'Kolonnawa', 1, 'Medium'),
(3, 'Kandy', 'Gangawata Korale', 2, 'High'),
(4, 'Gampaha', 'Negombo', 2, 'Low'),
(5, 'Kurunegala', 'Mawathagama', 3, 'Medium'),
(6, 'Kandy', 'Gangawata Korale', 1, 'High'),
(7, 'Badulla', 'Badulla Urban', 1, 'High'),
(8, 'Nuwara Eliya', 'Nuwara Eliya Town', 1, 'High'),
(9, 'Kurunegala', 'Mawathagama', 1, 'Medium'),
(10, 'Colombo', 'Colombo North', 1, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `affected_families`
--

CREATE TABLE `affected_families` (
  `family_id` int(11) NOT NULL,
  `members_count` int(11) DEFAULT NULL,
  `high_risk_count` varchar(11) DEFAULT NULL,
  `quarantine_status` varchar(50) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL,
  `head_of_Household` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `affected_families`
--

INSERT INTO `affected_families` (`family_id`, `members_count`, `high_risk_count`, `quarantine_status`, `area_id`, `center_id`, `head_of_Household`) VALUES
(1, 4, 'Normal', 'No', 1, 1, 'D.G.Dissanayaka'),
(2, 4, 'Normal', 'No', 1, 1, 'N.Thilakaratne'),
(3, 5, 'High', 'Yes', 2, 2, 'K.A.Wijesinghe'),
(4, 3, 'Normal', 'No', 2, 2, 'S.P.Silva'),
(5, 6, 'High', 'Yes', 3, 3, 'L.M.Rajapaksha'),
(6, 4, 'Normal', 'No', 3, 3, 'T.M.Dharmasena'),
(7, 5, 'High', 'Yes', 4, 4, 'P.R.Kumarasinghe'),
(8, 4, 'Normal', 'No', 4, 4, 'A.J.Mendis'),
(9, 7, 'High', 'Yes', 5, 5, 'V.S.Kodituwakku'),
(10, 3, 'Normal', 'No', 5, 5, 'R.L.Perera');

-- --------------------------------------------------------

--
-- Table structure for table `distribution_logs`
--

CREATE TABLE `distribution_logs` (
  `log_id` int(11) NOT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `quantity_distributed` int(11) DEFAULT NULL,
  `distribution_date` date DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distribution_logs`
--

INSERT INTO `distribution_logs` (`log_id`, `resource_id`, `area_id`, `quantity_distributed`, `distribution_date`, `center_id`) VALUES
(6, 1, 1, 1500, '2020-04-10', 1),
(7, 4, 1, 300, '2020-04-12', 1),
(8, 2, 2, 500, '2020-04-15', 2),
(9, 3, 3, 200, '2023-02-20', 3),
(10, 5, 2, 10, '2021-07-25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `donor_name` varchar(100) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `donation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donor_name`, `resource_id`, `quantity`, `donation_date`) VALUES
(1, 'Ministry of Health', 1, 3000, '2020-04-01'),
(2, 'WHO Sri Lanka', 2, 1000, '2020-04-05'),
(3, 'Red Cross', 4, 500, '2021-06-12'),
(4, 'Private Hospital', 5, 20, '2021-07-20'),
(5, 'Local NGO', 3, 700, '2023-02-15'),
(6, 'Disaster Relief Fund', 3, 300, '2025-12-01'),
(7, 'International Aid Organization', 4, 1000, '2025-12-02'),
(8, 'Local Business Group', 5, 500, '2025-12-03'),
(9, 'Health Ministry', 6, 200, '2025-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `epidemics`
--

CREATE TABLE `epidemics` (
  `epidemic_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `epidemics`
--

INSERT INTO `epidemics` (`epidemic_id`, `name`, `description`, `start_date`, `status`) VALUES
(1, 'COVID-19', 'Coronavirus epidemic in Sri Lanka', '2020-03-10', 'Controlled'),
(2, 'Dengue', 'Seasonal dengue outbreak', '2023-01-01', 'Ongoing'),
(3, 'Leptospirosis', 'Rat fever outbreak', '2022-11-15', 'Resolved'),
(4, 'Cyclone Ditwah 2025', 'Severe flooding and landslides across Sri Lanka due to Cyclonic Storm Ditwah in November–December 2025', '2025-11-28', 'Ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `government_assistance`
--

CREATE TABLE `government_assistance` (
  `assistance_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `item_details` varchar(150) DEFAULT NULL,
  `assistance_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_assistance`
--

INSERT INTO `government_assistance` (`assistance_id`, `amount`, `item_details`, `assistance_date`, `status`, `family_id`, `program_id`) VALUES
(81, 5000.00, 'Cash Allowance', '2020-04-15', 'Delivered', 1, 1),
(82, 3000.00, 'Dry Ration Pack', '2021-05-10', 'Delivered', 2, 2),
(83, 1500.00, 'Medical Supplies', '2023-02-01', 'Pending', 3, 3),
(84, 7000.00, 'Cash and Ration', '2025-11-15', 'Delivered', 4, 4),
(85, 4000.00, 'Medical Kits', '2023-03-05', 'Delivered', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `government_programs`
--

CREATE TABLE `government_programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `assistance_type` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_programs`
--

INSERT INTO `government_programs` (`program_id`, `program_name`, `assistance_type`, `description`, `start_date`, `end_date`) VALUES
(1, 'COVID-19 Relief Allowance', 'Cash', 'Rs.5000 allowance for affected families', '2020-04-01', '2020-06-30'),
(2, 'Dry Ration Distribution', 'Food', 'Essential food items for quarantine families', '2021-05-01', '2021-08-31'),
(3, 'Dengue Prevention Support', 'Medical', 'Mosquito control and medicine support', '2023-01-15', '2023-04-30'),
(4, 'Rebuild Srilanka', 'Cash and Supplies', 'Immediate relief for families affected by Cyclone Ditwah', '2025-12-01', '2026-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `relief_centers`
--

CREATE TABLE `relief_centers` (
  `center_id` int(11) NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available_beds` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relief_centers`
--

INSERT INTO `relief_centers` (`center_id`, `location`, `capacity`, `available_beds`, `area_id`) VALUES
(1, 'Anuradhapura Central College', 120, 45, 1),
(2, 'Colombo Community Hall', 200, 90, 2),
(3, 'Kandy District Hospital', 150, 60, 3),
(4, 'Gampaha Sports Complex', 180, 75, 4),
(5, 'Kurunegala Town Hall', 100, 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(11) NOT NULL,
  `resource_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity_available` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `resource_name`, `category`, `quantity_available`) VALUES
(1, 'Face Masks', 'Medical', 8000),
(2, 'Hand Sanitizers', 'Medical', 3000),
(3, 'Paracetamol', 'Medicine', 1500),
(4, 'Dry Ration Pack', 'Food', 2000),
(5, 'Oxygen Cylinder', 'Medical', 120),
(6, 'Temporary Shelter Kits', 'Shelter', 500),
(7, 'Clean Drinking Water Bottles', 'Water', 2000),
(8, 'Emergency Food Packs', 'Food', 1500),
(9, 'Medical First Aid Kits', 'Medical', 800);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `assigned_area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `name`, `skill`, `contact`, `assigned_area`) VALUES
(1, 'Nimal Perera', 'First Aid', '0771234567', 1),
(2, 'Kavindi Silva', 'Nursing', '0719876543', 2),
(3, 'Saman Jayasinghe', 'Logistics', '0754567890', 3),
(4, 'Dilani Fernando', 'Community Support', '0763344556', 1),
(5, 'Ruwan Bandara', 'Medical Assistant', '0789988776', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `affected_areas`
--
ALTER TABLE `affected_areas`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `epidemic_id` (`epidemic_id`);

--
-- Indexes for table `affected_families`
--
ALTER TABLE `affected_families`
  ADD PRIMARY KEY (`family_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Indexes for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `resource_id` (`resource_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `fk_distribution_center` (`center_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `resource_id` (`resource_id`);

--
-- Indexes for table `epidemics`
--
ALTER TABLE `epidemics`
  ADD PRIMARY KEY (`epidemic_id`);

--
-- Indexes for table `government_assistance`
--
ALTER TABLE `government_assistance`
  ADD PRIMARY KEY (`assistance_id`),
  ADD KEY `family_id` (`family_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `government_programs`
--
ALTER TABLE `government_programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `relief_centers`
--
ALTER TABLE `relief_centers`
  ADD PRIMARY KEY (`center_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD KEY `assigned_area` (`assigned_area`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `affected_areas`
--
ALTER TABLE `affected_areas`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `affected_families`
--
ALTER TABLE `affected_families`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `epidemics`
--
ALTER TABLE `epidemics`
  MODIFY `epidemic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `government_assistance`
--
ALTER TABLE `government_assistance`
  MODIFY `assistance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `government_programs`
--
ALTER TABLE `government_programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `relief_centers`
--
ALTER TABLE `relief_centers`
  MODIFY `center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affected_areas`
--
ALTER TABLE `affected_areas`
  ADD CONSTRAINT `affected_areas_ibfk_1` FOREIGN KEY (`epidemic_id`) REFERENCES `epidemics` (`epidemic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `affected_families`
--
ALTER TABLE `affected_families`
  ADD CONSTRAINT `affected_families_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `affected_areas` (`area_id`),
  ADD CONSTRAINT `affected_families_ibfk_2` FOREIGN KEY (`center_id`) REFERENCES `relief_centers` (`center_id`);

--
-- Constraints for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  ADD CONSTRAINT `distribution_logs_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distribution_logs_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `affected_areas` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_distribution_center` FOREIGN KEY (`center_id`) REFERENCES `relief_centers` (`center_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `government_assistance`
--
ALTER TABLE `government_assistance`
  ADD CONSTRAINT `government_assistance_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `affected_families` (`family_id`),
  ADD CONSTRAINT `government_assistance_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `government_programs` (`program_id`);

--
-- Constraints for table `relief_centers`
--
ALTER TABLE `relief_centers`
  ADD CONSTRAINT `relief_centers_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `affected_areas` (`area_id`);

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `volunteers_ibfk_1` FOREIGN KEY (`assigned_area`) REFERENCES `affected_areas` (`area_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
