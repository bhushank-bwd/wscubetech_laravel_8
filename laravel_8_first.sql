-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 12:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_8_first`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `address`, `city`, `state`, `dob`, `gender`, `status`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Name', 'email@gmailc.oc', '60ea48a2af30c5e2506cdeaf69e9d164', 'address', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:08:43', '2023-05-06 04:08:43', NULL),
(6, 'Name', 'email@gmailc.oc', '60ea48a2af30c5e2506cdeaf69e9d164', 'address', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:10:31', '2023-05-06 04:10:31', NULL),
(7, 'Dr. Jazmyne Bins', 'mrodriguez@predovic.com', 'eed3f802127f9ba5e968bad95627f30c', '5747 Arlo Mall\nWest Laurenport, AL 55917-3911', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:11:29', '2023-05-06 04:11:29', NULL),
(8, 'Sonia Lowe', 'ostrosin@hotmail.com', 'b90fd00744410b6bab68d22eb18678ea', '312 Kshlerin Stravenue Apt. 032\nSouth Floridahaven, IA 57246', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:14', '2023-05-06 04:12:14', NULL),
(9, 'Alfonso Lubowitz', 'rempel.terrence@yahoo.com', 'dd893e0e04a363dba423b05a33507203', '11916 Wolf Lock\nHannahton, PA 00788', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(10, 'Madelyn Breitenberg', 'kyler.okeefe@gmail.com', '960983873fd38c8eede714a897ddb0fa', '3860 Hilpert Mills Apt. 787\nNew Beth, AK 71409-3265', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(11, 'Garry Haley', 'jconn@bartoletti.net', '9f0b2f4304549afb9dcbf7d85c759449', '1235 Jessyca Terrace Suite 450\nCandicemouth, HI 78569-0564', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(12, 'Ashlee Sanford II', 'norwood.rogahn@considine.com', '49f7e64fb4f9d32c22f573205ea3ae6b', '3628 Bogan Mall\nFridahaven, IA 40537', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(13, 'Marques Smitham', 'cale32@mcdermott.org', 'a65e3d6d1f53b8e6d8bca758f89fe6bb', '933 Alva Passage\nPort Alfonzo, IL 33647-0532', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(14, 'Concepcion Medhurst', 'kuvalis.cullen@yahoo.com', '9015df9d92b5a7235f58680c13942400', '606 Feil Highway\nJerrodburgh, CA 14264', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(15, 'Mr. Nathaniel Koepp', 'hammes.georgette@yahoo.com', 'e5ca817571e825d60b9e56f5c4f5bbb8', '81030 Nikita Rest\nWest Lorine, WI 46073', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(16, 'Mrs. Anne Beer', 'koelpin.kelly@king.biz', '9d0bc117421a702289365d5ae9a71c12', '5418 Anais Manor Suite 456\nSouth Georgemouth, MO 77563', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(17, 'Mr. Daren Oberbrunner', 'boyer.janelle@harvey.com', '734df10e712724b9676c17e419e73a0b', '40420 Camren Extension\nWest Alyson, IN 23801-1777', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(18, 'Althea Funk', 'veum.ernestina@schowalter.net', 'a7e3c21c4de7c642aaaffe88228b0bf7', '565 August Crossing Suite 052\nBoganfurt, FL 51026-1935', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(19, 'Mr. Woodrow Hessel IV', 'lwalter@veum.info', '49f8206a4616030ac795a2d134bb1b9c', '539 Judd Crescent Suite 758\nWillmouth, RI 62721-4589', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(20, 'Ms. Ella Stoltenberg III', 'randal94@yahoo.com', '0b525b21eb7f1ade96e3f6dbeadca7da', '6514 Ines Mountains Apt. 453\nGoldnerton, CT 45538-7505', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(21, 'Dr. Adriel Ullrich', 'wilderman.jan@gmail.com', '0b4e1187a77db804a40c31f110fc869e', '260 Jaskolski View Suite 551\nLake Kelleyhaven, IL 66007-5994', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(22, 'Hazel Stanton', 'oswaldo18@hotmail.com', '18fabc887ceb3c39101992a916a211cd', '4456 Legros Gardens\nSouth Magnusmouth, IL 83304', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(23, 'Lelah Halvorson', 'tsauer@yahoo.com', 'd8c732ed2559098a6af68886de50eae0', '20038 Golda Pine\nTurcotteside, RI 29721-3899', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(24, 'Charley Bode', 'bschinner@stiedemann.biz', '50c3d8563b201b0c7a1f608a83aec46b', '5910 Morissette Turnpike Suite 475\nNorth Kaleigh, MT 09651', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(25, 'Mr. Ceasar Ondricka Sr.', 'derek29@labadie.com', 'b3006df9826c89956162c14352899abd', '519 Abernathy Common Apt. 229\nDawnland, OR 52837', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(26, 'Jack Reilly', 'efadel@gmail.com', '00d3a2a9f9fdb9980f2cb8d45f8ce777', '53831 Gerlach Squares\nWest Madysonville, WI 17861', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(27, 'Prof. Niko Cormier', 'vyost@hotmail.com', 'a1c0f7938943d8eb528f6c9a206388c2', '38197 Hardy Isle Apt. 280\nO\'Harafurt, TN 18080', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(28, 'Verona Oberbrunner Sr.', 'toby27@yahoo.com', 'b56e0a47dbd4f30d4d0693bd94049732', '8234 Major Forges Suite 574\nFadelville, MA 65628', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(29, 'Catharine Sanford', 'toy.britney@gmail.com', 'c305e0c14e2be7ccf7e751735c095e3e', '380 Bernhard Stream Suite 363\nLake Connorview, MI 16311-5956', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(30, 'Micah Fisher', 'shanahan.pamela@reichel.net', '85ea7dd68921fc19c56f3afad2aa4967', '559 Ramona Wells Suite 740\nNew Michelleburgh, GA 80058', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(31, 'Norwood Braun', 'aquitzon@nader.com', 'd1a5ae7912b3e9906ddc051d8b49f8d8', '715 Pacocha Rapid Apt. 988\nWest Jacinto, SC 89404', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(32, 'Lionel Kub', 'damian70@yahoo.com', '147dc18dd7a0469710bb532bbb9fe8dd', '40268 Angelo Brook\nNorth Karleefurt, MI 69987-6309', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(33, 'Prince Leffler', 'david.cummerata@mitchell.com', '7a7b0ab23ee3a9495f9cd0171f3a2e86', '67354 Lockman Freeway Apt. 629\nWest Madonna, NC 22504', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(34, 'Antonetta Ankunding', 'macy22@yahoo.com', 'e7add66cdf9db3f9c3ef4ade4aed7453', '426 Percy Crossing\nPort Chetfurt, MN 73992-7931', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(35, 'Alva Paucek MD', 'gleichner.elmo@yahoo.com', 'c514bd6460857b52298b52e33ec0f641', '64499 Jaskolski Cliff\nPort Rafael, SD 86706-2718', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(36, 'Mr. Lindsey Veum', 'labadie.kari@hotmail.com', '555fb002d0446ad97aa8bc8bc2ca3f98', '1081 Adolf Fork Apt. 790\nDickensberg, IN 44904-9245', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(37, 'Darien Prosacco', 'zmccullough@gmail.com', '027b04a5f6b38016586f1a140fb34ce4', '508 Johnson Fort Apt. 261\nKuphalbury, OH 10521-6034', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(38, 'Chasity Boyle', 'erdman.dave@vandervort.com', '1e965a40cf93c1261372c83477e2d0f5', '394 Streich Mount\nEast Katlynmouth, NC 98191-2911', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(39, 'Bud Reinger', 'batz.cecilia@larson.com', 'af289a8cfb53bfacb8ea3c54d4297c7e', '32346 Ernser Stravenue\nStiedemannfurt, LA 60161-7621', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(40, 'Forest Mante', 'zlemke@kihn.info', '3e0181b00d131bf31f3670b832715cb1', '8862 Berge View\nEast Jaylonport, MA 87986', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(41, 'Keanu Thompson', 'mcglynn.kaci@yahoo.com', 'ab74c4eca4c814555b2b4cd2da273359', '3963 Hermina Alley\nNewellmouth, NV 21263', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(42, 'Freida Fahey', 'billie10@yost.com', '6f30d650b7debc00798b2b1ac98e0e98', '7591 Blake Mountains Apt. 830\nMooreville, WY 64554', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(43, 'Prof. Burnice Schuster V', 'avery21@gmail.com', 'ab8c387c7ac29d4d4b448194a7753783', '535 Smith Inlet\nCorrinestad, AZ 83641-9324', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(44, 'Dr. Jo Considine DVM', 'zblanda@yahoo.com', '01136ff2b40f268a239f7865723fcf97', '431 Macejkovic Path\nReillyburgh, KY 93956', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(45, 'Pietro Lockman', 'atorp@yahoo.com', 'c492a04d5c5b5e62fb309c85b535a6c3', '83269 Jakob Skyway Suite 534\nSimonisview, TX 36922', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(46, 'Kendrick Goodwin', 'johnston.jess@labadie.com', '839bccad722340e34c6055d880c92a15', '281 Deshaun Ports\nKrystalburgh, NH 94191-4171', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(47, 'Horacio Wehner', 'anderson.jo@yahoo.com', '75d1fba273d0911e63bb62a9187fbc21', '5778 Harber Place Suite 996\nNorth Carmelo, TX 37611-4754', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(48, 'Norene Orn', 'viva76@gmail.com', '6f2804ad895375a678b0c23d206d6a97', '26916 Mertz Road Suite 615\nLake Cassidy, KY 86300-0016', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(49, 'Milan Aufderhar Jr.', 'alicia84@schuppe.org', '05eb184087734a93ec8a7fb79d81c622', '68863 Nicklaus Key Apt. 793\nWatsicaberg, TN 98695', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(50, 'Ona Grady III', 'karine.hermiston@gmail.com', '21d4f57dd171670793d30e38dcbfae26', '6565 Cale Shores\nLake Anabellestad, GA 71735', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(51, 'Rico O\'Connell', 'tstokes@gmail.com', 'd44b0eab6a995d3f55060e1a93f454ff', '5535 Larkin Extensions Suite 692\nNorth Isobelfurt, MD 42925-4281', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(52, 'Nina Littel', 'bashirian.mckenna@hotmail.com', '6827d8899fa7fd34bd01247a7114ccdd', '4372 Braun Groves\nErnserview, CT 21086-9349', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(53, 'Alexandria Spencer', 'vyundt@pouros.org', '96891315b8f6130122450663fcc8a164', '234 Wellington View Suite 560\nWest Lauriannemouth, CO 51621', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(54, 'Eula Mertz', 'llakin@yahoo.com', '7ff0b79b4af72c8537e9d1f9df9ebae1', '2083 Hilpert Turnpike Suite 641\nDextertown, CO 32040-7120', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(55, 'Jarrod Windler', 'yokon@gmail.com', '226fb3a35d68a587b558ed9b3f8e033c', '72678 Chandler Drive\nSouth Ayden, KY 35946', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(56, 'Rebecca Gislason', 'witting.jerry@parisian.com', '2e0f24c359195f403ca9b1c1dc2898c4', '580 Pasquale Route Suite 999\nSchadenstad, DE 10278', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(57, 'Mrs. Joannie Olson', 'werner86@reynolds.com', 'a05324e9be82e73e10b7a65865b17b84', '5425 Rath Turnpike\nCasimirmouth, CT 71400', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(58, 'Mr. Bud Tromp I', 'eve50@reichel.info', '3dbbe557e45c94b35d86f9c10c90e859', '853 Eliseo Dam Apt. 727\nBridieville, VA 05951-1195', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(59, 'Destiney Kovacek', 'froberts@waters.com', '07ac6deee0179289860730242aae6019', '35693 White Trail Suite 564\nLubowitzfort, AZ 52713', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(60, 'Dr. Mona Cruickshank', 'octavia.sporer@trantow.org', '6b9f39972a8697c861d130142b71b35a', '6451 Hickle Mills Apt. 250\nMurphybury, MT 45775', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(61, 'Kaela Kerluke', 'sabryna.schiller@hotmail.com', 'd1a78d453b8d9b7be1a4f02adb5bda0e', '597 Willow Inlet Suite 881\nWest Johnnie, AZ 60729-2965', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(62, 'Adeline Mertz', 'jmurphy@gmail.com', '8cb38e59144e31ea4d9960d76d20979b', '426 Quitzon Unions\nLake Harry, TX 47774', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(63, 'Beth Hudson', 'rae01@yahoo.com', '27180e97c292c2fa53108e05c1675681', '3082 Hal Cove\nPort Rosalia, MN 38878', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(64, 'Columbus Kuhn', 'stehr.trevor@jerde.net', '2c82a537a9bed6faa8e8c32c363a866e', '6672 Irving Drive\nEast Armand, HI 48019-5156', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(65, 'Sammy Walsh', 'althea.vandervort@hotmail.com', 'a1d5e71762efff14a3cb66fd05a13af9', '68670 Ursula Manor\nSouth Daijamouth, LA 27077-1107', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(66, 'Maeve Lesch', 'donnelly.molly@yahoo.com', '00bb1b29b3113d2972d3a65ffe62da8c', '539 Goldner Forges\nLake Dellaside, KY 87892', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(67, 'Brenden Corkery V', 'hayes.celine@hotmail.com', '9decf2cb7e9d36fa5a77aa2d36967675', '9631 Isai Alley\nAntoniaside, WY 00483', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(68, 'Dr. Keanu Dibbert', 'hill.salvatore@fay.info', 'f82ffd584247187a5253897c48ba2056', '649 Cleveland Mountain\nSunnystad, NV 40464-3283', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(69, 'Prof. Sheridan Trantow', 'quitzon.soledad@gmail.com', '1009104650ec5a5c36b91c3372f0d809', '12188 Madge Stravenue\nOrnport, VT 34143-2529', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(70, 'Kirk Vandervort', 'braxton.bruen@crist.net', '0c7b1c46ad7ac4166f0affae09615e00', '18914 Feil Garden Suite 972\nNew Virgil, VA 43206', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(71, 'Kailey Langworth', 'feeney.ashlee@christiansen.com', 'cff49170dfe94d246807ba1477c6384e', '93159 Breanna Hill Suite 242\nKlockoside, NJ 44262-0319', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(72, 'Benton Macejkovic', 'dibbert.jazlyn@prosacco.org', 'a8d9ab47ab1317429b95ca681bc70c70', '4296 Beier Station\nKrajciktown, AK 49411-1349', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(73, 'Jarrett Wyman', 'orland.mitchell@gusikowski.com', 'ba5b1c457888b6bfec99a647ea4686a1', '11929 Gust Roads\nNew Kristophermouth, CT 78479', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(74, 'Allen Grady', 'eino.abernathy@hotmail.com', 'a36134a8bfd4b87ece60b9c2fa8caeef', '751 Francesca Wells\nWest Cleve, ID 11969-0389', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(75, 'Ottis O\'Connell', 'kenneth.ortiz@grant.com', '3eb41b5b3472db20baf00bb3535335b5', '9479 Hessel Union Suite 218\nNorth Suzannefort, ND 65835', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(76, 'Christ Ullrich V', 'flo04@gmail.com', '67632999c1ea8c918cb2ada72dab57f4', '76044 Camila Cape Apt. 387\nMullerland, RI 66559', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(77, 'Gabe Lockman', 'camille14@hilpert.com', '6cc9e96ff1a9b3bb960979583211ea0a', '1667 Evert Plaza\nPort Cathrineside, DE 62386', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:55', '2023-05-06 04:12:55', NULL),
(78, 'Mrs. Nedra Bogisich', 'jkassulke@schneider.com', '047a66a5839700709116a70ab411a77f', '21394 Goyette Creek\nTremblaymouth, KY 09143-8014', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(79, 'Athena Pagac', 'stehr.tomas@doyle.com', '84764228aeaecbf9eabcd8be6a73ebfb', '62798 Zemlak Course\nLake Brayanborough, ND 20243', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(80, 'Prof. Josianne Kuhlman PhD', 'teagan.veum@hotmail.com', '2c054fec8beeda301e24cb46eb565179', '9180 Tito Corner\nWalkerview, IN 81221-2654', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(81, 'Dr. Euna Hane', 'qwatsica@adams.com', 'cdf3efd5c2f9e1df849e67df8da7042f', '54323 Name Pine Apt. 497\nSouth Flavie, HI 10116', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(82, 'Mrs. Henriette Goyette PhD', 'adella00@nolan.biz', '82a32fc1712be912c2ffc226a64c6132', '320 Desiree Stravenue\nAllenville, NH 72110', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(83, 'Prof. Tressa Yost', 'marina17@veum.net', 'e829e623a9eb5814092ced52cfe9f7f2', '5788 Schamberger Motorway Suite 963\nCarolinaborough, MA 85867', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(84, 'Herman Watsica V', 'doyle.haven@ruecker.biz', '36d8d85c412f66835de90f18d473c565', '392 Shields Gateway Suite 412\nNew Emilianofort, MA 04618-6347', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(85, 'Prof. Angelo Shields', 'grimes.elfrieda@gmail.com', 'a554a0230be8baf66dea1ac2a18dc4b0', '985 Reymundo Heights\nNorth Miguelland, KY 70689-2777', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(86, 'Prof. Carol Batz V', 'runolfsson.bethel@bartoletti.org', 'e27c5990b1e73e7071e35e0ef76bdc36', '39502 Jane Fords Suite 316\nDarefurt, MD 85418-5598', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(87, 'Florencio Spinka', 'hyatt.jackie@waelchi.net', '91acbaad6dcec9e8b1aefea48b4a87c3', '2841 Beer Station Suite 824\nZelmatown, IA 41228-2744', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(88, 'Carli Pouros Jr.', 'bauch.maia@bayer.org', 'ba75eb9b92c7a648fe3a7a9bc52a125b', '68616 Albin Ford Suite 694\nKelvinberg, WV 01575-4053', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(89, 'Crawford Nienow', 'sklein@prohaska.com', '1a8e2969e0c9708765fae6ff3f602ecb', '763 Jeramie Plains\nRitchiefort, FL 61009', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(90, 'London Stoltenberg', 'ada57@gmail.com', '3859eed74df0d30b2d16260bd84557d0', '862 Witting Knoll\nEast Bernardo, WY 90037-4272', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(91, 'Mr. Edwardo Tremblay Jr.', 'swift.audrey@nikolaus.info', '69d1efc471c8fa3bf340bba33e1be7a1', '240 Kaleigh Common\nWest Marilyne, AR 21590-3199', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(92, 'Shemar McCullough', 'thompson.carmel@gmail.com', '0a815f38d9dd17e4bc807f3d3edf5fbb', '9599 Darren Radial\nHaneton, SC 02650-9532', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(93, 'Aurelio Feest', 'gnolan@yahoo.com', 'd84c2b0be130c85a8ab0d6e1f23a2fac', '212 Grimes Fort\nBessieborough, MN 64082-9534', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(94, 'Mr. Carol Beer', 'kschamberger@stracke.com', 'c9f5d3a679233524e8489f3354c6460c', '32659 Barton Port\nLake Lolita, NV 31688', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(95, 'Aleen Ernser III', 'pbrakus@gmail.com', '4529f5b802d9d18805fab0b0b8c278c5', '187 Issac Land\nHowellshire, WA 16179', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(96, 'Tyrell Koelpin', 'annie55@hotmail.com', '78785f34ca7692d9a384168d9f76c2e9', '485 Ignacio Garden\nWest Norval, CO 41644-7870', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(97, 'Prof. Minnie Koch', 'iva.walker@predovic.com', '0099d4041a489d47eb40c1f90d274b07', '3643 Sanford Union Apt. 187\nSuzannefort, MA 66749-1564', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(98, 'Karlee Volkman', 'wroob@hotmail.com', '79ba61d162d110553c771cd156d34a40', '4837 Schinner Trail Suite 903\nAnkundingberg, IL 29142', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(99, 'Ms. Britney Gleichner DVM', 'dietrich.aleen@heller.com', '2b62a92675014a2d6a070fa775ed15e8', '2148 Teresa Square Apt. 842\nLangworthbury, CA 65705-0805', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(100, 'Miss Lydia Grant IV', 'brad71@feest.com', 'bbe2a95c7c0180dfb134b848b4be709e', '1233 Cindy Run Apt. 456\nEast Josefahaven, UT 80664-8860', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(101, 'Kaci Jerde', 'hoppe.estrella@hotmail.com', 'a5e21da83e79a9d913666a3acf024b67', '6235 Muller Fork\nLake Keyshawn, MI 28581-5007', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(102, 'Dr. Johanna Kihn', 'steuber.hope@gmail.com', '01d960f0bdecfd0fbb22c55e284200d1', '97991 Fadel Pass\nWest Agustina, PA 90479-3297', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(103, 'Leopold Murazik', 'medhurst.christina@boehm.net', 'c34d439819f718cd0622680b13e88f9f', '715 Everett Square Apt. 434\nWymanborough, HI 32191-1531', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(104, 'Liliana Jerde', 'rath.hanna@brown.com', 'a5a12594a2b7c643705037624fb0e63c', '15332 Maxwell Court Suite 950\nRoderickmouth, IA 81976', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(105, 'Miss Reta Doyle', 'sylvia16@gmail.com', 'df385fefcd25caafcf3de5caa6a175ad', '71603 Kozey Ridge\nBalistreriburgh, MN 65504', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(106, 'Vicky Simonis', 'xwalker@volkman.com', '9313ff60a552b6ae157c33b02f0afb49', '1121 Blick Plains\nWest Aubreymouth, NJ 46924', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(107, 'Ilene Raynor', 'wmacejkovic@hotmail.com', 'b99e7f4048a5b29921969db5f234de00', '793 Gusikowski Forge Apt. 195\nEast Makenzie, NH 52153', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL),
(108, 'Berniece Walsh', 'walker.jennyfer@skiles.com', 'c4d475bbb606449de858114578d4ec30', '683 Sydnee Summit Suite 558\nEast Carolynfurt, HI 15149', NULL, NULL, NULL, NULL, 1, 0, '2023-05-06 04:12:56', '2023-05-06 04:12:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'sdklhaskudghaskjhfkaesf', NULL, NULL),
(2, 'Name 2', 'desc 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `name`, `email`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'M1', 'M1@gmail.com', 1, NULL, NULL),
(2, 'M2', 'M2@gmail.com', 2, NULL, NULL),
(3, 'M3', 'M3@gmail.com', 1, NULL, NULL),
(4, 'M4', 'M4@gmail.com', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_23_051325_create_customers_table', 1),
(6, '2023_04_23_052856_add_columns_to_customers_table', 1),
(7, '2023_04_23_054442_create_products_table', 1),
(8, '2023_05_03_035808_add_deleted_at_to_customers_table', 2),
(9, '2023_05_19_075255_create_groups_table', 3),
(10, '2023_05_19_075511_create_members_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `members_group_id_foreign` (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
