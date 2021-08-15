-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2020 at 06:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(1, 'Capsule', 'cap.png', 'It is a oral drug. It is a solid form in which the drug is enclosed in a hard or soft soluble container, usually of a form of gelatin', '2020-11-03 10:28:57'),
(2, 'Tablets', 'tablet.png', 'A tablet is a pharmaceutical oral dosage form', '2020-11-03 10:28:57'),
(3, 'Syrup', 'syrup.png', 'It is a concentrated sugar solution that contains medication. It is a oral drug', '2020-11-03 10:29:24'),
(4, 'Cream', 'cream.png', 'A water soluble medicinal preparation applied to the skin', '2020-11-03 10:29:24'),
(5, 'Lotion', 'lotion.png', 'A protective or restorative liquid or cream applied to the skin', '2020-11-06 10:29:59'),
(6, 'Syrunj', 'syrunj.png', 'Syringes are used to infuse intravenous therapy into blood stream', '2020-11-05 10:29:59'),
(7, 'Injection', 'injection.jpg', 'Injection is administering a drug into person body using needle', '2020-11-08 10:30:19');


-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier_id` int(11)  NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier_id`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(1, 2, '1', 'Disprin', '325mg', '10.64', 'fk.jpg', 'this medicine contains Acetylsalicylic acid or Aspirin. These are 325mg disprin for  the cure of headache ,fever, toothache ,migraine ,sore throat. It is used as painkiller.', 'MedPlus', '2020-11-03 11:40:37'),
(2, 2, '2', 'Lisinopril', '10mg', '12.95', 'fk.jpg', 'It is an antihypertensive ,vasodilating , cardioprotective drug.It is used to treat hypertension ,heart failure ,acute myocardial infarction , diabetic nephropathy', 'MedPlus', '2020-11-05 11:40:48'),
(3, 3, '2', 'Benadryl', '150ml', '100.3', 'fk.jpg', 'It contains diphenhydramine ,ammonium chloride ,sodium citrate.It is used in the treatment of cough', 'MedPlus', '2020-11-05 11:41:36'),
(4, 3, '3', 'Dr. Zinc', '100 ml', '115', 'fk.jpg', 'Zinc Syrup is a supplement containing many vitamins and minerals such as Zinc. It is used to treat nutrient deficiency in the diet, weak body immunity, chronic diseases such as Diabetes, Cardiovascular disease & Rheumatoid Arthritis, deficiency of certain vitamins & zinc.', 'MedPlus', '2020-11-04 11:41:43'),
(5, 4, '4', 'Aziderm', '15 gram tube', '180', 'fk.jpg', 'Aziderm Cream (Azelex)  treats acne. It is also used to help reduce hyperpigmentation also know as melasma, due to the fact that it has a skin brightening effect.', 'MedPlus', '2020-11-03 11:41:50'),
(6, 4, '3', 'Vicco Turmeric Skin Cream', '30 gram tube', '122', 'fk.jpg', 'Vicco Turmeric Cream is an ayurvedic cream and it contains a blend of Turmeric and Sandalwood Oil as major ingredients. The cream protects the skin from harmful radiations and gives natural radiance', 'MedPlus', '2020-11-02 11:41:53'),
(7, 5, '2', 'Nivea Nourishing Lotion', '400ml', '299', 'fk.jpg', 'It contains Aqua ,Paraffinum Liquidum , C15-19 Alkane ,Alcohol Denat. (3.66% [v/v]) ,Glycerin ,Cetearyl Alcohol, Glyceryl Stearate Citrate ,Dimethicone, Phenoxyethanol ,Glyceryl Glucoside, Methylparaben.It gives you moisturized skin for up to 48 hours ,Reduces roughness of skin', 'MedPlus', '2020-11-03 11:42:03'),
(8, 5, '5', 'Cetaphil Moisturising Lotion', '250ml', '1090', 'fk.jpg', 'It contains Water ,Glycerin ,Hydrogenated Polyisobutene ,Ceteareth-20 ,Cetearyl Alcohol ,Persea Gratissima (Avocado) Oil, Tocopheryl Acetate(Vitamin E) ,Dimethicone Cetaphil moisturising lotion is a dermatological formulation suitable for dry ,sensitive skin.', 'MedPlus', '2020-11-03 11:42:09'),
(9, 6, '3', 'U-100 insulin syringe', '100 units/mL', '700', 'fk.jpg', 'Humulin is synthesized in a special non-disease-producing laboratory strain of Escherichia coli bacteria. For diabetic patients', 'MedPlus', '2020-11-03 11:42:14'),
(10, 7, '2', 'Adenocarcinoma Injection', '1 pack', '5000', 'fk.jpg', 'Adenocarcinoma of the Pancreas Abraxane is indicated for the first-line treatment of patients with metastatic adenocarcinoma of the pancreas', 'MedPlus', '2020-11-03 11:42:17'),
(11, 1, '1', 'Organic India Triphala 60 Capsules ', '60 capules', '195', 'fk.jpg', 'Ingredients of Organic India triphala capsules:Amalaki(Phyllanthus emblica) , Vibhitaki( Terminalia belerica) , Haritaki(Terminalia chebula) For treatment of constipation, eliminates intestinal toxins & gas, improves digestion system', 'MedPlus', '2020-11-03 11:42:21'),
(12, 1, '4', 'D3K Softgel Capsule', '1mg', '84', 'fk.jpg', 'It contains cholecalciferol.D3K Softgel Capsule helps your body to absorb a mineral called calcium. It can boost your immunity and increase the body resistance against various infections', 'MedPlus', '2020-11-17 21:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'PHARMACY ', 'PharmEasy');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(2, 'sumithra', '9663826658', '10', '2', '300', 1, '2020-11-17 21:14:15'),
(3, 'saraswati', '7676162252', '15', '3', '550', 1, '2020-11-17 22:17:22'),
(4, 'ram', '8124569730', '21', '4', '750', 1, '2020-11-19 13:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'dinesh', 'fk.jpg', '9449687422', 'MG Road', 'MedPlus', '2020-11-03 12:53:49'),
(2, 'sathish', 'fk.jpg', '8152654532', 'MG Road', 'MedPlus', '2020-11-04 12:53:49'),
(3, 'ram', 'fk.jpg', '9432342342', 'MG Road', 'MedPlus', '2020-11-05 12:53:49'),
(4, 'lakshman', 'fk.jpg', '9432642342', 'MG Road', 'MedPlus', '2020-11-06 12:53:49'),
(5, 'krishna', 'fk.jpg', '8432342342', 'MG Road', 'MedPlus', '2020-11-07 12:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@admin.com', 'admin', 'ADMIN', 'fk.jpg', '9663826658', '2020-11-01 18:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);
  


--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);
  
--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

ALTER TABLE `inventeries` ADD CONSTRAINT `cat` FOREIGN KEY (`catId`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `inventeries` ADD CONSTRAINT `supply` FOREIGN KEY (`supplier_id`) REFERENCES `supplier`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

 ALTER TABLE `site` ADD CONSTRAINT `site` FOREIGN KEY (`id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT; 
 ALTER TABLE `sold` ADD CONSTRAINT `use` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `users` ADD CONSTRAINT `useCat` FOREIGN KEY (`id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
