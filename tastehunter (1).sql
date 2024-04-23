-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 07:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tastehunter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(50) NOT NULL,
  `ad_email` varchar(50) NOT NULL,
  `ad_password` varchar(250) NOT NULL,
  `ad_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_name`, `ad_email`, `ad_password`, `ad_date`) VALUES
(1, 'Surabhi', 'surabhijoshi53@gail.com', '$2y$10$KtRmm2/kRvx0rNxOlLYcFeHfqTfZdUKbk/D08O93NyhODkPFKCC3.', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `cart_status` varchar(250) NOT NULL,
  `cart_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `fav_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `fav_status` varchar(40) NOT NULL,
  `fav_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`fav_id`, `u_id`, `r_id`, `fav_status`, `fav_date`) VALUES
(8, 7, 2, '', '2024-04-11'),
(15, 7, 6, '', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `feed_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `u_id`, `feedback`, `feed_date`) VALUES
(1, 5, 'Good', '2024-04-11'),
(2, 5, 'Good', '2024-04-11'),
(3, 7, 'jjjjj', '2024-04-12'),
(4, 5, 'Apple was extremely fresh with high quality', '2024-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `lk_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `add_uid` int(11) NOT NULL,
  `lk_status` varchar(250) NOT NULL,
  `lk_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`lk_id`, `u_id`, `r_id`, `add_uid`, `lk_status`, `lk_date`) VALUES
(1, 5, 4, 7, '1', '2024-04-11'),
(4, 8, 6, 7, '1', '2024-04-11'),
(5, 5, 11, 7, '1', '2024-04-11'),
(7, 5, 2, 5, '1', '2024-04-11'),
(11, 7, 10, 5, '1', '2024-04-12'),
(12, 7, 6, 5, '1', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `unid` varchar(70) NOT NULL,
  `o_status` varchar(40) NOT NULL,
  `o_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `u_id`, `p_id`, `qty`, `total`, `unid`, `o_status`, `o_date`) VALUES
