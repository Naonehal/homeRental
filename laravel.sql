-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 11:03 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vancouver', '0000-00-00 00:00:00', NULL),
(3, 'Burnaby', '2023-04-06 09:16:45', '2023-04-06 09:16:45'),
(4, 'Abbotsford', '2023-04-06 09:19:10', '2023-04-06 09:19:10'),
(5, 'Surrey', '2023-04-06 09:26:13', '2023-04-07 05:46:53'),
(10, 'Mission', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_05_235256_create_cities_table', 2),
(6, '2014_10_12_100000_create_password_resets_table', 3),
(7, '2023_04_10_211539_create_properties_table', 3),
(8, '2023_04_11_070121_add__image_to_properties_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `StreetAddress` varchar(191) NOT NULL,
  `ApartmentNumber` varchar(191) DEFAULT NULL,
  `City` varchar(191) NOT NULL,
  `PostalCode` varchar(191) NOT NULL,
  `Type` varchar(191) NOT NULL,
  `Price` varchar(191) NOT NULL,
  `Bedrooms` varchar(191) NOT NULL,
  `Bathrooms` varchar(191) NOT NULL,
  `SquareFeet` varchar(191) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OwnerName` varchar(191) NOT NULL,
  `OwnerEmail` varchar(191) NOT NULL,
  `OwnerPhone` varchar(191) NOT NULL,
  `Image1` varchar(191) NOT NULL,
  `Image2` varchar(191) NOT NULL,
  `Image3` varchar(191) NOT NULL,
  `Image4` varchar(191) NOT NULL,
  `Image5` varchar(191) NOT NULL,
  `Image6` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `created_at`, `updated_at`, `StreetAddress`, `ApartmentNumber`, `City`, `PostalCode`, `Type`, `Price`, `Bedrooms`, `Bathrooms`, `SquareFeet`, `Description`, `Image`, `Features`, `OwnerName`, `OwnerEmail`, `OwnerPhone`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `Image6`) VALUES
(11, '2023-04-11 17:37:28', '2023-04-12 01:41:01', '2485 Hill-Tout Street', '1', 'Abbotsford', 'V2T 4G5', 'Farmhouse', '1200', '4', '2', '2000', 'Rental Suite Amenities: Newly renovated with a dishwasher, refrigerator, stove, range, balcony, blinds, laminate and tile flooring\r\nBuilding Amenities: On-site laundry, secured entry with Intercom, outdoor parking, underground parking.\r\nNeighborhood: Hill-Tout rental apartment building is 9-minute drive to both Highstreet Shopping Center and Seven Oaks Malls. Ten Broeck Elementary School is just across the street, 5-minute drive to parks/playgrounds. Near major bus stops, 10-minute drive to Abbotsford Memorial Hospital (4.8 km).\r\nParking Fee: $25, underground is $50. \r\n*Pet Clause: We are happy to welcome your family dog or cat to come live with you in this Mainstreet property, no reptiles, please. In consideration of your neighbors we do have size and breed restrictions on dogs, speak with the property manager for details. A (maximum of 2 pets per suite) and $200 refundable pet fee will be charged.', 'apartment-14954579.jpg', NULL, 'AP Dhillon', 'ap@gmail.com', '6046041234', 'apartment-5854892.jpg', 'apartment-5854893.jpg', 'apartment-5854894.jpg', 'apartment-5854895.jpg', 'apartment-5854896.jpg', 'apartment-14954579.jpg'),
(12, '2023-04-12 01:33:04', '2023-04-12 01:38:43', '2838 Livingstone Avenue', '12', 'Abbotsford', 'V2T 0J1', 'Townhouse', '2600', '2', '3', '1206', 'PAMPER YOURSELF 2X2.5+Office Townhouse in a GREAT in Abbotsford. Everything else is included in this amazing unit with a great location, Amazing UPDGRADES with High End Quality, A Great Deal. . .This Is It!\r\nWhether it\'s work or play (or both) you\'ll love this place. School in walking minutes, stay at home and enjoy parks, AND you can enjoy it with your PET, nice!\r\n\r\nSo, You Get Other features in the unit:\r\nHardwood flooring in living and dining rooms. Over height ceilings with floor to ceiling windows. Front loading stacking washer and dryer. Gourmet kitchens. Great appliances; refrigerator, dishwasher, microwave, range\r\nNo smoking\r\n\r\nThis Townhouse is close to: Abbotsford Early French Immersion is 5 mins driving. Abbotsford Catholic Independent School is 2 mins driving. Restaurants and groceries - 3 mins driving or 10 mins walking. Hub to commute to Langley is 10 mins. Walmart - 5 mins', 'town-house-4689150.jpg', NULL, 'Madison Roy', 'madisonroy22@example.com', '(416) 555-6729', 'town-house-4689147.jpg', 'town-house-4689149.jpg', 'town-house-4689151.jpg', 'town-house-4689146.jpg', 'town-house-4689148.jpg', 'town-house-4689150.jpg'),
(13, '2023-04-12 01:48:19', '2023-04-12 03:03:02', '(604) 555-8866', '6', 'Abbotsford', 'V3G 3G1', 'Single Family Home', '4250', '4', '3', '3200', '** Available May 1st or June 1st **\r\n\r\nIf you are a clean and tidy person/family your new home search has ended. Home for rent in the quiet family friendly Auguston neighborhood. Well trained pets may be welcome/considered. 36 inch open burner gas range; central A/C. Spacious primary suite with walk in closet, separate tub and shower.\r\nHome is steps from Auguston trail network; spray park; and Auguston Traditional School. Also available is a local daycare, corner store and Callaghan Park!\r\n4 bedrooms; 3.5 baths. Can be available partially furnished, or furniture available for sale as well.\r\nSerious inquiries only. proof of income and references are required and will be checked.\r\nNo subletting. Absolutely NO smoking.\r\nLooking for a one-year lease.', 'house-15198654.jpg', NULL, 'Ethan Cook', 'ethancook45@example.com', '(604) 555-8866', 'house-15198664.jpg', 'house-15198666.jpg', 'house-15198659.jpg', 'house-15198663.jpg', 'house-15198667.jpg', 'house-15198654.jpg'),
(14, '2023-04-12 01:51:13', '2023-04-12 03:03:15', '31504 Southern Drive', '3', 'Abbotsford', 'V2T 5P1', 'Basement', '2300', '3', '2', '1100', 'Welcome to our spacious basement suite with 3 bedrooms and 2 bathrooms, perfect for a family or group of friends. This suite offers ample room for everyone to relax and unwind in a comfortable setting. The bedrooms are bright and airy, with lots of room to move and plenty of closet space. The two modern bathrooms are equipped with all the essentials you need for your stay. The open-concept living area is perfect for entertaining or simply relaxing, with a fully equipped kitchen, space for comfortable seating, and a large TV. Enjoy the convenience of having your own private entrance and great location to parks and amenities. Whether you\'re in town for work or play, our basement suite is the perfect home away from home or your future long-term stay.\r\n(Unfortunately, it is not wheel chair accessible.)\r\n\r\nPlease note:\r\n\r\n-No pets of any kind or smoking or vaping on the property.\r\n-We also discourage loud music or partying on the property. Its okay to have friends over as we are reasonable.\r\n-Utilities is 10% of the rent equivalent of the month.\r\n-No WIFI. You will have to order WIFI to your needs as everyone has their own requirements.\r\n-No AC Units, Heating Available', 'basement-15000890.jpg', NULL, 'Olivia Wang', 'oliviawang38@example.com', '(514) 555-1138', 'basement-15000882.jpg', 'basement-15000885.jpg', 'basement-15000886.jpg', 'basement-15000887.jpg', 'basement-15000893.jpg', 'basement-15000890.jpg'),
(15, '2023-04-12 02:41:29', '2023-04-12 03:02:47', '3304 667 Howe Street', '3', 'Vancouver', 'V6C 2E5', 'Apartment', '6950', '2', '2', '1410', 'Stunning 2 bedroom 2 bathroom residence above one of the best hotels in Vancouver- The Private Residences at Hotel Georgia! Sweeping views of Coal Harbour east to Burnaby. Luxury hotel amenities including private fitness centre, with professional-caliber equipment by TechnoGym and Cybex. Early morning laps will be pure pleasure in the 52-foot indoor saltwater lap pool. There is also a professionally designed state-of-the-art video theatre, billiards room and exquisite boardroom. And of course round the clock concierge and security services are always available. Dark hardwood floors throughout, private master bedroom includes walk in closet gorgeous master bath with double sinks shower and bath, spacious second bedroom which faces east, North facing balcony. A/C and parking also included.', 'image3.png', NULL, 'Baxter Welch', 'welchb@example.com', '(567) 787-7867', 'image16.png', 'image8.png', 'image9.png', 'image4.png', 'image3.png', 'image7.png'),
(16, '2023-04-12 02:58:07', '2023-04-12 02:58:07', '1107 Richards Street', '4', 'Vancouver', 'V6B 3E1', 'Apartment', '3495', '1', '1', '650', '1107 Richards Street is an apartment for rent in Vancouver, BC. It has 1 unit. Units have 1 bedroom. Units have 1 bathroom. Water and heating are utilities included in the rent price.', 'image24.png', NULL, 'George Oudin', 'ouidg@example.com', '(767)768-8987', 'image14.png', 'image5.png', 'image21.png', 'image6.png', 'image15.png', 'image14.png'),
(17, '2023-04-12 03:02:33', '2023-04-12 03:02:33', '6252 6th Street', '5', 'Burnaby', 'V5E 3S4', 'Single Family Home', '4350', '3', '2', '1385', 'Welcome to your new home! This upper-level suite of a stunning 2-story home is full of natural light and located in a nice family-friendly neighborhood. The home has undergone extensive renovations 5 years ago, including new laminate flooring, fresh paint, and new window blinds throughout. This home is perfect for those who value space.', 'image22.png', NULL, 'Dave Juin', 'juindave@example.com', '(698) 656-8905', 'image23.png', 'image17.png', 'image20.png', 'image18.png', 'image11.png', 'image22.png'),
(18, '2023-04-12 03:18:17', '2023-04-12 03:18:17', 'McKay Avenue', '6635', 'Burnaby', 'V5H 2J3', 'Apartment', '2950', '2', '2', '1050', '6635 McKay Avenue is an apartment for rent in Burnaby, BC. It has 2 units. Units have 1 to 2 bedrooms. Units have 1 bathroom. Water and heating are utilities included in the rent price.\r\n\r\n* Lovely neighbourhood close to both Metrotown and Central Park\r\n* Shopping: Metrotown Mall, Crystal Mall, and Old Orchard Shopping Centre\r\n* Gyms: Bonsor Recreation Complex, Steve Nash, GoodLife, and Anytime Fitness\r\n* Grocery Stores: Superstore (with Joe Fresh), T&T Supermarket, PriceSmart, and Save-on-Foods. as well as many restaurants, coffee shops, pharmacies and banks all in easy walking distance\r\n* Resources/Activities: Burnaby Public Library, Central Park Pitch and Putt and Cineplex Cinemas\r\n* Parks: Central Park and Maywood Park\r\n* Schools: Marlborough Elementary School, Ecole Marlborough Elementary, Maywood Community School, Burnaby South Secondary, and more', 'image2.png', NULL, 'Patrice Leon', 'pleon@example.com', '(698) 676-9876', 'image10.png', 'image1.png', 'image13.png', 'image19.png', 'image12.png', 'image2.png'),
(19, '2023-04-12 03:32:40', '2023-04-12 03:32:40', 'BUSH Court', '33884', 'Mission', 'V2V 7S2', 'Single Family Home', '3500', '6', '3', '3450', 'This gorgeous renovated home (150K in upgrades) is situated in a quiet culdesc in the heart of Mission, BC.This home has been extensively renovated with plenty of room for the family! Boasting 6 bedrooms! 3 bedrooms on main level and an additional 3 bedrooms below. Below also has a Rec room, Full Washroom and Media Room with separate entrance. Double Garage with Ample Driveway pad parking for additional Vehicles. Beautiful spacious Deck off the kitchen over looking your low maintenance fenced Yard There is a separate dining area or office on the main level Dog Negotiable with deposit No smoking Tenant insurance references and credit review in force Available Now, One Year Lease, Tenant Pays Utilities', 'image21.png', NULL, 'George Lucas', 'lucasg@example.com', '(678) 879-0876', 'image15.png', 'image33.png', 'image25.png', 'image8.png', 'image23.png', 'image21.png'),
(20, '2023-04-12 03:37:06', '2023-04-12 03:37:06', 'Cade Barr Street', '8102', 'Mission', 'V2V 3Z5', 'Single Family Home', '2600', '3', '2', '2590', '8102 Cade Barr Street is a house for rent in Mission, BC. It has 1 unit. Units have 3 bedrooms. Units have 2 bathrooms.\r\n\r\nAvailable from March 1\r\n- 3 bedroom ,large living room\r\n- 2 full bathroom\r\n- fully equipped kitchen with gas Stove\r\n- Access to large backyard and sun deck\r\n- Wonderful neighborhood and quiet street\r\n-Lots of street parking in front of house', 'image17.png', NULL, 'Harry Brown', 'hbrown@example.com', '(678) 454-7865', 'image6.png', 'image35.png', 'image4.png', 'image7.png', 'image32.png', 'image17.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123@gmail.com', NULL, '$2y$10$ykTEl3lyZmB./TT6K9ApWuyyH1umLca8CpWhjfboOE4buGmgyOqIm', NULL, '2023-03-22 15:39:17', '2023-03-22 15:39:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