(1, 5, 1, 1, 20, '6617b2d233a70', 'Deliverd', '2024-04-11'),
(2, 5, 8, 1, 25, '6617b2d233a70', 'Rejected', '2024-04-11'),
(3, 7, 1, 1, 20, '6618fe9f322c8', 'Deliverd', '2024-04-12'),
(4, 7, 4, 2, 70, '661e7dd704d27', 'Pending', '2024-04-16'),
(5, 5, 1, 2, 40, '661f546bdd38a', 'Pending', '2024-04-17'),
(6, 5, 1, 2, 40, '661f546bdd38a', 'Pending', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `pay_mode` varchar(20) NOT NULL,
  `trans_id` varchar(90) NOT NULL,
  `unid` varchar(70) NOT NULL,
  `pay_status` varchar(20) NOT NULL,
  `pay_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `o_id`, `pay_mode`, `trans_id`, `unid`, `pay_status`, `pay_date`) VALUES
(1, 1, 'cash', '', '6617b2d233a70', 'Pending', '2024-04-11'),
(2, 2, 'cash', '', '6617b2d233a70', 'Pending', '2024-04-11'),
(3, 3, 'cash', '', '6618fe9f322c8', 'Paid', '2024-04-12'),
(4, 4, 'upi', '356783999', '661e7dd704d27', 'Pending', '2024-04-16'),
(5, 5, 'upi', 'ol@surabhi', '661f546bdd38a', 'Pending', '2024-04-17'),
(6, 6, 'upi', 'ol@surabhi', '661f546bdd38a', 'Pending', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `pcat_id` int(11) NOT NULL,
  `p_name` varchar(60) NOT NULL,
  `p_img` varchar(250) NOT NULL,
  `p_decs` longtext NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_qty` int(11) NOT NULL,
  `package` varchar(40) NOT NULL,
  `p_status` varchar(40) NOT NULL,
  `p_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `pcat_id`, `p_name`, `p_img`, `p_decs`, `p_price`, `p_qty`, `package`, `p_status`, `p_date`) VALUES
(1, 1, 'Apple', 'Upload/close-up-fresh-apple.jpg', 'Good Product', 20, 20, 'Kilo Gram', '', '2024-02-06'),
(2, 1, 'Strawberry', 'Upload/Strawberry.avif', 'Brand: Fresho Strawberry\nType : Strawberry\nOrganic: No\nNet quantity: 200g\n', 96, 200, 'Kilo Gram', '', '2024-02-06'),
(4, 2, 'Ladies Finger', 'Upload/Laides.jpg', 'Brand: unbranded\r\nType: Ladies Finger\r\nOrganic: No\r\nNet Quantity: 500g', 35, 500, 'Gram', '', '2024-02-06'),
(6, 2, 'Beetroot', 'Upload/Beetroot.avif', 'Brand: Unbranded\r\nType: Beetroot\r\nOrganic: No\r\nNet quantity: 1 Kg', 56, 1, 'Kilo Gram', '', '2024-02-06'),
(8, 2, 'Carrot', 'Upload/Carrot.avif', 'Brand: Unbranded\r\nType: Carrot\r\nOrganic: No\r\nNet quantity: 500g', 25, 500, 'Gram', '', '2024-02-06'),
(9, 3, 'Chicken Boneless Breast', 'Upload/Chicken.webp', 'Net Weight:250g\r\n Number of pcs: 6 to 9 pcs\r\nServing Size: 1-2 people\r\nStorage Temp: 0-4 deg Celsius', 189, 450, 'Gram', '', '2024-02-06'),
(10, 3, 'Rohu Fish', 'Upload/Fish.avif', 'Calories: 97\r\nCarbs: 4 g', 299, 1, 'Kilo Gram', '', '2024-02-06'),
(11, 3, 'Egg', 'Upload/egg.webp', '-  Fresho EGG\r\n- 12 Farm Fresh\r\n - No antibiotics,hormone, steroids \r\n- All Natural,\r\n- 12 pcs', 93, 12, 'Dozen', '', '2024-02-06'),
(12, 4, 'Amul Butter', 'Upload/butter.webp', 'Amul Butter \r\n- Pasteurized,\r\n 2x500 g Multipack\r\nEnergy,Kcal : 722', 505, 2, 'Gram', '', '2024-02-06'),
(13, 4, 'Milky Mist Farm Fresh Curd', 'Upload/Milky Nist.webp', 'Milky Mist Farm Fresh Curd\r\n - No Preservatives, \r\n2x1 kg Multipack', 276, 2, 'Kilo Gram', '', '2024-02-06'),
(14, 4, 'Amul Fresh Cream ', 'Upload/fresh cream.webp', 'Amul Fresh Cream - 25% Milk Fat Low Fat, 1 L Carton', 220, 1, 'Litre', '', '2024-02-06'),
(15, 5, 'Del Monte Tomato Ketchup', 'Upload/tomato.webp', 'Del Monte Tomato Ketchup \r\nClassic Blend, Rich & Thick Condiment\r\n900 g \r\nSpout Pouch', 85, 900, 'Gram', '', '2024-02-06'),
(24, 6, 'Weikfield Baking Powder ', 'Upload/wiki new.png', 'Weikfield Baking Powder \r\n Double Action Baking Powder, For Light & Fluffy Cakes,\r\n Pastries, Naans, Dhoklas, Cookies.\r\n 400 g Jar', 70, 400, 'Gram', '', '2024-02-07'),
(25, 6, 'Weikfield Baking Soda ', 'Upload/sodaa.jpg', 'Weikfield Baking Soda \r\n100 g Jar', 32, 100, 'Gram', '', '2024-02-07'),
(26, 7, 'India Gate Basmati Rice', 'Upload/bas.jpg', 'India Gate Basmati Rice/\r\nBasmati Akki - Dubar\r\n5kg Pouch', 766, 5, 'Kilo Gram', '', '2024-02-07'),
(27, 7, 'Quaker Oats Breakfast Cereal  ', 'Upload/oat.jpg', 'Quaker Oats Breakfast Cereal  \r\n Rich In Protein, Dietary Fibre, Nutritious\r\n Easy To Cook \r\n 2x1 Kg Multipack', 332, 2, 'Kilo Gram', '', '2024-02-07'),
(28, 7, 'Tata', 'Upload/poha.jpg', 'Tata Sampann White Thick Poha \r\n High In Fibre \r\n For Breakfast & Evening Tea \r\n 2x1kg Multipack', 189, 10, '', '', '2024-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `pcat_id` int(11) NOT NULL,
  `pcat_name` varchar(60) NOT NULL,
  `pcat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`pcat_id`, `pcat_name`, `pcat_date`) VALUES
(1, 'Fruits', '2024-02-05 15:51:42'),
(2, 'Vegetables', '2024-02-05 15:51:53'),
(3, 'Meat ', '2024-02-05 15:53:50'),
(4, 'Dairy', '2024-02-05 15:57:16'),
(5, 'Sauce', '2024-02-05 15:57:38'),
(6, 'Baking', '2024-02-05 15:58:20'),
(7, 'Rice & Cereal', '2024-02-05 15:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `rcategory`
--

CREATE TABLE `rcategory` (
  `rcat_id` int(11) NOT NULL,
  `rcat_name` varchar(50) NOT NULL,
  `rcat_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rcategory`
--

INSERT INTO `rcategory` (`rcat_id`, `rcat_name`, `rcat_date`) VALUES
(4, 'North Indian', '2024-03-14'),
(5, 'South Indian', '2024-03-14'),
(6, 'Chinese ', '2024-03-14'),
(7, 'Italian', '2024-03-14'),
(8, 'Arabian', '2024-03-14'),
(9, 'Dairy', '2024-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `recepie`
--

CREATE TABLE `recepie` (
  `r_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `rcat_id` int(11) NOT NULL,
  `r_like` int(100) NOT NULL,
  `r_title` varchar(90) NOT NULL,
  `r_description` varchar(100) NOT NULL,
  `r_ingd` longtext NOT NULL,
  `r_img` varchar(250) NOT NULL,
  `r_status` varchar(20) NOT NULL,
  `r_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recepie`
--

INSERT INTO `recepie` (`r_id`, `u_id`, `rcat_id`, `r_like`, `r_title`, `r_description`, `r_ingd`, `r_img`, `r_status`, `r_date`) VALUES
(1, 7, 4, 0, 'Biriyani', 'These ingredients are mixed together to form a batter, which is then shaped into small patties or do', '1 cup urad dal (black gram dal),2-3 green chilies (chopped),1-inch piece of ginger (finely chopped),2-3 tablespoons chopped fresh coriander leaves,1 medium-sized onion (finely chopped),1 teaspoon whole black peppercorns,1 teaspoon cumin seeds,Salt to taste,Oil for deep frying', '7GCB6bT0Nc8', '', '2024-04-03 16:58:56'),
(2, 7, 6, 0, 'Chicken Manchurian', 'These ingredients are used to make both the chicken balls and the sauce, resulting in a deliciously ', 'Boneless chicken (cut into small pieces),Ginger-garlic paste,Soy sauce,Salt and pepper,Egg (for binding)', 'I_6aMZwf9CU', '', '2024-04-07 14:18:50'),
(3, 7, 8, 0, 'Arabian Bread Pudding', 'Arabian bread pudding is a rich and creamy dessert made with layers of flaky pastry or bread, nuts, ', '3 cup of milk ( 750 ml ),3 tbsp vanilla custard powder,¼ cup sugar,1 cup fresh cream ( 250 ml ),¼ cup condensed milk ( 60 ml ),½ tsp vanilla essence ,dry fruits of your choice,saffron strands ( optional ),bread 8-10 slices', 'IUHvWFI7kpY', '', '2024-04-07 14:43:37'),
(4, 7, 8, 0, ' Arabian dessert ', '\r\nArabian desserts encompass a rich variety of sweet treats that are enjoyed across the Middle East ', '1/2 litres milk ,3 tbsp custard powder ,1/4 tsp cardomom powder ,5 to 6 tbsp sugar,1/2 cup fresh cream ,Chopped nuts tutti fruitti,Saffron', 'a2MLaRFRKSg', '', '2024-04-07 14:48:38'),
(6, 5, 7, 0, 'Turkish Style Chicken', 'Bring the mixture to a simmer, then reduce the heat to low. Cover the skillet and let it simmer for ', '4 boneless, skinless chicken breasts / 2 tablespoons olive oil / 1 onion, finely chopped / 2 cloves garlic, minced / 1 red bell pepper, sliced / 1 green bell pepper, sliced / 1 teaspoon paprika / 1 teaspoon ground cumin / 1 teaspoon ground coriander / Chopped fresh parsley for garnish', '4aSJn3FNtk4', '', '2024-04-07 15:39:19'),
(10, 5, 4, 0, 'Vada', 'sssss', '1 cup urad dal (black gram dal),Larger Capacity : 50 LITRE capacity, enough to make feast for a whole big family,5 Heating Modes : Comes with 5-stage Heating modes that is suited to all your baking, toasting and grilling needs.,dsd,asfas,asdas', '', '', '2024-04-11 12:25:38'),
(11, 5, 4, 0, 'vada', 'jhjsfs', 'jhhj,hhjghjghghgh', '', '', '2024-04-11 12:26:43'),
(12, 8, 5, 0, 'vada', 'hjghghghghgfghfghsdf', 'jkhghjghjg,jhbhjhjgh', '7GCB6bT0Nc8', '', '2024-04-11 12:33:09'),
(13, 7, 5, 0, 'ghg', 'hgg', 'hgg,hgg', 'KSX4cwWRzis', '', '2024-04-12 14:49:52'),
(14, 7, 6, 0, 'Veg Hakka Noodles', 'Cut the capsicum in juliennes, that means length wise strips.\r\n• Peel the carrots, trim if the head ', 'Capsicum,Carrot,Cabbage half or 1 cup,Noodles 1 packet,Boiled water,Salt,oil 1tbsp,garlic 1 tbsp,spring onion bubls,spring onion greens,salt and pepper,soya sauce 1tbsp,chilli oil 1 tbsp,Spring onion greens 1 tbsp (chopped),Vinegar 1 tsp', '', '', '2024-04-16 19:21:02'),
(15, 5, 4, 0, 'Chole Baturae', 'ngredients:\r\nFor Bhature:\r\n½ cup curd\r\n½ cup semolina \r\n2 cup all purpose flour \r\n½ tsp salt \r\n1 tsp', '½ cup curd,½ cup semolina ,2 cup all purpose flour ,1 tsp sugar , ½ tsp salt  ,½ tsp baking soda/ ,1 tbsp oil,1 tsp eno ,2 ½ cup white chickpeas  , 1 raw potato ,1 cinnamon stick , 1 black cardamom ,1 tsp tea leaves + 1 cup water  ,1 tsp salt , tsp cumin seeds    ,2 tsp coriander seeds , 1 tsp fennel seeds, ½ tsp pepper corns    ,4 green cardamom ,1 mace ,2-3 red chillies ,1 tsp kasuri methi  ,1 inch cinnamon stick ', '', '', '2024-04-16 20:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `s_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` longtext NOT NULL,
  `state` varchar(40) NOT NULL,
  `pincode` int(11) NOT NULL,
  `s_date` datetime NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`s_id`, `o_id`, `name`, `email`, `phone`, `address`, `state`, `pincode`, `s_date`, `status`) VALUES
(1, 1, 'Surabhi', 'surabhijoshi53@gmail.com', 8787677676, 'Sunset Boulevard, Mangalore - 575001, Karnataka, India', 'Karnataka', 67654, '2024-04-11 15:22:18', ''),
(2, 2, 'Surabhi', 'surabhijoshi53@gmail.com', 8787677676, 'Sunset Boulevard, Mangalore - 575001, Karnataka, India', 'Karnataka', 67654, '2024-04-11 15:22:18', ''),
(3, 3, 'surabhi', 'minnumariyashelly00@gmail.com', 8590182511, '123Roswane', 'kara', 43567, '2024-04-12 14:57:59', ''),
(4, 4, 'Arathi', 'arathi10@gmail.com', 8765443224, 'Udupi', 'Karnataka', 65432, '2024-04-16 19:02:07', ''),
(5, 5, 'surabhi', 'surabhijoshi53@gmail.com', 9495015902, 'dfhjj', 'kara', 65432, '2024-04-17 10:17:39', ''),
(6, 6, 'surabhi', 'surabhijoshi53@gmail.com', 9495015902, 'dfhjj', 'kara', 65432, '2024-04-17 10:17:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(100) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_phone` bigint(12) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(250) NOT NULL,
  `u_image` varchar(250) NOT NULL,
  `address` longtext NOT NULL,
  `u_description` longtext NOT NULL,
  `u_status` varchar(30) NOT NULL,
  `u_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_phone`, `u_email`, `u_password`, `u_image`, `address`, `u_description`, `u_status`, `u_date`) VALUES
(5, 'surabhi', 8281182835, 'surabhijoshi53@gmail.com', '$2y$10$5rCfeO8unDhJ9c7/6XTGie5zK8ykevzNPkwf7usAVnsibqr.S28BO', 'upload/download1.jpg', 'SreeKrishnaVilas Coimbatore Chennai', 'Me Surabhi joshi working as a lead chef at Grand Hyatt Hyderabad', 'Accepted', '2024-02-29'),
(7, 'minnu', 8590182511, 'minnu53@gmail.com', '$2y$10$5rCfeO8unDhJ9c7/6XTGie5zK8ykevzNPkwf7usAVnsibqr.S28BO', 'upload/user img.jpg', 'JJ LANE MANGALORE KARNATAKA', 'LIKE TO ADD RECIPIES AND PURCHASE THROUGH tastehunter', 'Accepted', '2024-03-01'),
(8, 'Shamil', 8765434354, 'shamil@gmail.com', '$2y$10$KtRmm2/kRvx0rNxOlLYcFeHfqTfZdUKbk/D08O93NyhODkPFKCC3.', 'upload/3d-rendering-avatar_23-2150833572-removebg-preview.png', '', 'bjhvhvh', 'Accepted', '2024-04-07'),
(9, 'Ram', 878888888, 'ram@admin.com', '$2y$10$3IdHLfzDVg/NZo8rbVkSgOmuMs0r5jkSYGdPrgLYkqiGE/i4HBo1C', 'upload/3d-illustration-person-with-sunglasses_23-2149436188-removebg-preview.png', 'Manglore', 'Good', 'Pending', '2024-04-11'),
(12, 'Raj', 878888888, 'raj@gmail.com', '$2y$10$ZEFHBuqV1EWRtXzkebW/3u73i0pS7kRF6VooGIKztoubSMOmFORlG', 'upload/3d-illustration-person-with-glasses-half-shaved-head_23-2149436187-removebg-preview.png', 'Manglore', 'Good', 'Pending', '2024-04-11'),
(15, 'surabhi', 8590182511, 'sura@gmail.com', '$2y$10$FJN/.LTN.zDDhv5K7oUreOZHdJuI.3AbbxnQYBtk7P9Zq4zY4Dfw2', 'upload/download1.jpg', 'dfhjj', 'dfgdfg', 'Accepted', '2024-04-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`lk_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`pcat_id`);

--
-- Indexes for table `rcategory`
--
ALTER TABLE `rcategory`
  ADD PRIMARY KEY (`rcat_id`);

--
-- Indexes for table `recepie`
--
ALTER TABLE `recepie`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `lk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `pcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rcategory`
--
ALTER TABLE `rcategory`
  MODIFY `rcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recepie`
--
ALTER TABLE `recepie`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
