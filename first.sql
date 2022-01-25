-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2022 at 03:27 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryID` int NOT NULL,
  `CountryCode` varchar(15) NOT NULL,
  `CountryName` varchar(255) NOT NULL,
  `NiceName` text,
  `PhoneCode` text,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountryID`, `CountryCode`, `CountryName`, `NiceName`, `PhoneCode`, `Status`, `CreatedAt`) VALUES
(1, 'AF', 'Afghanistan', 'Afghanistan', '93', 'Active', '2021-02-26 09:58:16'),
(2, 'AL', 'Albania', 'Albania', '355', 'Active', '2021-02-26 09:58:16'),
(3, 'DZ', 'Algeria', 'Algeria', '213', 'Active', '2021-02-26 09:58:16'),
(4, 'AS', 'American Samoa', 'American Samoa', '1684', 'Active', '2021-02-26 09:58:16'),
(5, 'AD', 'Andorra', 'Andorra', '376', 'Active', '2021-02-26 09:58:16'),
(6, 'AO', 'Angola', 'Angola', '244', 'Active', '2021-02-26 09:58:16'),
(7, 'AI', 'Anguilla', 'Anguilla', '1264', 'Active', '2021-02-26 09:58:16'),
(8, 'AQ', 'Antarctica', 'Antarctica', '1025', 'Active', '2021-02-26 09:58:16'),
(9, 'AG', 'Antigua And Barbuda', 'Antigua And Barbuda', '1268', 'Active', '2021-02-26 09:58:16'),
(10, 'AR', 'Argentina', 'Argentina', '54', 'Active', '2021-02-26 09:58:16'),
(11, 'AM', 'Armenia', 'Armenia', '374', 'Active', '2021-02-26 09:58:16'),
(12, 'AW', 'Aruba', 'Aruba', '297', 'Active', '2021-02-26 09:58:16'),
(13, 'AU', 'Australia', 'Australia', '61', 'Active', '2021-02-26 09:58:16'),
(14, 'AT', 'Austria', 'Austria', '43', 'Active', '2021-02-26 09:58:16'),
(15, 'AZ', 'Azerbaijan', 'Azerbaijan', '994', 'Active', '2021-02-26 09:58:16'),
(16, 'BS', 'Bahamas The', 'Bahamas The', '1242', 'Active', '2021-02-26 09:58:16'),
(17, 'BH', 'Bahrain', 'Bahrain', '973', 'Active', '2021-02-26 09:58:16'),
(18, 'BD', 'Bangladesh', 'Bangladesh', '880', 'Active', '2021-02-26 09:58:16'),
(19, 'BB', 'Barbados', 'Barbados', '1246', 'Active', '2021-02-26 09:58:16'),
(20, 'BY', 'Belarus', 'Belarus', '375', 'Active', '2021-02-26 09:58:16'),
(21, 'BE', 'Belgium', 'Belgium', '32', 'Active', '2021-02-26 09:58:16'),
(22, 'BZ', 'Belize', 'Belize', '501', 'Active', '2021-02-26 09:58:16'),
(23, 'BJ', 'Benin', 'Benin', '229', 'Active', '2021-02-26 09:58:16'),
(24, 'BM', 'Bermuda', 'Bermuda', '1441', 'Active', '2021-02-26 09:58:16'),
(25, 'BT', 'Bhutan', 'Bhutan', '975', 'Active', '2021-02-26 09:58:16'),
(26, 'BO', 'Bolivia', 'Bolivia', '591', 'Active', '2021-02-26 09:58:16'),
(27, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '387', 'Active', '2021-02-26 09:58:16'),
(28, 'BW', 'Botswana', 'Botswana', '267', 'Active', '2021-02-26 09:58:16'),
(29, 'BV', 'Bouvet Island', 'Bouvet Island', '0', 'Active', '2021-02-26 09:58:16'),
(30, 'BR', 'Brazil', 'Brazil', '55', 'Active', '2021-02-26 09:58:16'),
(31, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '246', 'Active', '2021-02-26 09:58:16'),
(32, 'BN', 'Brunei', 'Brunei', '673', 'Active', '2021-02-26 09:58:16'),
(33, 'BG', 'Bulgaria', 'Bulgaria', '359', 'Active', '2021-02-26 09:58:16'),
(34, 'BF', 'Burkina Faso', 'Burkina Faso', '226', 'Active', '2021-02-26 09:58:16'),
(35, 'BI', 'Burundi', 'Burundi', '257', 'Active', '2021-02-26 09:58:16'),
(36, 'KH', 'Cambodia', 'Cambodia', '855', 'Active', '2021-02-26 09:58:16'),
(37, 'CM', 'Cameroon', 'Cameroon', '237', 'Active', '2021-02-26 09:58:16'),
(38, 'CA', 'Canada', 'Canada', '1', 'Active', '2021-02-26 09:58:16'),
(39, 'CV', 'Cape Verde', 'Cape Verde', '238', 'Active', '2021-02-26 09:58:16'),
(40, 'KY', 'Cayman Islands', 'Cayman Islands', '1345', 'Active', '2021-02-26 09:58:16'),
(41, 'CF', 'Central African Republic', 'Central African Republic', '236', 'Active', '2021-02-26 09:58:16'),
(42, 'TD', 'Chad', 'Chad', '235', 'Active', '2021-02-26 09:58:16'),
(43, 'CL', 'Chile', 'Chile', '56', 'Active', '2021-02-26 09:58:16'),
(44, 'CN', 'China', 'China', '86', 'Active', '2021-02-26 09:58:16'),
(45, 'CX', 'Christmas Island', 'Christmas Island', '61', 'Active', '2021-02-26 09:58:16'),
(46, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', '672', 'Active', '2021-02-26 09:58:16'),
(47, 'CO', 'Colombia', 'Colombia', '57', 'Active', '2021-02-26 09:58:16'),
(48, 'KM', 'Comoros', 'Comoros', '269', 'Active', '2021-02-26 09:58:16'),
(49, 'CG', 'Republic Of The Congo', 'Republic Of The Congo', '242', 'Active', '2021-02-26 09:58:16'),
(50, 'CD', 'Democratic Republic Of The Congo', 'Democratic Republic Of The Congo', '242', 'Active', '2021-02-26 09:58:16'),
(51, 'CK', 'Cook Islands', 'Cook Islands', '682', 'Active', '2021-02-26 09:58:16'),
(52, 'CR', 'Costa Rica', 'Costa Rica', '506', 'Active', '2021-02-26 09:58:16'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 'Cote D\'Ivoire (Ivory Coast)', '225', 'Active', '2021-02-26 09:58:16'),
(54, 'HR', 'Croatia (Hrvatska)', 'Croatia (Hrvatska)', '385', 'Active', '2021-02-26 09:58:16'),
(55, 'CU', 'Cuba', 'Cuba', '53', 'Active', '2021-02-26 09:58:16'),
(56, 'CY', 'Cyprus', 'Cyprus', '357', 'Active', '2021-02-26 09:58:16'),
(57, 'CZ', 'Czech Republic', 'Czech Republic', '420', 'Active', '2021-02-26 09:58:16'),
(58, 'DK', 'Denmark', 'Denmark', '45', 'Active', '2021-02-26 09:58:16'),
(59, 'DJ', 'Djibouti', 'Djibouti', '253', 'Active', '2021-02-26 09:58:16'),
(60, 'DM', 'Dominica', 'Dominica', '1767', 'Active', '2021-02-26 09:58:16'),
(61, 'DO', 'Dominican Republic', 'Dominican Republic', '1809', 'Active', '2021-02-26 09:58:16'),
(62, 'TP', 'East Timor', 'East Timor', '670', 'Active', '2021-02-26 09:58:16'),
(63, 'EC', 'Ecuador', 'Ecuador', '593', 'Active', '2021-02-26 09:58:16'),
(64, 'EG', 'Egypt', 'Egypt', '20', 'Active', '2021-02-26 09:58:16'),
(65, 'SV', 'El Salvador', 'El Salvador', '503', 'Active', '2021-02-26 09:58:16'),
(66, 'GQ', 'Equatorial Guinea', 'Equatorial Guinea', '240', 'Active', '2021-02-26 09:58:16'),
(67, 'ER', 'Eritrea', 'Eritrea', '291', 'Active', '2021-02-26 09:58:16'),
(68, 'EE', 'Estonia', 'Estonia', '372', 'Active', '2021-02-26 09:58:16'),
(69, 'ET', 'Ethiopia', 'Ethiopia', '251', 'Active', '2021-02-26 09:58:16'),
(70, 'XA', 'External Territories of Australia', 'External Territories of Australia', '61', 'Active', '2021-02-26 09:58:16'),
(71, 'FK', 'Falkland Islands', 'Falkland Islands', '500', 'Active', '2021-02-26 09:58:16'),
(72, 'FO', 'Faroe Islands', 'Faroe Islands', '298', 'Active', '2021-02-26 09:58:16'),
(73, 'FJ', 'Fiji Islands', 'Fiji Islands', '679', 'Active', '2021-02-26 09:58:16'),
(74, 'FI', 'Finland', 'Finland', '358', 'Active', '2021-02-26 09:58:16'),
(75, 'FR', 'France', 'France', '33', 'Active', '2021-02-26 09:58:16'),
(76, 'GF', 'French Guiana', 'French Guiana', '594', 'Active', '2021-02-26 09:58:16'),
(77, 'PF', 'French Polynesia', 'French Polynesia', '689', 'Active', '2021-02-26 09:58:16'),
(78, 'TF', 'French Southern Territories', 'French Southern Territories', '0', 'Active', '2021-02-26 09:58:16'),
(79, 'GA', 'Gabon', 'Gabon', '241', 'Active', '2021-02-26 09:58:16'),
(80, 'GM', 'Gambia The', 'Gambia The', '220', 'Active', '2021-02-26 09:58:16'),
(81, 'GE', 'Georgia', 'Georgia', '995', 'Active', '2021-02-26 09:58:16'),
(82, 'DE', 'Germany', 'Germany', '49', 'Active', '2021-02-26 09:58:16'),
(83, 'GH', 'Ghana', 'Ghana', '233', 'Active', '2021-02-26 09:58:16'),
(84, 'GI', 'Gibraltar', 'Gibraltar', '350', 'Active', '2021-02-26 09:58:16'),
(85, 'GR', 'Greece', 'Greece', '30', 'Active', '2021-02-26 09:58:16'),
(86, 'GL', 'Greenland', 'Greenland', '299', 'Active', '2021-02-26 09:58:16'),
(87, 'GD', 'Grenada', 'Grenada', '1473', 'Active', '2021-02-26 09:58:16'),
(88, 'GP', 'Guadeloupe', 'Guadeloupe', '590', 'Active', '2021-02-26 09:58:16'),
(89, 'GU', 'Guam', 'Guam', '1671', 'Active', '2021-02-26 09:58:16'),
(90, 'GT', 'Guatemala', 'Guatemala', '502', 'Active', '2021-02-26 09:58:16'),
(91, 'XU', 'Guernsey and Alderney', 'Guernsey and Alderney', '44', 'Active', '2021-02-26 09:58:16'),
(92, 'GN', 'Guinea', 'Guinea', '224', 'Active', '2021-02-26 09:58:16'),
(93, 'GW', 'Guinea-Bissau', 'Guinea-Bissau', '245', 'Active', '2021-02-26 09:58:16'),
(94, 'GY', 'Guyana', 'Guyana', '592', 'Active', '2021-02-26 09:58:16'),
(95, 'HT', 'Haiti', 'Haiti', '509', 'Active', '2021-02-26 09:58:16'),
(96, 'HM', 'Heard and McDonald Islands', 'Heard and McDonald Islands', '0', 'Active', '2021-02-26 09:58:16'),
(97, 'HN', 'Honduras', 'Honduras', '504', 'Active', '2021-02-26 09:58:16'),
(98, 'HK', 'Hong Kong S.A.R.', 'Hong Kong S.A.R.', '852', 'Active', '2021-02-26 09:58:16'),
(99, 'HU', 'Hungary', 'Hungary', '36', 'Active', '2021-02-26 09:58:16'),
(100, 'IS', 'Iceland', 'Iceland', '354', 'Active', '2021-02-26 09:58:16'),
(101, 'IN', 'India', 'India', '91', 'Active', '2021-02-26 09:58:16'),
(102, 'ID', 'Indonesia', 'Indonesia', '62', 'Active', '2021-02-26 09:58:16'),
(103, 'IR', 'Iran', 'Iran', '98', 'Active', '2021-02-26 09:58:16'),
(104, 'IQ', 'Iraq', 'Iraq', '964', 'Active', '2021-02-26 09:58:16'),
(105, 'IE', 'Ireland', 'Ireland', '353', 'Active', '2021-02-26 09:58:16'),
(106, 'IL', 'Israel', 'Israel', '972', 'Active', '2021-02-26 09:58:16'),
(107, 'IT', 'Italy', 'Italy', '39', 'Active', '2021-02-26 09:58:16'),
(108, 'JM', 'Jamaica', 'Jamaica', '1876', 'Active', '2021-02-26 09:58:16'),
(109, 'JP', 'Japan', 'Japan', '81', 'Active', '2021-02-26 09:58:16'),
(110, 'XJ', 'Jersey', 'Jersey', '44', 'Active', '2021-02-26 09:58:16'),
(111, 'JO', 'Jordan', 'Jordan', '962', 'Active', '2021-02-26 09:58:16'),
(112, 'KZ', 'Kazakhstan', 'Kazakhstan', '7', 'Active', '2021-02-26 09:58:16'),
(113, 'KE', 'Kenya', 'Kenya', '254', 'Active', '2021-02-26 09:58:16'),
(114, 'KI', 'Kiribati', 'Kiribati', '686', 'Active', '2021-02-26 09:58:16'),
(115, 'KP', 'Korea North', 'Korea North', '850', 'Active', '2021-02-26 09:58:16'),
(116, 'KR', 'Korea South', 'Korea South', '82', 'Active', '2021-02-26 09:58:16'),
(117, 'KW', 'Kuwait', 'Kuwait', '965', 'Active', '2021-02-26 09:58:16'),
(118, 'KG', 'Kyrgyzstan', 'Kyrgyzstan', '996', 'Active', '2021-02-26 09:58:16'),
(119, 'LA', 'Laos', 'Laos', '856', 'Active', '2021-02-26 09:58:16'),
(120, 'LV', 'Latvia', 'Latvia', '371', 'Active', '2021-02-26 09:58:16'),
(121, 'LB', 'Lebanon', 'Lebanon', '961', 'Active', '2021-02-26 09:58:16'),
(122, 'LS', 'Lesotho', 'Lesotho', '266', 'Active', '2021-02-26 09:58:16'),
(123, 'LR', 'Liberia', 'Liberia', '231', 'Active', '2021-02-26 09:58:16'),
(124, 'LY', 'Libya', 'Libya', '218', 'Active', '2021-02-26 09:58:16'),
(125, 'LI', 'Liechtenstein', 'Liechtenstein', '423', 'Active', '2021-02-26 09:58:16'),
(126, 'LT', 'Lithuania', 'Lithuania', '370', 'Active', '2021-02-26 09:58:16'),
(127, 'LU', 'Luxembourg', 'Luxembourg', '352', 'Active', '2021-02-26 09:58:16'),
(128, 'MO', 'Macau S.A.R.', 'Macau S.A.R.', '853', 'Active', '2021-02-26 09:58:16'),
(129, 'MK', 'Macedonia', 'Macedonia', '389', 'Active', '2021-02-26 09:58:16'),
(130, 'MG', 'Madagascar', 'Madagascar', '261', 'Active', '2021-02-26 09:58:16'),
(131, 'MW', 'Malawi', 'Malawi', '265', 'Active', '2021-02-26 09:58:16'),
(132, 'MY', 'Malaysia', 'Malaysia', '60', 'Active', '2021-02-26 09:58:16'),
(133, 'MV', 'Maldives', 'Maldives', '960', 'Active', '2021-02-26 09:58:16'),
(134, 'ML', 'Mali', 'Mali', '223', 'Active', '2021-02-26 09:58:16'),
(135, 'MT', 'Malta', 'Malta', '356', 'Active', '2021-02-26 09:58:16'),
(136, 'XM', 'Man (Isle of)', 'Man (Isle of)', '44', 'Active', '2021-02-26 09:58:16'),
(137, 'MH', 'Marshall Islands', 'Marshall Islands', '692', 'Active', '2021-02-26 09:58:16'),
(138, 'MQ', 'Martinique', 'Martinique', '596', 'Active', '2021-02-26 09:58:16'),
(139, 'MR', 'Mauritania', 'Mauritania', '222', 'Active', '2021-02-26 09:58:16'),
(140, 'MU', 'Mauritius', 'Mauritius', '230', 'Active', '2021-02-26 09:58:16'),
(141, 'YT', 'Mayotte', 'Mayotte', '269', 'Active', '2021-02-26 09:58:16'),
(142, 'MX', 'Mexico', 'Mexico', '52', 'Active', '2021-02-26 09:58:16'),
(143, 'FM', 'Micronesia', 'Micronesia', '691', 'Active', '2021-02-26 09:58:16'),
(144, 'MD', 'Moldova', 'Moldova', '373', 'Active', '2021-02-26 09:58:16'),
(145, 'MC', 'Monaco', 'Monaco', '377', 'Active', '2021-02-26 09:58:16'),
(146, 'MN', 'Mongolia', 'Mongolia', '976', 'Active', '2021-02-26 09:58:16'),
(147, 'MS', 'Montserrat', 'Montserrat', '1664', 'Active', '2021-02-26 09:58:16'),
(148, 'MA', 'Morocco', 'Morocco', '212', 'Active', '2021-02-26 09:58:16'),
(149, 'MZ', 'Mozambique', 'Mozambique', '258', 'Active', '2021-02-26 09:58:16'),
(150, 'MM', 'Myanmar', 'Myanmar', '95', 'Active', '2021-02-26 09:58:16'),
(151, 'NA', 'Namibia', 'Namibia', '264', 'Active', '2021-02-26 09:58:16'),
(152, 'NR', 'Nauru', 'Nauru', '674', 'Active', '2021-02-26 09:58:16'),
(153, 'NP', 'Nepal', 'Nepal', '977', 'Active', '2021-02-26 09:58:16'),
(154, 'AN', 'Netherlands Antilles', 'Netherlands Antilles', '599', 'Active', '2021-02-26 09:58:16'),
(155, 'NL', 'Netherlands The', 'Netherlands The', '31', 'Active', '2021-02-26 09:58:16'),
(156, 'NC', 'New Caledonia', 'New Caledonia', '687', 'Active', '2021-02-26 09:58:16'),
(157, 'NZ', 'New Zealand', 'New Zealand', '64', 'Active', '2021-02-26 09:58:16'),
(158, 'NI', 'Nicaragua', 'Nicaragua', '505', 'Active', '2021-02-26 09:58:16'),
(159, 'NE', 'Niger', 'Niger', '227', 'Active', '2021-02-26 09:58:16'),
(160, 'NG', 'Nigeria', 'Nigeria', '234', 'Active', '2021-02-26 09:58:16'),
(161, 'NU', 'Niue', 'Niue', '683', 'Active', '2021-02-26 09:58:16'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', '672', 'Active', '2021-02-26 09:58:16'),
(163, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', '1670', 'Active', '2021-02-26 09:58:16'),
(164, 'NO', 'Norway', 'Norway', '47', 'Active', '2021-02-26 09:58:16'),
(165, 'OM', 'Oman', 'Oman', '968', 'Active', '2021-02-26 09:58:16'),
(166, 'PK', 'Pakistan', 'Pakistan', '92', 'Active', '2021-02-26 09:58:16'),
(167, 'PW', 'Palau', 'Palau', '680', 'Active', '2021-02-26 09:58:16'),
(168, 'PS', 'Palestinian Territory Occupied', 'Palestinian Territory Occupied', '970', 'Active', '2021-02-26 09:58:16'),
(169, 'PA', 'Panama', 'Panama', '507', 'Active', '2021-02-26 09:58:16'),
(170, 'PG', 'Papua new Guinea', 'Papua new Guinea', '675', 'Active', '2021-02-26 09:58:16'),
(171, 'PY', 'Paraguay', 'Paraguay', '595', 'Active', '2021-02-26 09:58:16'),
(172, 'PE', 'Peru', 'Peru', '51', 'Active', '2021-02-26 09:58:16'),
(173, 'PH', 'Philippines', 'Philippines', '63', 'Active', '2021-02-26 09:58:16'),
(174, 'PN', 'Pitcairn Island', 'Pitcairn Island', '0', 'Active', '2021-02-26 09:58:16'),
(175, 'PL', 'Poland', 'Poland', '48', 'Active', '2021-02-26 09:58:16'),
(176, 'PT', 'Portugal', 'Portugal', '351', 'Active', '2021-02-26 09:58:16'),
(177, 'PR', 'Puerto Rico', 'Puerto Rico', '1787', 'Active', '2021-02-26 09:58:16'),
(178, 'QA', 'Qatar', 'Qatar', '974', 'Active', '2021-02-26 09:58:16'),
(179, 'RE', 'Reunion', 'Reunion', '262', 'Active', '2021-02-26 09:58:16'),
(180, 'RO', 'Romania', 'Romania', '40', 'Active', '2021-02-26 09:58:16'),
(181, 'RU', 'Russia', 'Russia', '70', 'Active', '2021-02-26 09:58:16'),
(182, 'RW', 'Rwanda', 'Rwanda', '250', 'Active', '2021-02-26 09:58:16'),
(183, 'SH', 'Saint Helena', 'Saint Helena', '290', 'Active', '2021-02-26 09:58:16'),
(184, 'KN', 'Saint Kitts And Nevis', 'Saint Kitts And Nevis', '1869', 'Active', '2021-02-26 09:58:16'),
(185, 'LC', 'Saint Lucia', 'Saint Lucia', '1758', 'Active', '2021-02-26 09:58:16'),
(186, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', '508', 'Active', '2021-02-26 09:58:16'),
(187, 'VC', 'Saint Vincent And The Grenadines', 'Saint Vincent And The Grenadines', '1784', 'Active', '2021-02-26 09:58:16'),
(188, 'WS', 'Samoa', 'Samoa', '684', 'Active', '2021-02-26 09:58:16'),
(189, 'SM', 'San Marino', 'San Marino', '378', 'Active', '2021-02-26 09:58:16'),
(190, 'ST', 'Sao Tome and Principe', 'Sao Tome and Principe', '239', 'Active', '2021-02-26 09:58:16'),
(191, 'SA', 'Saudi Arabia', 'Saudi Arabia', '966', 'Active', '2021-02-26 09:58:16'),
(192, 'SN', 'Senegal', 'Senegal', '221', 'Active', '2021-02-26 09:58:16'),
(193, 'RS', 'Serbia', 'Serbia', '381', 'Active', '2021-02-26 09:58:16'),
(194, 'SC', 'Seychelles', 'Seychelles', '248', 'Active', '2021-02-26 09:58:16'),
(195, 'SL', 'Sierra Leone', 'Sierra Leone', '232', 'Active', '2021-02-26 09:58:16'),
(196, 'SG', 'Singapore', 'Singapore', '65', 'Active', '2021-02-26 09:58:16'),
(197, 'SK', 'Slovakia', 'Slovakia', '421', 'Active', '2021-02-26 09:58:16'),
(198, 'SI', 'Slovenia', 'Slovenia', '386', 'Active', '2021-02-26 09:58:16'),
(199, 'XG', 'Smaller Territories of the UK', 'Smaller Territories of the UK', '44', 'Active', '2021-02-26 09:58:16'),
(200, 'SB', 'Solomon Islands', 'Solomon Islands', '677', 'Active', '2021-02-26 09:58:16'),
(201, 'SO', 'Somalia', 'Somalia', '252', 'Active', '2021-02-26 09:58:16'),
(202, 'ZA', 'South Africa', 'South Africa', '27', 'Active', '2021-02-26 09:58:16'),
(203, 'GS', 'South Georgia', 'South Georgia', '0', 'Active', '2021-02-26 09:58:16'),
(204, 'SS', 'South Sudan', 'South Sudan', '211', 'Active', '2021-02-26 09:58:16'),
(205, 'ES', 'Spain', 'Spain', '34', 'Active', '2021-02-26 09:58:16'),
(206, 'LK', 'Sri Lanka', 'Sri Lanka', '94', 'Active', '2021-02-26 09:58:16'),
(207, 'SD', 'Sudan', 'Sudan', '249', 'Active', '2021-02-26 09:58:16'),
(208, 'SR', 'Suriname', 'Suriname', '597', 'Active', '2021-02-26 09:58:16'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 'Svalbard And Jan Mayen Islands', '47', 'Active', '2021-02-26 09:58:16'),
(210, 'SZ', 'Swaziland', 'Swaziland', '268', 'Active', '2021-02-26 09:58:16'),
(211, 'SE', 'Sweden', 'Sweden', '46', 'Active', '2021-02-26 09:58:16'),
(212, 'CH', 'Switzerland', 'Switzerland', '41', 'Active', '2021-02-26 09:58:16'),
(213, 'SY', 'Syria', 'Syria', '963', 'Active', '2021-02-26 09:58:16'),
(214, 'TW', 'Taiwan', 'Taiwan', '886', 'Active', '2021-02-26 09:58:16'),
(215, 'TJ', 'Tajikistan', 'Tajikistan', '992', 'Active', '2021-02-26 09:58:16'),
(216, 'TZ', 'Tanzania', 'Tanzania', '255', 'Active', '2021-02-26 09:58:16'),
(217, 'TH', 'Thailand', 'Thailand', '66', 'Active', '2021-02-26 09:58:16'),
(218, 'TG', 'Togo', 'Togo', '228', 'Active', '2021-02-26 09:58:16'),
(219, 'TK', 'Tokelau', 'Tokelau', '690', 'Active', '2021-02-26 09:58:16'),
(220, 'TO', 'Tonga', 'Tonga', '676', 'Active', '2021-02-26 09:58:16'),
(221, 'TT', 'Trinidad And Tobago', 'Trinidad And Tobago', '1868', 'Active', '2021-02-26 09:58:16'),
(222, 'TN', 'Tunisia', 'Tunisia', '216', 'Active', '2021-02-26 09:58:16'),
(223, 'TR', 'Turkey', 'Turkey', '90', 'Active', '2021-02-26 09:58:16'),
(224, 'TM', 'Turkmenistan', 'Turkmenistan', '7370', 'Active', '2021-02-26 09:58:16'),
(225, 'TC', 'Turks And Caicos Islands', 'Turks And Caicos Islands', '1649', 'Active', '2021-02-26 09:58:16'),
(226, 'TV', 'Tuvalu', 'Tuvalu', '688', 'Active', '2021-02-26 09:58:16'),
(227, 'UG', 'Uganda', 'Uganda', '256', 'Active', '2021-02-26 09:58:16'),
(228, 'UA', 'Ukraine', 'Ukraine', '380', 'Active', '2021-02-26 09:58:16'),
(229, 'AE', 'United Arab Emirates', 'United Arab Emirates', '971', 'Active', '2021-02-26 09:58:16'),
(230, 'GB', 'United Kingdom', 'United Kingdom', '44', 'Active', '2021-02-26 09:58:16'),
(231, 'US', 'United States', 'United States', '1', 'Active', '2021-02-26 09:58:16'),
(232, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '1', 'Active', '2021-02-26 09:58:16'),
(233, 'UY', 'Uruguay', 'Uruguay', '598', 'Active', '2021-02-26 09:58:16'),
(234, 'UZ', 'Uzbekistan', 'Uzbekistan', '998', 'Active', '2021-02-26 09:58:16'),
(235, 'VU', 'Vanuatu', 'Vanuatu', '678', 'Active', '2021-02-26 09:58:16'),
(236, 'VA', 'Vatican City State (Holy See)', 'Vatican City State (Holy See)', '39', 'Active', '2021-02-26 09:58:16'),
(237, 'VE', 'Venezuela', 'Venezuela', '58', 'Active', '2021-02-26 09:58:16'),
(238, 'VN', 'Vietnam', 'Vietnam', '84', 'Active', '2021-02-26 09:58:16'),
(239, 'VG', 'Virgin Islands (British)', 'Virgin Islands (British)', '1284', 'Active', '2021-02-26 09:58:16'),
(240, 'VI', 'Virgin Islands (US)', 'Virgin Islands (US)', '1340', 'Active', '2021-02-26 09:58:16'),
(241, 'WF', 'Wallis And Futuna Islands', 'Wallis And Futuna Islands', '681', 'Active', '2021-02-26 09:58:16'),
(242, 'EH', 'Western Sahara', 'Western Sahara', '212', 'Active', '2021-02-26 09:58:16'),
(243, 'YE', 'Yemen', 'Yemen', '967', 'Active', '2021-02-26 09:58:16'),
(244, 'YU', 'Yugoslavia', 'Yugoslavia', '38', 'Active', '2021-02-26 09:58:16'),
(245, 'ZM', 'Zambia', 'Zambia', '260', 'Active', '2021-02-26 09:58:16'),
(246, 'ZW', 'Zimbabwe', 'Zimbabwe', '263', 'Active', '2021-02-26 09:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `documentscategories`
--

CREATE TABLE `documentscategories` (
  `DocumentCategoriesID` int NOT NULL,
  `DocumentCategoryName` varchar(255) NOT NULL,
  `DocumentCategoryImage` varchar(255) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `documentscategories`
--

INSERT INTO `documentscategories` (`DocumentCategoriesID`, `DocumentCategoryName`, `DocumentCategoryImage`, `Status`, `CreatedAt`) VALUES
(2, 'Ticket', '1622283732-494.png', 'Active', '2021-05-29 11:37:41'),
(3, 'Employee', '1622283702-5294.jpg', 'Active', '2021-05-29 11:37:41'),
(4, 'fffff', '1631541432-5243.jpg', 'Active', '2021-09-13 19:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `documentshare`
--

CREATE TABLE `documentshare` (
  `DocumentShareID` int NOT NULL,
  `UserDocumentID` int NOT NULL COMMENT 'Connect with primary key of UserDocuments table',
  `ShareToID` int NOT NULL COMMENT 'Connect with primary key of Users table',
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `documentshare`
--

INSERT INTO `documentshare` (`DocumentShareID`, `UserDocumentID`, `ShareToID`, `Status`, `CreatedAt`) VALUES
(2, 6, 72, 'Active', '2021-05-10 14:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

CREATE TABLE `emailtemplates` (
  `EmailTemplateID` int NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `FaqID` int NOT NULL,
  `FaqQuestion` text NOT NULL,
  `FaqAnswer` text NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`FaqID`, `FaqQuestion`, `FaqAnswer`, `Status`) VALUES
(1, 'Setting up automatic reminders', 'When you set both a due date and a time for a task, Todoist automatically sets a reminder for you. For example, when you create a task for tomorrow at 4pm, Todoist will automatically send you a reminder 30 minutes beforehand.', 'Active'),
(2, 'Setting up custom reminders', 'When adding or editing a task, click on the web_reminder.svgalarm clock icon at the bottom right.\r\nClick on the clock icon to choose whether you want to create a Date and time-based or Location-based reminder. For existing tasks with a due time, you’ll see a third option – Before task – to set a reminder for a certain amount of time before your task is due.\r\nDepending on the option you chose in step 2, set the trigger for your reminder – type in the specific date and time, the location, or select the relative time before the task is due.\r\nClick Add reminder. \r\nClick Add Task (when creating a new task) or Save (when editing an existing task).', 'Active'),
(3, 'What is Voicent\'s AutoReminder?\r\n                                        ', 'Voicent\'s AutoReminder is software that automatically sends personalized messages to a list of phone numbers for appointment reminders. It works on any Windows PC. It can also send emails and text messages.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `InvoiceID` int NOT NULL,
  `CustomerID` int NOT NULL COMMENT 'Connect with primary key of Users table',
  `SubscriptionID` int NOT NULL COMMENT 'Connect with primary key of Subscriptions table',
  `InvoiceDate` date NOT NULL,
  `Amount` float NOT NULL,
  `Status` enum('Paid','Pending') NOT NULL DEFAULT 'Pending',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notfications`
--

CREATE TABLE `push_notfications` (
  `ID` int NOT NULL,
  `title` varchar(522) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(522) NOT NULL,
  `username` varchar(522) NOT NULL,
  `notification_type` varchar(522) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expiredate` date NOT NULL,
  `receiver_id` int NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(522) NOT NULL,
  `is_read` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `push_notfications`
--

INSERT INTO `push_notfications` (`ID`, `title`, `description`, `username`, `notification_type`, `expiredate`, `receiver_id`, `CreatedAt`, `name`, `is_read`) VALUES
(1, 'Your Reminder  plan will expire', 'Your Reminder plan will expire in 5 days', 'demo.consumer@gmail.com', 'Reminder', '2021-06-29', 73, '2021-06-24 13:33:50', 'demon consumer', 0),
(2, 'Your Reminder  plan will expire', 'Your Reminder plan will expire in 5 days', 'demo.consumer@gmail.com', 'Reminder', '2021-06-29', 73, '2021-06-24 13:38:19', 'demon consumer', 0),
(3, 'Your Reminder  plan will expire', 'Your Reminder plan will expire in 7 days', 'brandon@kurtsiron.com', 'Reminder', '2021-07-01', 79, '2021-06-24 13:38:19', 'brandon hilgendorf', 0),
(4, 'Your Reminder  plan will expire', 'Your Reminder plan will expire in 4 days', 'demo.lifestoreage@malinator.com', 'Reminder', '2021-06-28', 101, '2021-06-24 13:38:19', 'Life Storage', 0),
(5, 'Your Reminder  plan will expire', 'Your Reminder plan will expire in 6 days', 'usera@gmail.com', 'Reminder', '2021-06-30', 87, '2021-06-24 13:38:20', 'Himanshu k', 0),
(6, 'Your Trainig  plan will expire', 'Your Trainig plan will expire in 3 days', 'qqqq@gmail.com', 'Trainig', '2021-06-27', 68, '2021-06-24 13:38:20', 'Muscle tech ', 0),
(7, 'Your Trainig  plan will expire', 'Your Trainig plan will expire in 0 days', 'qqqq@gmail.com', 'Trainig', '2021-06-24', 68, '2021-06-24 13:38:20', 'Muscle tech ', 0),
(8, 'Your Trainig  plan will expire', 'Your Trainig plan will expire in 4 days', 'qqqq@gmail.com', 'Trainig', '2021-06-28', 68, '2021-06-24 13:38:21', 'Muscle tech ', 0),
(9, 'Your Trainig  plan will expire', 'Your Trainig plan will expire in 4 days', 'qqqq@gmail.com', 'Trainig', '2021-06-28', 68, '2021-06-24 13:38:21', 'Muscle tech ', 0),
(10, 'Your Trainig  plan will expire', 'Your Trainig plan will expire in 0 days', 'testingnewuser@mailinator.com', 'Trainig', '2021-06-24', 102, '2021-06-24 13:38:21', 'testing life private limited ', 0),
(11, 'Your Tickets  plan will expire', 'Your Tickets plan will expire in 3 days', 'qqqq@gmail.com', 'Tickets', '2021-06-27', 68, '2021-06-24 13:38:21', 'Muscle tech ', 0),
(12, 'Your Tickets  plan will expire', 'Your Tickets plan will expire in 3 days', 'qqqq@gmail.com', 'Tickets', '2021-06-27', 68, '2021-06-24 13:38:21', 'Muscle tech ', 0),
(13, 'Your Tickets  plan will expire', 'Your Tickets plan will expire in 3 days', 'qqqq@gmail.com', 'Tickets', '2021-06-27', 68, '2021-06-24 13:38:22', 'Muscle tech ', 0),
(14, 'Your Tickets  plan will expire', 'Your Tickets plan will expire in 3 days', 'qqqq@gmail.com', 'Tickets', '2021-06-27', 68, '2021-06-24 13:38:22', 'Muscle tech ', 0),
(15, 'Your Tickets  plan will expire', 'Your Tickets plan will expire in 0 days', 'qqqq@gmail.com', 'Tickets', '2021-06-24', 68, '2021-06-24 13:38:22', 'Muscle tech ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `push_notficationskkkkkkkkkkkk`
--

CREATE TABLE `push_notficationskkkkkkkkkkkk` (
  `ID` int NOT NULL,
  `title` varchar(522) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(522) NOT NULL,
  `username` varchar(522) NOT NULL,
  `notification_type` varchar(522) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expiredate` date NOT NULL,
  `receiver_id` int NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(522) NOT NULL,
  `is_read` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remindercategories`
--

CREATE TABLE `remindercategories` (
  `ReminderCategoryID` int NOT NULL,
  `ReminderCategoryName` varchar(255) NOT NULL,
  `ReminderCategoryParentID` int DEFAULT NULL COMMENT 'Connect with primary key of ReminderCategories table',
  `ReminderCategoryDescription` varchar(255) NOT NULL,
  `ReminderCategoryImage` varchar(255) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remindercategories`
--

INSERT INTO `remindercategories` (`ReminderCategoryID`, `ReminderCategoryName`, `ReminderCategoryParentID`, `ReminderCategoryDescription`, `ReminderCategoryImage`, `Status`, `CreatedAt`) VALUES
(1, 'Mobile Recharge', NULL, 'Categories45', '1614579318-6378.webp', 'Active', '2021-03-01 04:47:25'),
(2, 'Birthday', NULL, 'reminder birthday', '1615208098-3097.jpg', 'Active', '2021-03-08 12:54:58'),
(3, 'Electricity Bill', NULL, 'Electricity Bill desc', '1615208185-2737.jpg', 'Active', '2021-03-08 12:56:25'),
(4, 'Dth Recharge', NULL, 'Dth Recharge', '', 'Active', '2021-05-15 07:59:16'),
(5, 'Insurance', NULL, 'Health insurance', '1622651492-3669.png', 'Active', '2021-06-02 16:31:32'),
(6, 'Safety Tickets', NULL, 'Safety Tickets', '1623860846-399.png', 'Active', '2021-06-16 16:27:27'),
(7, 'Driver License', NULL, 'Driver License', '1623861078-3362.jpg', 'Active', '2021-06-16 16:31:18'),
(8, 'Health Care', NULL, 'Health Care', '1623861221-7164.jpg', 'Active', '2021-06-16 16:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `remindercategorymetas`
--

CREATE TABLE `remindercategorymetas` (
  `ReminderCategoryMetaID` int NOT NULL,
  `ReminderCategoryID` int NOT NULL COMMENT 'Connect with primary key of ReminderCategories table',
  `ReminderCategoryMetaKey` varchar(255) NOT NULL,
  `ReminderCategoryMetaValue` varchar(255) DEFAULT NULL,
  `ReminderCategoryMetaKeyType` varchar(255) DEFAULT NULL,
  `ReminderCategoryMetaKeyTypeData` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remindercategorymetas`
--

INSERT INTO `remindercategorymetas` (`ReminderCategoryMetaID`, `ReminderCategoryID`, `ReminderCategoryMetaKey`, `ReminderCategoryMetaValue`, `ReminderCategoryMetaKeyType`, `ReminderCategoryMetaKeyTypeData`, `Status`) VALUES
(2, 1, 'CustomDate', NULL, 'Date', NULL, 'Active'),
(3, 1, 'Name', NULL, 'DropDown', 'User', 'Active'),
(4, 2, 'CustomDate', NULL, 'Date', NULL, 'Active'),
(5, 2, 'Name', NULL, 'Input', NULL, 'Active'),
(6, 2, 'Birthday', NULL, 'Input', NULL, 'Active'),
(7, 3, 'CustomDate', NULL, 'Input', NULL, 'Active'),
(8, 3, 'Name', NULL, 'Input', NULL, 'Active'),
(9, 3, 'Lable', NULL, 'Input', NULL, 'Active'),
(10, 4, 'CustomDate', NULL, 'Date', NULL, 'Active'),
(11, 4, 'name', NULL, 'Input', NULL, 'Active'),
(12, 4, 'vender', NULL, 'DropDown', 'Vendor', 'Active'),
(13, 2, 'vender', NULL, 'DropDown', 'Vendor', 'Active'),
(14, 1, 'amount', NULL, 'Input', NULL, 'Active'),
(15, 2, 'checkbox', NULL, 'CheckBox', NULL, 'Active'),
(16, 5, 'CompanyName', NULL, 'Input', NULL, 'Active'),
(17, 5, 'StartingDate', NULL, 'Date', NULL, 'Active'),
(18, 5, 'ExpiryDate', NULL, 'Date', NULL, 'Active'),
(19, 5, 'Description', NULL, 'Input', NULL, 'Active'),
(20, 1, 'Description', NULL, 'Input', NULL, 'Active'),
(21, 6, 'SiteName', NULL, 'Input', NULL, 'Active'),
(22, 6, 'ExpiryDate', NULL, 'Date', NULL, 'Active'),
(23, 6, 'Location', NULL, 'Input', NULL, 'Active'),
(24, 7, 'ExpiryDate', NULL, 'Date', NULL, 'Active'),
(25, 7, 'FirstName', NULL, 'Input', NULL, 'Active'),
(26, 7, 'LastName', NULL, 'Input', NULL, 'Active'),
(27, 7, 'LicenseNumber', NULL, 'Input', NULL, 'Active'),
(28, 8, 'HealthCareName', NULL, 'Input', NULL, 'Active'),
(29, 8, 'ExpiryDate', NULL, 'Input', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `remindermetas`
--

CREATE TABLE `remindermetas` (
  `ReminderMetaID` int NOT NULL,
  `ReminderID` int NOT NULL COMMENT 'Connect with primary key of Reminders table',
  `ReminderCategoryMetaID` int NOT NULL COMMENT 'Connect with primary key of ReminderCategoryMetas table',
  `ReminderMetaValue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remindermetas`
--

INSERT INTO `remindermetas` (`ReminderMetaID`, `ReminderID`, `ReminderCategoryMetaID`, `ReminderMetaValue`) VALUES
(59, 23, 2, '2021-06-24'),
(60, 23, 3, '71'),
(61, 23, 14, '1200'),
(65, 20, 2, '2021-06-24'),
(66, 20, 3, '71'),
(67, 20, 14, '1200'),
(78, 21, 2, '2026-05-22'),
(79, 21, 3, '56'),
(80, 21, 14, '1199'),
(81, 22, 4, '1996-03-28'),
(82, 22, 6, 'yesss'),
(83, 22, 13, '72'),
(84, 22, 15, '1'),
(85, 22, 5, 'Its my birthday'),
(86, 25, 8, 'bill pay'),
(87, 25, 9, 'office bill pay'),
(97, 26, 2, '2021-05-25'),
(98, 26, 3, '83'),
(99, 26, 14, '1100'),
(110, 28, 5, 'lucky birthday'),
(111, 28, 6, 'send gift item'),
(112, 28, 13, '84'),
(113, 28, 4, '2021-06-04'),
(114, 28, 15, '0'),
(118, 29, 2, '2021-06-28'),
(119, 29, 3, '85'),
(120, 29, 14, '471'),
(124, 31, 10, '2021-06-05'),
(125, 31, 11, 'dth testing'),
(126, 31, 12, '75'),
(127, 30, 7, '2021-06-22'),
(128, 30, 8, 'test'),
(129, 30, 9, 'test'),
(130, 32, 2, '2021-06-14'),
(131, 32, 3, '52'),
(132, 32, 14, '1000'),
(133, 33, 14, '1500'),
(134, 33, 3, '67'),
(135, 33, 2, '2021-05-03'),
(136, 34, 16, '7'),
(137, 34, 16, '78'),
(138, 34, 16, '788'),
(139, 34, 16, '7889'),
(140, 34, 16, '78892'),
(141, 34, 16, '788927'),
(142, 34, 17, '2021-06-02'),
(143, 34, 18, '2021-07-14'),
(144, 34, 19, 'i'),
(145, 34, 19, 'in'),
(146, 34, 19, 'inv'),
(147, 34, 19, 'inve'),
(148, 34, 19, 'inves'),
(149, 34, 19, 'invest'),
(150, 34, 19, 'investm'),
(151, 34, 19, 'investme'),
(152, 34, 19, 'investmen'),
(153, 34, 19, 'investment'),
(154, 34, 19, 'investments'),
(155, 34, 19, 'investments'),
(156, 35, 2, '2021-06-17'),
(157, 35, 3, '54'),
(158, 35, 14, '600'),
(159, 35, 20, 'vfhnn'),
(160, 36, 7, 'bfhnj'),
(161, 36, 8, 'bfhhb'),
(162, 36, 9, 'gcuf'),
(163, 37, 2, '2021-06-22'),
(164, 37, 3, '101'),
(165, 37, 14, '7000'),
(166, 37, 20, 'this is costing'),
(171, 38, 2, '2021-06-18'),
(172, 38, 3, '101'),
(173, 38, 14, '500'),
(174, 38, 20, 'postpaid bill'),
(175, 39, 2, '2021-06-18'),
(176, 39, 3, '42'),
(177, 39, 14, '1000'),
(178, 39, 20, 'I have to recharge my number'),
(179, 40, 3, '61'),
(180, 46, 3, '61'),
(181, 47, 3, '61'),
(182, 48, 3, '61'),
(183, 49, 3, '61');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `ReminderID` int NOT NULL,
  `ReminderName` varchar(255) DEFAULT NULL,
  `ReminderCategoryID` int NOT NULL COMMENT 'Connect with primary key of ReminderCategories table',
  `ReminderDate` date DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`ReminderID`, `ReminderName`, `ReminderCategoryID`, `ReminderDate`, `Status`, `CreatedAt`, `UserID`) VALUES
(20, 'airtel', 1, '2021-06-22', 'Active', '2021-06-18 05:27:23', 73),
(21, 'airtel re', 1, '2021-06-29', 'Active', '2021-05-22 10:00:30', 73),
(22, 'happy birthday', 2, '2021-10-01', 'Active', '2021-05-21 10:29:55', 73),
(23, 'jio rechargegh', 1, '2021-06-15', 'Active', '2021-05-22 07:20:56', 73),
(25, 'electricity bill', 3, '2021-06-28', 'Active', '2021-05-22 10:48:14', 80),
(26, 'mobile recharge', 1, '2021-06-27', 'Active', '2021-05-25 10:04:16', 83),
(28, 'lucky birthday', 2, '2021-06-03', 'Active', '2021-06-02 10:40:29', 85),
(29, 'airtel postpaid bill', 1, '2021-06-18', 'Active', '2021-06-02 10:54:36', 85),
(30, 'hshjs', 3, '2021-06-11', 'Active', '2021-06-02 12:08:00', 85),
(31, 'dth', 4, '2021-06-11', 'Active', '2021-06-02 12:08:37', 85),
(32, 'gfvh', 1, '2021-06-14', 'Active', '2021-06-02 13:02:48', 73),
(33, 'himanshu', 1, '2021-06-04', 'Active', '2021-06-02 15:41:30', 73),
(34, 'IG Weath', 5, '2021-07-01', 'Active', '2021-06-07 19:09:15', 79),
(35, 'vvv', 1, '2021-06-15', 'Active', '2021-06-14 05:24:57', 73),
(36, 'gvhjv', 3, '2021-06-16', 'Active', '2021-06-14 06:08:59', 73),
(37, 'party event', 1, '2021-06-20', 'Active', '2021-06-18 09:13:45', 101),
(38, 'mobile bill', 1, '2021-06-28', 'Active', '2021-06-18 09:35:42', 101),
(39, 'Himanshu k', 1, '2021-06-30', 'Active', '2021-06-18 17:32:38', 87),
(40, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 06:17:30', 60),
(41, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 08:57:31', 60),
(42, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 08:58:04', 60),
(43, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 08:58:42', 60),
(44, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:00:02', 60),
(45, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:00:14', 60),
(46, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:00:59', 60),
(47, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:03:57', 60),
(48, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:13:03', 60),
(49, 'New Test DD', 1, '2021-06-25', 'Active', '2021-06-24 09:27:35', 60);

-- --------------------------------------------------------

--
-- Table structure for table `reminderserviceproviders`
--

CREATE TABLE `reminderserviceproviders` (
  `ReminderServiceProviderID` int NOT NULL,
  `ReminderCategoryID` int NOT NULL COMMENT 'Connect with primary key of ReminderCategories table',
  `ServiceProviderID` int NOT NULL COMMENT 'Connect with primary key of ServiceProviders table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_image`
--

CREATE TABLE `reminder_image` (
  `ID` int NOT NULL,
  `ReminderID` int NOT NULL,
  `Reminder_image` text NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reminder_image`
--

INSERT INTO `reminder_image` (`ID`, `ReminderID`, `Reminder_image`, `CreatedAt`, `UserID`) VALUES
(1, 49, '1624526855-3861.jpg', '2021-06-24 09:27:35', 60),
(3, 49, '1624526855-5206.jpg', '2021-06-24 09:27:35', 60),
(4, 49, '1624526855-1592.jpg', '2021-06-24 09:27:35', 60),
(5, 49, '1624526855-2805.jpg', '2021-06-24 09:27:35', 60),
(6, 49, '1624526855-7259.jpg', '2021-06-24 09:27:35', 60),
(7, 49, '1624526855-1501.jpg', '2021-06-24 09:27:35', 60);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ReportID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleID` int NOT NULL,
  `RoleName` varchar(255) NOT NULL,
  `IsActive` enum('AC','DL') NOT NULL DEFAULT 'AC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`, `IsActive`) VALUES
(1, 'Administrator', 'AC'),
(2, 'User', 'AC'),
(3, 'staff', 'AC');

-- --------------------------------------------------------

--
-- Table structure for table `servicecategories`
--

CREATE TABLE `servicecategories` (
  `ServiceCategoryID` int NOT NULL,
  `ServiceCategoryName` varchar(255) NOT NULL,
  `ServiceCategoryParentID` int DEFAULT NULL COMMENT 'Connect with primary key of ServiceCategories table',
  `ServiceCategoryDescription` varchar(255) NOT NULL,
  `ServiceCategoryImage` varchar(255) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `servicecategories`
--

INSERT INTO `servicecategories` (`ServiceCategoryID`, `ServiceCategoryName`, `ServiceCategoryParentID`, `ServiceCategoryDescription`, `ServiceCategoryImage`, `Status`, `CreatedAt`) VALUES
(1, 'Insurance', NULL, 'all Insurance', '1614754739-5255.jpg', 'Active', '2021-03-03 06:59:00'),
(2, 'Safety Office', NULL, 'all Office', '1614754808-2578.webp', 'Active', '2021-03-03 07:00:08'),
(3, 'Fall Arrest', NULL, 'Fall Arrest', '1622651622-5213.png', 'Active', '2021-06-02 16:33:42'),
(4, 'Fire Protection', NULL, 'Fire Protection', '1622651690-2352.png', 'Active', '2021-06-02 16:34:50'),
(5, 'WHMIS', NULL, 'WHMIS', '1622651738-2523.png', 'Active', '2021-06-02 16:35:39'),
(6, 'First Aid', NULL, 'First Aid', '1622651785-2368.jpg', 'Active', '2021-06-02 16:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `serviceproviders`
--

CREATE TABLE `serviceproviders` (
  `ServiceProviderID` int NOT NULL,
  `UserID` int NOT NULL COMMENT 'Connect with primary key of Users table',
  `ServiceCategoryID` int NOT NULL COMMENT 'Connect with primary key of ServiceCategories table',
  `CompanyName` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `serviceproviders`
--

INSERT INTO `serviceproviders` (`ServiceProviderID`, `UserID`, `ServiceCategoryID`, `CompanyName`, `Location`, `CreatedAt`) VALUES
(1, 58, 1, 'fyjh', 'Nullatanni, Munnar, Kerala 685612, India', '2021-03-06 05:15:54'),
(2, 61, 1, 'fyjh', 'Nullatanni, Munnar, Kerala 685612, India', '2021-03-06 05:20:33'),
(3, 61, 2, 'fyjh', 'Nullatanni, Munnar, Kerala 685612, India', '2021-03-06 05:20:33'),
(4, 62, 1, 'fyjh', 'Nullatanni, Munnar, Kerala 685612, India', '2021-03-06 05:23:33'),
(5, 62, 2, 'fyjh', 'Nullatanni, Munnar, Kerala 685612, India', '2021-03-06 05:23:33'),
(6, 63, 1, 'gghh', 'tyhhccc', '2021-03-06 05:25:51'),
(7, 64, 1, 'demo', 'Am Wasserturm 32, 24943 Flensburg, Germany', '2021-03-06 10:12:17'),
(8, 64, 2, 'demo', 'Am Wasserturm 32, 24943 Flensburg, Germany', '2021-03-06 10:12:17'),
(9, 66, 1, 'projexel digital', '67/55, Ward 27, Sector 6, Mansarovar, Jaipur, Rajasthan 302020, India', '2021-03-06 17:41:30'),
(10, 68, 1, 'Muscle tech', '2126 E 33rd St, Erie, PA 16510, USA', '2021-03-09 14:12:10'),
(11, 68, 2, 'Muscle tech', '2126 E 33rd St, Erie, PA 16510, USA', '2021-03-09 14:12:10'),
(12, 72, 1, 'technosoft', 'Jidhafs, Bahrain', '2021-04-12 12:41:35'),
(13, 74, 2, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(14, 74, 2, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(15, 74, 2, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(16, 74, 1, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(17, 74, 2, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(18, 74, 2, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(19, 74, 1, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(20, 74, 1, 'software company', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-04-14 12:21:41'),
(21, 84, 1, 'testing private limited', 'kishanpole bazaar jaipur', '2021-05-26 05:20:56'),
(22, 84, 1, 'testing private limited', 'kishanpole bazaar jaipur', '2021-05-26 05:20:56'),
(23, 84, 1, 'testing private limited', 'kishanpole bazaar jaipur', '2021-05-26 05:20:56'),
(24, 86, 1, 'vendor private limited', 'jaipur', '2021-06-02 12:35:36'),
(25, 86, 1, 'vendor private limited', 'jaipur', '2021-06-02 12:35:36'),
(26, 86, 2, 'vendor private limited', 'jaipur', '2021-06-02 12:35:36'),
(27, 86, 2, 'vendor private limited', 'jaipur', '2021-06-02 12:35:36'),
(28, 86, 2, 'vendor private limited', 'jaipur', '2021-06-02 12:35:36'),
(29, 88, 6, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(30, 88, 5, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(31, 88, 1, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(32, 88, 1, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(33, 88, 2, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(34, 88, 3, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(35, 88, 4, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(36, 88, 5, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(37, 88, 3, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(38, 88, 6, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(39, 88, 1, 'Strive', 'jaipur', '2021-06-07 07:32:05'),
(40, 90, 2, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(41, 90, 2, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(42, 90, 1, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(43, 90, 4, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(44, 90, 3, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(45, 90, 5, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(46, 90, 6, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(47, 90, 1, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(48, 90, 2, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(49, 90, 3, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(50, 90, 2, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(51, 90, 1, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(52, 90, 3, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(53, 90, 2, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(54, 90, 6, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(55, 90, 5, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(56, 90, 4, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(57, 90, 3, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(58, 90, 1, 'testing private limited', 'jtm mall jaipur', '2021-06-10 06:37:42'),
(59, 97, 1, 'strivemindz private limited', 'jaipur', '2021-06-11 13:29:20'),
(60, 97, 1, 'strivemindz private limited', 'jaipur', '2021-06-11 13:29:20'),
(61, 97, 1, 'strivemindz private limited', 'jaipur', '2021-06-11 13:29:20'),
(62, 97, 2, 'strivemindz private limited', 'jaipur', '2021-06-11 13:29:20'),
(63, 97, 3, 'strivemindz private limited', 'jaipur', '2021-06-11 13:29:20'),
(64, 99, 1, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(65, 99, 2, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(66, 99, 3, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(67, 99, 4, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(68, 99, 5, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(69, 99, 6, 'marudhar furniture', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 05:32:24'),
(70, 100, 1, 'dhhddh', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 06:40:58'),
(71, 100, 3, 'dhhddh', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 06:40:58'),
(72, 100, 2, 'dhhddh', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-14 06:40:58'),
(73, 102, 3, 'testing life private limited', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-06-18 09:24:34'),
(74, 102, 3, 'testing life private limited', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-06-18 09:24:34'),
(75, 102, 2, 'testing life private limited', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-06-18 09:24:34'),
(76, 102, 1, 'testing life private limited', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-06-18 09:24:34'),
(77, 102, 2, 'testing life private limited', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', '2021-06-18 09:24:34'),
(78, 104, 1, 'hfuf', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-21 12:22:45'),
(79, 104, 4, 'hfuf', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-21 12:22:45'),
(80, 104, 3, 'hfuf', 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', '2021-06-21 12:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `SettingID` int NOT NULL,
  `SettingName` varchar(255) DEFAULT NULL,
  `SettingAttribute` varchar(255) NOT NULL,
  `SettingValue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionplans`
--

CREATE TABLE `subscriptionplans` (
  `SubscriptionPlanID` int NOT NULL,
  `PaypalID` varchar(255) NOT NULL,
  `SubscriptionPlanName` varchar(255) NOT NULL,
  `SubscriptionPlanPrice` float NOT NULL,
  `SubscriptionPlanType` enum('Monthly','Yearly','Trial') NOT NULL,
  `SubscriptionPlanTrialDays` int DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscriptionplans`
--

INSERT INTO `subscriptionplans` (`SubscriptionPlanID`, `PaypalID`, `SubscriptionPlanName`, `SubscriptionPlanPrice`, `SubscriptionPlanType`, `SubscriptionPlanTrialDays`, `Status`, `CreatedAt`) VALUES
(1, 'P-3MP06776RA790760VMDSF6QY', 'Test MMM', 100, 'Monthly', 0, 'Active', '2021-07-06 13:48:51'),
(2, 'P-62J545710X264142XMDSF67A', 'Test YYY', 500, 'Yearly', 0, 'Active', '2021-07-06 13:49:48'),
(3, '0', 'Test Trial', 0, 'Trial', 10, 'Active', '2021-07-06 13:50:32'),
(4, 'P-7W995035L45902435MDWUC4A', 'Lift 99', 99, 'Monthly', 0, 'Active', '2021-07-13 07:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `SubscriptionID` int NOT NULL,
  `SubscriptionPlanID` int NOT NULL COMMENT 'Connect with primary key of SubscriptionPlans table',
  `CustomerID` int NOT NULL COMMENT 'Connect with primary key of Users table',
  `TransactionID` varchar(255) NOT NULL,
  `SubscriptionDate` date NOT NULL,
  `SubscriptionRenewalDate` date NOT NULL,
  `PaymentStatus` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  `SubscriptionStatus` enum('Active','Inactive','Cancelled') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `TicketID` int NOT NULL,
  `TrainingID` int NOT NULL COMMENT 'Connect with primary key of Trainings table',
  `TicketSitename` varchar(255) NOT NULL,
  `TicketLocation` varchar(255) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`TicketID`, `TrainingID`, `TicketSitename`, `TicketLocation`, `StartDate`, `EndDate`, `Status`, `CreatedAt`) VALUES
(1, 1, 'hddl', 'jaipur', '2021-05-28', '2021-05-31', 'Active', '2021-05-28 09:48:20'),
(2, 1, 'jerry', 'jaipur', '2021-05-31', '2021-06-28', 'Active', '2021-05-28 10:34:28'),
(3, 1, 'manan', 'jodhour', '2021-05-29', '2021-05-30', 'Active', '2021-05-28 13:37:40'),
(4, 1, 'hello', 'fbjj', '2021-05-30', '2021-05-31', 'Active', '2021-05-28 13:38:46'),
(5, 12, 'passport', 'jaipur', '2021-06-02', '2025-06-02', 'Active', '2021-06-02 13:02:19'),
(6, 13, 'testing ticket', 'jaipur', '2021-06-01', '2021-05-01', 'Active', '2021-06-02 13:15:14'),
(7, 14, 'app testing', 'jaipur', '2021-06-10', '2021-10-10', 'Active', '2021-06-10 07:13:52'),
(8, 15, 'job bond', 'jaipur', '2021-06-12', '2022-06-12', 'Active', '2021-06-12 05:18:50'),
(9, 2, 'demo 1', 'jodhpur', '2021-06-15', '2021-06-17', 'Active', '2021-06-14 05:45:19'),
(10, 16, 'gopal', 'jtm mall jaipur', '2021-06-20', '2021-06-24', 'Active', '2021-06-18 09:38:55'),
(11, 16, 'new ticket2 0', 'jtm  mall jaupur', '2021-06-18', '2023-06-18', 'Active', '2021-06-18 10:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `trainingcategories`
--

CREATE TABLE `trainingcategories` (
  `TrainingCategoryID` int NOT NULL,
  `TrainingCategoryName` varchar(255) NOT NULL,
  `TrainingCategoryParentID` int DEFAULT NULL COMMENT 'Connect with primary key of TrainingCategories table',
  `TrainingCategoryDescription` varchar(255) NOT NULL,
  `TrainingCategoryImage` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trainingcategories`
--

INSERT INTO `trainingcategories` (`TrainingCategoryID`, `TrainingCategoryName`, `TrainingCategoryParentID`, `TrainingCategoryDescription`, `TrainingCategoryImage`, `Status`, `CreatedAt`) VALUES
(1, 'Category One', NULL, 'Category One', '1622119930-2490.jpg', 'Active', '2021-05-27 12:52:10'),
(2, 'Category two', NULL, 'Category two', '1622120016-9485.jpg', 'Active', '2021-05-27 12:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `TrainingID` int NOT NULL,
  `TrainingName` varchar(255) DEFAULT NULL,
  `TrainingCategoryID` int NOT NULL COMMENT 'Connect with primary key of TrainingCategories table',
  `ServiceProviderID` int DEFAULT NULL COMMENT 'Connect with primary key of ServiceProviders table',
  `UserID` int NOT NULL,
  `TrainingPeriod` enum('Monthly','Yearly') NOT NULL DEFAULT 'Monthly',
  `TrainingStartDate` date NOT NULL,
  `TrainingEndDate` date NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`TrainingID`, `TrainingName`, `TrainingCategoryID`, `ServiceProviderID`, `UserID`, `TrainingPeriod`, `TrainingStartDate`, `TrainingEndDate`, `Status`, `CreatedAt`) VALUES
(1, 'demon', 1, NULL, 68, 'Monthly', '2021-05-31', '2021-06-27', 'Active', '2021-05-27 15:13:44'),
(2, 'demonsss', 1, NULL, 68, 'Monthly', '2021-05-29', '2021-06-24', 'Active', '2021-05-28 08:45:38'),
(3, 'demonsss', 1, NULL, 68, 'Monthly', '2021-05-29', '2021-06-28', 'Active', '2021-05-28 08:48:58'),
(4, 'demonsss', 1, NULL, 68, 'Monthly', '2021-05-29', '2021-06-28', 'Active', '2021-05-28 08:49:11'),
(5, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:50:06'),
(6, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:50:26'),
(7, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:51:04'),
(8, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:51:21'),
(9, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:51:45'),
(10, 'raja ram', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:53:38'),
(11, 'jerry', 1, NULL, 68, 'Monthly', '2021-05-28', '2021-05-30', 'Active', '2021-05-28 08:56:02'),
(12, 'water bill', 1, NULL, 86, 'Monthly', '2021-06-02', '2021-06-10', 'Active', '2021-06-02 13:01:03'),
(13, 'toll tax charge', 2, NULL, 86, 'Monthly', '2021-06-02', '2021-06-12', 'Active', '2021-06-02 13:05:04'),
(14, 'testing traing', 1, NULL, 90, 'Monthly', '2021-06-10', '2021-07-10', 'Active', '2021-06-10 06:45:22'),
(15, 'software testing training', 1, NULL, 98, 'Yearly', '2021-06-12', '2022-06-12', 'Active', '2021-06-12 05:07:02'),
(16, 'mahesh', 1, NULL, 102, 'Yearly', '2021-06-18', '2023-06-24', 'Active', '2021-06-18 09:38:00'),
(17, 'gopal', 2, NULL, 102, 'Yearly', '2021-06-18', '2021-06-24', 'Active', '2021-06-18 10:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `userdocuments`
--

CREATE TABLE `userdocuments` (
  `UserDocumentID` int NOT NULL,
  `UserID` int NOT NULL COMMENT 'Connect with primary key of Users table',
  `ReminderID` int NOT NULL COMMENT 'Connect with primary key of Reminders table',
  `DocumentCategoriesID` int NOT NULL DEFAULT '0',
  `UserDocumentName` varchar(255) NOT NULL,
  `UserDocumentFile` varchar(255) NOT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userdocuments`
--

INSERT INTO `userdocuments` (`UserDocumentID`, `UserID`, `ReminderID`, `DocumentCategoriesID`, `UserDocumentName`, `UserDocumentFile`, `FileName`, `Status`, `CreatedAt`) VALUES
(7, 73, 0, 0, 'pic', 'http://demo.3edgetechnovision.com/LifeStorage/public/images/user_profile/UserDocument_73_1620635026-7957.jpg', 'UserDocument_73_1620635026-7957.jpg', 'Active', '2021-05-10 08:23:46'),
(8, 73, 0, 0, 'pic', 'http://demo.3edgetechnovision.com/LifeStorage/public/images/user_profile/UserDocument_73_1620636509-8453.jpg', 'UserDocument_73_1620636509-8453.jpg', 'Active', '2021-05-10 08:48:29'),
(10, 73, 0, 0, 'hello', 'http://demo.3edgetechnovision.com/LifeStorage/public/images/user_profile/UserDocument_73_1620654991-8175.jpg', 'UserDocument_73_1620654991-8175.jpg', 'Active', '2021-05-10 13:56:31'),
(12, 83, 0, 0, 'house rent', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_83_1621938246-4564.jpg', 'UserDocument_83_1621938246-4564.jpg', 'Active', '2021-05-25 10:24:06'),
(16, 68, 0, 0, 'flutter', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_68_1622202611-2731.jpg', 'UserDocument_68_1622202611-2731.jpg', 'Active', '2021-05-28 11:50:11'),
(18, 73, 23, 0, 'hlok', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_73_1622293804-8893.jpg', 'UserDocument_73_1622293804-8893.jpg', 'Active', '2021-05-29 13:10:04'),
(19, 68, 0, 3, 'hfh', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_68_1622296414-5945.jpg', 'UserDocument_68_1622296414-5945.jpg', 'Active', '2021-05-29 13:53:34'),
(20, 68, 0, 0, 'gvh', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_68_1622296522-985.jpg', 'UserDocument_68_1622296522-985.jpg', 'Active', '2021-05-29 13:55:22'),
(21, 85, 29, 0, 'mobile recharge', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_85_1622635308-9367.jpg', 'UserDocument_85_1622635308-9367.jpg', 'Active', '2021-06-02 12:01:48'),
(22, 85, 29, 0, 'Dth tv recharge', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_85_1622635620-8562.jpg', 'UserDocument_85_1622635620-8562.jpg', 'Active', '2021-06-02 12:07:00'),
(23, 86, 0, 1, 'water bill', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_86_1622638999-899.jpg', 'UserDocument_86_1622638999-899.jpg', 'Active', '2021-06-02 13:03:19'),
(24, 86, 0, 2, 'passport tickets', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_86_1622639035-1703.jpg', 'UserDocument_86_1622639035-1703.jpg', 'Active', '2021-06-02 13:03:55'),
(25, 86, 0, 3, 'providing laptop for employees', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_86_1622639205-6625.jpg', 'UserDocument_86_1622639205-6625.jpg', 'Active', '2021-06-02 13:06:45'),
(26, 73, 22, 0, 'testing', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_73_1622879192-3252.jpg', 'UserDocument_73_1622879192-3252.jpg', 'Active', '2021-06-05 07:46:32'),
(27, 89, 0, 0, 'chair repair', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_89_1623305750-5088.jpg', 'UserDocument_89_1623305750-5088.jpg', 'Active', '2021-06-10 06:15:50'),
(29, 73, 23, 0, 'suvichar', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_73_1623308530-5697.jpg', 'UserDocument_73_1623308530-5697.jpg', 'Active', '2021-06-10 07:02:10'),
(30, 73, 33, 0, 'demo 1', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_73_1623651025-4456.jpg', 'UserDocument_73_1623651025-4456.jpg', 'Active', '2021-06-14 06:10:25'),
(33, 102, 0, 1, 'system training', 'http://demo.strivemindz.com/LifeStorage/public/images/user_profile/UserDocument_102_1624013971-7733.jpg', 'UserDocument_102_1624013971-7733.jpg', 'Active', '2021-06-18 10:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `CompanyID` int DEFAULT NULL,
  `Username` varchar(255) NOT NULL COMMENT 'Random string generation through code',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Firstname` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `StateID` varchar(255) DEFAULT NULL,
  `CountryID` varchar(255) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `CityID` varchar(255) DEFAULT NULL,
  `ProfileImage` varchar(255) DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `DeviceType` varchar(255) DEFAULT NULL,
  `DeviceToken` varchar(255) DEFAULT NULL,
  `RemberToken` varchar(255) DEFAULT NULL,
  `UserType` enum('Superadmin','Individual','Vendor') NOT NULL DEFAULT 'Individual',
  `Otp` int DEFAULT NULL,
  `remember_token` text,
  `IsLogging` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login_at` datetime DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `CompanyID`, `Username`, `email`, `password`, `Phone`, `Firstname`, `Lastname`, `Address`, `Gender`, `StateID`, `CountryID`, `Pincode`, `CityID`, `ProfileImage`, `Status`, `DeviceType`, `DeviceToken`, `RemberToken`, `UserType`, `Otp`, `remember_token`, `IsLogging`, `CreatedAt`, `last_login_at`, `Latitude`, `Longitude`) VALUES
(1, 2, 'test@gmail.com', 'test@gmail.com', '$2y$10$O1ln8tg78yY.nvWPSV1VHuW0S.oN.5ylboLJrpM1c1FCin4c.LpBe', '12121212121', 'test', 'testing', 'Jagatpura Jaipur, 302017, Rajasthan, India,', NULL, 'RJ', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, 'dfdgfdgdfgdfg fdg fdgdcfgdfgfd', '86391dbe39674a7a2e2d7a7544d75566', 'Vendor', NULL, NULL, 0, '2021-03-05 13:33:56', NULL, '26.434177481122852', '73.26130114495754'),
(2, NULL, 'admin', 'admin@gmail.com', '$2y$10$uJk5q11YEl7/k1eUn7yFGeiomLa3GS70NuhqNtnekzAzCdUcvoQKS', '9587962826', 'admin', 'two', 'test add', 'Male', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'c_vHRhSORpeTvaBmObxj0F:APA91bEJ_4AxP7fJp3enRT6gua_M49Z3opAiJLc7wYIadUfFBjW2Kyea5X5th5qcGJzCBOgJCSVCStsXNBCuK60i66KsqHI3G_A-MDhYt8y-R9MVc2ybmsZ6p8LMadUUb_gOVBQoNCMr', NULL, 'Vendor', 150087, NULL, 1, '2021-01-27 06:31:19', '2021-02-19 12:32:18', '26.182136500675128', '73.09623599052429'),
(37, NULL, 'user@gmail.com', 'user@gmail.com', '$2y$10$ZhwUPD96ClCjOmVi64CjA.jolvyeKw95POMAwfXqlR3m2O7z/Ix5S', '5236523653', 'User', 'One', 'address onee', 'Male', NULL, NULL, 302045, NULL, NULL, 'Active', NULL, NULL, NULL, '', NULL, NULL, 0, '2021-02-03 07:23:22', NULL, NULL, NULL),
(38, NULL, 'gtf@gmail.com', 'gtf@gmail.com', '$2y$10$SS7XddghQRjGTSU3LmdJpufooxnS.azJsEmvSvGaDGuASijQMZZ.y', '6532653623', 'GTF', 'User', 'gtf', 'Male', NULL, NULL, 252326, NULL, NULL, 'Active', NULL, NULL, NULL, 'Superadmin', NULL, NULL, 0, '2021-02-03 07:34:29', '2021-02-06 10:19:03', NULL, NULL),
(39, NULL, 'jerry@gmail.com', 'jerry@gmail.com', '$2y$10$CfV0aBLIdNIp3q4dR8E9O.mwLPugsb4aGbGIK1ZNty/IPoK6lof8W', '5263159635', 'Jerry', 'Dsoza', '10 , street', 'Male', NULL, NULL, 5236541, NULL, NULL, 'Inactive', NULL, NULL, NULL, '', NULL, NULL, 0, '2021-02-03 11:51:40', NULL, NULL, NULL),
(40, NULL, 'a@gmail.com', 'a@gmail.com', '$2y$10$p0xKX9DSajEKbDTkGkTspO5JNw8gno74ncVXfTOKHxqlzp.lz8PM6', '25623566', 'NU', 'ln', 'add', 'Male', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '', NULL, NULL, 0, '2021-02-04 13:08:19', NULL, NULL, NULL),
(41, NULL, 'aniruddha.joshi2015@gmail.com', 'aniruddha.joshi2015@gmail.com', '$2y$10$Ivwj3BOtQe515aYOnNQS/OTou4HB1/1B47GoYD7eYI1Yb84R3eY4i', '7023393200', 'aniruddha', 'joshi', 'jtm jagatpura', 'Male', '33', '101', 302029, '3378', NULL, 'Active', NULL, 'fhoVASM6S1ayefATE6QV1o:APA91bHPd_bPtM30ioRQ48FOaKjpX8-pyWmmSfu6UoFBWVxhOTf-T2NXmQor9HpT8DsUSkSUyfnG4wqX0uTDu-6lAd0UqCY9sSd2CqlkgII3ZwmYAuQdE-7zuLNWPXmf8ob4eT3cp_3E', 'bac2b5a4724315816241e7005fecb915', '', NULL, NULL, 0, '2021-02-05 05:12:20', NULL, NULL, NULL),
(42, NULL, 'LifeStorage@demo.com', 'LifeStorage@demo.com', '$2y$10$UAMCAZZ9r59hRVn..NZsZuQZ6MjnU2PhDko7TAEqQuuHDK.oq/KJy', '9587962825', 'Life', 'Storage', 'fghfgh', NULL, NULL, NULL, 90210, NULL, NULL, 'Active', NULL, NULL, NULL, 'Individual', NULL, 'mKMORaec58BHhMvQW4mxqmvxunvWY1Rrtjlp86X01lEBQnYWhdzo4ts0x4wi', 0, '2021-02-26 05:51:15', NULL, NULL, NULL),
(45, NULL, '', 'test@gmails.com', '$2y$10$EDUcIngwZSeo.tL34gErSuP2BnaPAwlRKiR6mycf2FitblXk/xAG6', NULL, 'test1', 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, 'Individual', NULL, NULL, 0, '2021-02-26 10:52:21', NULL, NULL, NULL),
(46, NULL, 'testrt@gmail.com', 'testrt@gmail.com', '$2y$10$SoXqd3FTbxv/ymTzrQ72Pu6/SU7s/KoFN0nPzAttppgNDVHdGFaz.', '95874874', 'test', 'testing', 'Jagatpura Jaipur, 302017, Rajasthan, India,', NULL, 'RJ', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, NULL, '0fdc2d988772d07f7ab27bbc89ce4e11', 'Individual', NULL, NULL, 0, '2021-03-05 13:34:46', NULL, NULL, NULL),
(47, NULL, '567@gmail.com', '567@gmail.com', '$2y$10$hTDMUjzuLKnonNVi0/.zcuL3HZPOAJ8esyJ.W7JLtEppFJs7vNaum', '56565656565', 'test', 'testing', 'Jagatpura Jaipur, 302017, Rajasthan, India,', NULL, 'RJ', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, NULL, '0e99d63c34c26b6865fb3335b9381fe6', 'Individual', NULL, NULL, 0, '2021-03-05 13:35:00', NULL, NULL, NULL),
(48, NULL, 'demo@gmail.com', 'demo@gmail.com', '$2y$10$SHI7oiXHh2PlvrHcUQuyEeAOj/EW8ZIIYOLfRx8LH0z6iWmAkSE7e', '1234567890', 'demo', 'demon', '15–21 Chadderton Street, Cabramatta NSW 2166, Australia', NULL, 'NSW', 'Australia', 2166, 'Sydney', NULL, 'Active', NULL, NULL, 'e807f1fcf82d132f9bb018ca6738a19f', 'Individual', 116259, NULL, 0, '2021-03-05 13:51:23', NULL, NULL, NULL),
(49, NULL, 'dem@gmail.com', 'dem@gmail.com', '$2y$10$7E7DD324cfA4BsMcQTXrHuanvBT93DUr8egtYHIhp93GDOnii/RdS', '1234567892', 'demo', 'demon', '15–21 Chadderton Street, Cabramatta NSW 2166, Australia', NULL, 'NSW', 'Australia', 2166, 'Sydney', NULL, 'Active', NULL, NULL, 'd893377c9d852e09874125b10a0e4f66', 'Individual', NULL, NULL, 0, '2021-03-05 13:52:25', NULL, NULL, NULL),
(50, NULL, 'dem@gmail.co', 'dem@gmail.co', '$2y$10$isQHBXUEK8qgm3DBxGYKc.nBDDm83IeuMCioaxrX3hSxJB5KXsYiG', '1234567891', 'demo', 'demon', '15–21 Chadderton Street, Cabramatta NSW 2166, Australia', NULL, 'NSW', 'Australia', 2166, 'Sydney', NULL, 'Active', NULL, NULL, '0f7e44a922df352c05c5f73cb40ba115', 'Individual', NULL, NULL, 0, '2021-03-05 13:53:11', NULL, NULL, NULL),
(51, NULL, 'dem@gmail.coaa', 'dem@gmail.coaa', '$2y$10$Ha4UfFXWbLX4QAxJ5usrPOF54iEOdEX2P59pbDwKe2jvCtG9Ypzwe', '12345678911', 'demo', 'demon', '15–21 Chadderton Street, Cabramatta NSW 2166, Australia', NULL, 'NSW', 'Australia', 2166, 'Sydney', NULL, 'Active', NULL, NULL, '1e5ce73f4fc4c3b764fb66811f093c87', 'Individual', NULL, NULL, 0, '2021-03-05 14:00:46', NULL, NULL, NULL),
(52, NULL, 'aaaa@aa.aa', 'aaaa@aa.aa', '$2y$10$6Z.eLT1EYwDse.ZKCIDPbe87j9QdDtFPEmPg5ib/FMnkdYJufRptW', '12365478901', 'demo', 'dhj', '7304 I-10, San Antonio, TX 78219, USA', NULL, 'Texas', 'United States', 78219, 'Bexar County', NULL, 'Active', NULL, NULL, '70b659ccfbc0de040933b98c2f62ee5f', 'Individual', NULL, NULL, 0, '2021-03-05 14:36:37', NULL, NULL, NULL),
(53, NULL, 'aaaa@aa.aaa', 'aaaa@aa.aaa', '$2y$10$VA3K5/EDEt21PmSA9Z9ycef0S1zqMRI5LPXY8fGmAW4A7RZKbiOmW', '12345678900', 'aaaa', 'vvv', 'JTPL City Main Rd, Sector 115, Khuni Majra, Punjab 140301, India', NULL, 'Punjab', 'India', 140301, 'Sahibzada Ajit Singh Nagar', NULL, 'Active', NULL, NULL, '39b5177e82858ecc5661a2077b58edc3', 'Individual', NULL, NULL, 0, '2021-03-05 15:09:27', NULL, NULL, NULL),
(54, NULL, 'aaaa@aa.ghh', 'aaaa@aa.ghh', '$2y$10$raADkkB/3A9/713DmdzWU.hf65EDOcwWzt47NCi3NHlIGoI5JvW9m', '4552555555', 'gfgy', 'uff', '2126 E 33rd St, Erie, PA 16510, USA', NULL, 'Pennsylvania', 'United States', 16510, 'Erie County', NULL, 'Active', NULL, NULL, '1b404ebae14dd38b50b500798787baf0', 'Individual', NULL, NULL, 0, '2021-03-06 04:50:20', NULL, NULL, NULL),
(55, NULL, 'aaaa@aa.ghht', 'aaaa@aa.ghht', '$2y$10$PVBhB09ilezQeklAqCmqpOT6NwCaYm212w2IysUnKG8VA93R8yZKa', '45525555554', 'gfgy', 'uff', '2126 E 33rd St, Erie, PA 16510, USA', NULL, 'Pennsylvania', 'United States', 16510, 'Erie County', NULL, 'Active', NULL, NULL, 'a071519826fc4fcc5e7da1f81632ae39', 'Individual', NULL, NULL, 0, '2021-03-06 04:51:16', NULL, NULL, NULL),
(56, NULL, 'aaaa@aa.ghhtc', 'aaaa@aa.ghhtc', '$2y$10$zXoEClgfbo2fr0aUwzTQ/e89yG06rBtReyz2d5x2P.iGGedkU3ubC', '455255555', 'gfgy', 'uff', '2126 E 33rd St, Erie, PA 16510, USA', NULL, 'Pennsylvania', 'United States', 16510, 'Erie County', NULL, 'Active', NULL, NULL, 'e04e7c4f85f078dfd54a365898719aa8', 'Individual', NULL, NULL, 0, '2021-03-06 04:52:20', NULL, NULL, NULL),
(57, NULL, 'vvb@gh.jj', 'vvb@gh.jj', '$2y$10$VDekp5pArQNzpmGwyYayDucdfItoWnVdiAP9rEYfOfmVWFhGUaEzO', '666699', 'hello', 'dthh', '28/29, Kempegowda, Majestic, Bengaluru, Karnataka 560009, India', NULL, 'Karnataka', 'India', 560009, 'Bangalore Urban', NULL, 'Active', NULL, NULL, '5358fedfd6bb08ec4fba07bbe09217c4', 'Individual', NULL, NULL, 0, '2021-03-06 04:59:12', NULL, NULL, NULL),
(58, NULL, 'zzz@zz.zz', 'zzz@zz.zz', '$2y$10$kyzNBRmDzwkAa5PVbnH4kO9ME483vfnFlp.Iw7kaWSXz2pWtrzhUK', '235680', 'fyjh', NULL, 'Nullatanni, Munnar, Kerala 685612, India', NULL, 'Kerala', 'India', 685612, 'Idukki', NULL, 'Active', NULL, NULL, 'e6758cad49921d900ad20cc119c4d1b4', 'Vendor', NULL, NULL, 0, '2021-03-06 05:15:54', NULL, NULL, NULL),
(59, NULL, '4545@gmail.com', '4545@gmail.com', '12345678', '4545454545', 'test', 'testing', 'Jagatpura Jaipur, 302017, Rajasthan, India,', NULL, 'RJ', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, NULL, '1ec8fbeaaed47174f7934f2b7dd58a09', 'Individual', 385996, NULL, 0, '2021-03-06 05:16:26', NULL, NULL, NULL),
(60, NULL, 'zzz@zz.zzz', 'zzz@zz.zzz', '$2y$10$QZwN5Ww0vIPzHdvkQkd.nu9m6w3DT9fU6F7mla985rmzstT.Ig2Ja', '2356808', 'fyjh', NULL, 'Nullatanni, Munnar, Kerala 685612, India', NULL, 'Kerala', 'India', 685612, 'Idukki', NULL, 'Active', NULL, NULL, 'e7d3169c38e2034d1f7afd8ef38637ad', 'Vendor', NULL, NULL, 0, '2021-03-06 05:18:19', NULL, NULL, NULL),
(61, NULL, 'zzz@zz.zzzttt', 'zzz@zz.zzzttt', '$2y$10$6kGYzIY.mZCpJQTb5jWlpODNdVDZS7o3GkSxtUymFTU2Zzw/f2/7.', '2356808000', 'fyjh', NULL, 'Nullatanni, Munnar, Kerala 685612, India', NULL, 'Kerala', 'India', 685612, 'Idukki', NULL, 'Active', NULL, NULL, '8edc28a8ed542f3fea7ed67c2f22c340', 'Vendor', NULL, NULL, 0, '2021-03-06 05:20:33', NULL, NULL, NULL),
(62, NULL, 'zzz@zz.zzztttf', 'zzz@zz.zzztttf', '$2y$10$VKu6YgQ77zzqiqPIae8fROOz8qnu8ijqJmIrLaVFwuSpBaUxAUOQS', '23568080005', 'fyjh', NULL, 'Nullatanni, Munnar, Kerala 685612, India', NULL, 'Kerala', 'India', 685612, 'Idukki', NULL, 'Active', NULL, NULL, '67364f61bc27a2be17f735f0e583e00a', 'Vendor', NULL, NULL, 0, '2021-03-06 05:23:33', NULL, NULL, NULL),
(63, NULL, 'ggh@yy.uj', 'ggh@yy.uj', '$2y$10$CqYfkqf/ayNnD/HyEPjV3evyhmljapCVLa4J92AsHwh0BmsxI5TMa', '559625888', 'gghh', NULL, 'tyhhccc', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'ed625c8966ff1ae2f3bdbf84d871d860', 'Vendor', NULL, NULL, 0, '2021-03-06 05:25:51', NULL, NULL, NULL),
(64, NULL, 'vendor@gmail.com', 'vendor@gmail.com', '$2y$10$yCqvdkbqBcK.FpJXzaDpFescXtRlAkrH5qJDjy6r09WGdiwW8o3UW', '1111111111', 'demo', NULL, 'Am Wasserturm 32, 24943 Flensburg, Germany', NULL, 'Schleswig-Holstein', 'Germany', 24943, NULL, NULL, 'Active', NULL, NULL, 'e11170b8cbd2d74102651cb967fa28e5', 'Vendor', 817152, NULL, 0, '2021-03-06 10:12:17', NULL, NULL, NULL),
(65, NULL, 'vg@gf.jg', 'vg@gf.jg', '$2y$10$COlHllZBPCZayLiregDr9OHBumMmzYBh/2AXBJq.3t8do3oqyAxHu', '5632888', 'vbnb', 'vnn', 'Av. Epitacio Pessoa - Tambauzinho, João Pessoa - PB, 58042-006, Brazil', NULL, 'Paraíba', 'Brazil', 58042, 'João Pessoa', NULL, 'Active', NULL, NULL, 'ea69f5add1d8778452da8574722a511c', 'Individual', NULL, NULL, 0, '2021-03-06 11:08:31', NULL, NULL, NULL),
(66, NULL, 'himanshukumawat1209@gmail.com', 'himanshukumawat1209@gmail.com', '$2y$10$DSWmavFpo2s1cc75PcQwlOa1nLdR5Ggo5Y1p3P.PcI3slg9KEY4ZK', '7340041110', 'projexel digital', NULL, '67/55, Ward 27, Sector 6, Mansarovar, Jaipur, Rajasthan 302020, India', NULL, 'Rajasthan', 'India', 302020, 'Jaipur', NULL, 'Active', NULL, NULL, '9ef52a4e4798fa205b9f6d6ed9ee21da', 'Vendor', NULL, NULL, 0, '2021-03-06 17:41:30', NULL, NULL, NULL),
(67, 68, 'himanshu@projexeldigital.com', 'himanshu@projexeldigital.com', '$2y$10$OT3ixP6OpspnsRXB4pOV0.sPkT4ETNDnfCyzD/T38axG68qDPQJwS', '9358391200', 'himanshu', 'k', '35, Jawa Bass, Jorawarpura, Ladnun, Rajasthan 341306, India', NULL, 'Rajasthan', 'India', 341306, 'Nagaur', NULL, 'Active', NULL, NULL, 'f1c0f003f2b00b6b53d800403b9c6a01', 'Individual', NULL, NULL, 0, '2021-03-06 17:43:22', NULL, NULL, NULL),
(68, NULL, 'qqqq@gmail.com', 'qqqq@gmail.com', '$2y$10$71QW/IvQc/87pgbRg753i.1RluzfnDZ80VTA5/lgZcfD20/Y.XS6u', '0000000000', 'Muscle tech', NULL, '2126 E 33rd St, Erie, PA 16510, USA', NULL, 'Pennsylvania', 'United States', 16510, 'Erie County', NULL, 'Active', NULL, 'cSuD3jCcQ1ejjwsX6t779f:APA91bHEnWdemf5WkRyM_biFL4JkA-v_FGSGojrvcQqy8rj6MFxRB-pSRr30wMSRiv0mLIdaiKddBkqgBEWL2KSCwNOynJo8_R0FQ_AsrZPzC6VlBgG6xsQOGqinEl3eKenzJ4gmVss9', 'f1b708bba17f1ce948dc979f4d7092bc', 'Vendor', NULL, NULL, 0, '2021-03-09 14:12:10', NULL, NULL, NULL),
(69, NULL, 'admin1@gmail.com', 'admin1@gmail.com', '$2y$10$MqEyT9Uzl1EQhLU1dVS28OfXYB6OU2AWm4GrU4cnpL3go6.nkAtKm', '222222245665', 'jney', 'player', 'NH 62, Paota, Jodhpur, 342006, Rajasthan, India', NULL, 'RJ', 'India', 342006, 'Jodhpur', NULL, 'Active', NULL, NULL, '0671dd13c4ef12486d25f113f0026876', 'Individual', NULL, NULL, 0, '2021-04-12 12:23:40', NULL, NULL, NULL),
(70, NULL, 'adapee@gmail.com', 'adapee@gmail.com', '$2y$10$w9dELYpnknn7OEHjfzC9cOdtCW41XXKGghMY.v.ulZaY95H9TNHWO', '1234543216', 'fdsf', 'fdsfdsf', 'Ratanada, Jodhpur, 342010, Rajasthan, India', NULL, 'RJ', 'India', 342010, 'Jodhpur', NULL, 'Active', NULL, NULL, '07c34ca69c6480af8db058cc918bb19c', 'Individual', NULL, NULL, 0, '2021-04-12 12:24:22', NULL, NULL, NULL),
(71, NULL, 'add@gmail.com', 'add@gmail.com', '$2y$10$mdKHvEvAvumq8OmbLOXjc.MEOjX8hAbqBhHg5A7qsA0bOOkpE0xBS', '1234565433', 'demo', 'dfd', 'NH 62, Paota, Jodhpur, 342006, Rajasthan, India', NULL, 'RJ', 'India', 342006, 'Jodhpur', NULL, 'Active', NULL, NULL, '679fea5e47bfc140a8b32ab28ef733e5', 'Individual', NULL, NULL, 0, '2021-04-12 12:38:05', NULL, NULL, NULL),
(72, NULL, 'demo.vendor@gmail.com', 'demo.vendor@gmail.com', '$2y$10$3IEReYoiupez4h/hh2ckNe4fXh5xWlPHsa2lBheLgq2pDiNt31Jd.', '0987654321', 'technosoft', NULL, 'Jidhafs, Bahrain', NULL, 'Northern Governorate', 'Bahrain', NULL, NULL, NULL, 'Active', NULL, NULL, '6fb42da0e32e07b61c9f0251fe627a9c', 'Vendor', NULL, NULL, 0, '2021-04-12 12:41:35', NULL, NULL, NULL),
(73, 66, 'demo.consumer@gmail.com', 'demo.consumer@gmail.com', '$2y$10$S3tRcqq4hVtlq/ZGPYdQ/OM8bWhnB.qerxpt.RJ7.V96SlxkmGy7.', '4444444444', 'demon', 'consumer', 'Nagori Bera Rd, Nagori Bera, Phool Bagh, Jodhpur, Rajasthan 342007, India', NULL, 'RJ', '34', 302017, 'Jodhpur', '1623652122-2329.jpg', 'Active', NULL, 'cSuD3jCcQ1ejjwsX6t779f:APA91bHEnWdemf5WkRyM_biFL4JkA-v_FGSGojrvcQqy8rj6MFxRB-pSRr30wMSRiv0mLIdaiKddBkqgBEWL2KSCwNOynJo8_R0FQ_AsrZPzC6VlBgG6xsQOGqinEl3eKenzJ4gmVss9', 'e53a68903e2c336a890907125b489abd', 'Individual', NULL, NULL, 0, '2021-04-12 14:14:52', NULL, NULL, NULL),
(74, NULL, 'demotest22@mailinator.com', 'demotest22@mailinator.com', '$2y$10$lvnd5wGtkuv5hGyIqtKFo.IqLlW44LOiNbBxMLPHsSkgsYTUzfhLi', '87994946494946494994949', 'software company', NULL, 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', NULL, 'Rajasthan', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, NULL, '70ba7b8eb006f2a1661cf1891e73c899', 'Vendor', NULL, NULL, 0, '2021-04-14 12:21:41', NULL, NULL, NULL),
(75, NULL, 'testuser56@mailinator.com', 'testuser56@mailinator.com', '$2y$10$gSrVyVL.Ras6O9ftcKsw3eB.hY5Jqq5hx4GmljWfysrTgKzh1Q1wa', '5555555555', 'software company', NULL, 'jaipur', NULL, 'Rajasthan', 'India', 302017, 'Jaipur', NULL, 'Active', NULL, NULL, '0b5de470bdace90bd6cfb2541eb79f99', 'Vendor', NULL, NULL, 0, '2021-04-14 12:24:30', NULL, NULL, NULL),
(76, NULL, 'testuset@mailinator.com', 'testuset@mailinator.com', '$2y$10$N.cU5ZUTPsde17uEBO3ccO7npb4eC.9qtrnOpcOSSNBlUET7z39zi', '2222222222', 'test', 'user user', 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', NULL, 'Rajasthan', 'India', 302017, 'Jaipur', '1618405064-7888.jpg', 'Active', NULL, NULL, '3a08fe7b8c4da6ed09f21c3ef97efce2', 'Individual', 592946, NULL, 0, '2021-04-14 12:42:27', NULL, NULL, NULL),
(77, NULL, 'rn@t.com', 'rn@t.com', '$2y$10$kHRkaB0qeS3KXkIblJtpDOfwT3Q93aqCAG8J5nm9UIgHnlHvMGpMm', '8000', '$$$$¢¢¢©©$$¢$¢€¥', '1356677777777?787', 'jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, '67ff32d40fb51f1a2fd2c4f1b1019785', 'Individual', NULL, NULL, 0, '2021-04-14 13:20:43', NULL, NULL, NULL),
(78, NULL, 'aaaaq@gmail.com', 'aaaaq@gmail.com', '$2y$10$1ZhbFEySjGY0gxfIqy/3vOd0G4kRYVfionywlbYoHUELqd13GpMTa', '2222222233', 'dfghh', 'ghff', 'mandore', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'bce1ebd58fe369c03c8b00aec337b4e1', 'Individual', NULL, NULL, 0, '2021-05-08 18:03:17', NULL, NULL, NULL),
(79, NULL, 'brandon@kurtsiron.com', 'brandon@kurtsiron.com', '$2y$10$UhFM3XGFj00G/SbaBL3CCOdjd3U3msqg7KKc67RnRQZafGdxij5Ua', '4035809911', 'brandon', 'hilgendorf', '36 vista ave se', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'null', '871f7ce9414bd8463252f7183dcdafe7', 'Individual', NULL, NULL, 0, '2021-05-10 19:18:33', NULL, NULL, NULL),
(80, NULL, 'mukeshsharma@mailinator.com', 'mukeshsharma@mailinator.com', '$2y$10$PgFizpAlzgGjuamXt0jhqOiAHJYQbXD8Y4UUNB9FkBrhvNm8H7o6S', '9782688969', 'mukesh', 'sharma', 'agara road jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'd560961b9b278fddecb5dc9a3cacb697', 'Individual', NULL, NULL, 0, '2021-05-22 10:44:53', NULL, NULL, NULL),
(81, NULL, 'pareekvishal623@gmail.com', 'pareekvishal623@gmail.com', '$2y$10$hp2mXNMp4mGpvgbdiFJGLeR9ZeTI18vu95no3NAOYj/VcFaLCBG6i', '9610505059', 'vishal', 'pareek', 'hdjdndjjdndbbd', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'b49462635d3801dde5e9c4fd28f747a5', 'Individual', NULL, NULL, 0, '2021-05-22 16:15:01', NULL, NULL, NULL),
(82, NULL, 'suresh@mailinator.com', 'suresh@mailinator.com', '$2y$10$NNJaIBggD7lCkbbYPfGPfO5DvK.MIeey7PFroS0Ume15UzBOwvkfK', '9785644648894', 'suresh$$$', 'kumar', 'kishanpole bazaar jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'b979dda6fe13810f51b56e16f4026eac', 'Individual', NULL, NULL, 0, '2021-05-24 10:12:52', NULL, NULL, NULL),
(83, NULL, 'sureshkumar@mailinator.com', 'sureshkumar@mailinator.com', '$2y$10$XS/h9lChjRTiF6iF4EN4f.tG1Vcwv5PDnoJT3dn7JhocLVObTO0JO', '9782688965', 'suresh', 'kumar', 'kishanpole bazaar jaipur', NULL, NULL, NULL, NULL, NULL, '1621940571-2603.jpg', 'Active', NULL, NULL, '293a36afd4c2894d6b65983edd23dd86', 'Individual', 549367, NULL, 0, '2021-05-24 10:25:06', NULL, NULL, NULL),
(84, NULL, 'testingprivate@mailinator.com', 'testingprivate@mailinator.com', '$2y$10$vYnesu.I..nsdHhQ/WgLVebTdmiBHuyuGH/7DhhIt56hMokzwA0c2', '978268896923', 'testing private limited', 'sharma', 'kishanpole bazaar jaipur', NULL, NULL, NULL, NULL, NULL, '1622010715-9463.jpg', 'Active', NULL, 'null', '3c2ca1f4d1bbc588fd7739afb7aab479', 'Vendor', NULL, NULL, 0, '2021-05-26 05:20:56', NULL, NULL, NULL),
(85, NULL, 'testinguser@mailinator.com', 'testinguser@mailinator.com', '$2y$10$VVbiIsqXfpl4h1F3zdbzgO3ndccj73mMEunZ59nk/aVMnIbqWli3W', '9999999999', 'naman', 'kumar sharma', 'choti chopad jaipur', NULL, NULL, NULL, NULL, NULL, '1622635226-9267.jpg', 'Active', NULL, NULL, 'e0ec043b3f9e198ec09041687e4d4e8d', 'Individual', NULL, NULL, 0, '2021-06-02 09:45:46', NULL, NULL, NULL),
(86, NULL, 'vendorprivatelimited@mailinator.com', 'vendorprivatelimited@mailinator.com', '$2y$10$lR4TcRpn6TmRFHc94WCyPOxU/Y9BQMIZI.lvs56mgTLHv0i5J5PjC', '8888888888', 'vendor private limited', 'vendors company', 'jaipur', NULL, NULL, NULL, NULL, NULL, '1622639158-9778.jpg', 'Active', NULL, NULL, '312f04f99be9e857bfb2c033eeb1d3e2', 'Vendor', NULL, NULL, 0, '2021-06-02 12:35:36', NULL, NULL, NULL),
(87, 88, 'usera@gmail.com', 'usera@gmail.com', '$2y$10$QoQnVUkZOv63xGGns46iOejlipxhLCDIgbuU4/EtcjImUJb/1E4o.', '7340041111', 'Himanshu', 'k', 'Jagatpura jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'null', '283053c91f2e6e778c1622fd73a10ead', 'Individual', NULL, NULL, 0, '2021-06-07 07:28:01', NULL, NULL, NULL),
(88, NULL, 'vendora@gmail.com', 'vendora@gmail.com', '$2y$10$chc4.cB1KtDVsEYK4njEtO8zCDcvsX6JbSLTDespK0EHJ.XpaP3yq', '7345855586', 'Strive', NULL, 'jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, '028eb0a73ab24a7c13df7c6f6d69c784', 'Vendor', NULL, NULL, 0, '2021-06-07 07:32:05', NULL, NULL, NULL),
(89, NULL, 'testing55@mailinator.com', 'testing55@mailinator.in', '$2y$10$avUw8MlBSWIr661JVUAIJu.Pf/JF1Mbr.DX7gietVWgQ.Ll4JOHZi', '9786453211', 'ramesh', 'sharma', 'jtm mall jaipur', NULL, NULL, NULL, NULL, NULL, '1623306649-1810.jpg', 'Active', NULL, 'null', '985cb8f444998f4fbf958ba63d9c3883', 'Individual', NULL, NULL, 0, '2021-06-10 06:13:01', NULL, NULL, NULL),
(90, NULL, 'testing78@mailinator.com', 'testing78@mailinator.com', '$2y$10$bz805iok3QSHtDouk0tWa.oRfbKjiFgG6uiUF3GfAIuBsF51Nz0xa', '9786543218', 'testing private limited', NULL, 'jtm mall jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'null', 'e47e35b4b45eed50c8ddfb5c9c361256', 'Vendor', NULL, NULL, 0, '2021-06-10 06:37:42', NULL, NULL, NULL),
(95, NULL, 'mukeshbhati1990@gmail.com', 'mukeshbhati1990@gmail.com', '$2y$10$1YQ5WrvgRoKLa8MDNjDYPecBPE/uDHNMGvTuAYT0rNZ4CHYjO/Xvm', NULL, 'mukesh', NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, 'Individual', NULL, NULL, 0, '2021-06-11 10:55:11', NULL, NULL, NULL),
(96, NULL, 'ajaykumarsharma@mailinator.com', 'ajaykumarsharma@mailinator.com', '$2y$10$XcGlOw0M0CoZNqPVCesB1.oDhi/d7x3V2KNcomBhBmRIX0tPTLxJ.', '9486546438844', 'Ajay', 'kumar', 'jtm mall Jagatpura Jaipur near railway line', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'null', 'eaab4b1a937e9c7ea30a1615e2ec75c1', 'Individual', NULL, NULL, 0, '2021-06-11 11:49:36', NULL, NULL, NULL),
(97, NULL, 'testingcompany@mailinator.com', 'testingcompany@mailinator.com', '$2y$10$maT9SD/2PeJUAdWgCm8nx.zjD6uIHTwdz43DxWACeXv3K2B7UPV2C', '9876543211843', 'strivemindz private limited', NULL, 'jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, 'b7a73c7f688a60a45b701477e905d42f', 'Vendor', NULL, NULL, 0, '2021-06-11 13:29:20', NULL, NULL, NULL),
(98, NULL, 'emailewe@email.com', 'emailewe@email.com', '$2y$10$IO6jkSNTT/cReXdydVCe0.ueTHG5dlxqxDFs2B2K4QbpSjnSLp5jm', '97846645164', 'team leaders private limited', NULL, 'jaipur', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'null', 'd94116fd86a913fe3f22f3633f571c5c', 'Vendor', NULL, NULL, 0, '2021-06-12 05:04:56', NULL, NULL, NULL),
(99, NULL, 'eddj@dhdh.djd', 'eddj@dhdh.djd', '$2y$10$zus3wF6WfsEHLrHW0yzV.ushWGWLkHH2ITz04M/mLYQ.O9xZ9KrnC', '978654135569', 'marudhar furniture', NULL, 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', NULL, 'Rajasthan', 'India', NULL, 'Jodhpur', NULL, 'Active', NULL, NULL, '27e977f734704d37416dae322e5c86ec', 'Vendor', NULL, NULL, 0, '2021-06-14 05:32:24', NULL, NULL, NULL),
(100, NULL, 'dndn@fjf.djd', 'dndn@fjf.djd', '$2y$10$KYdBel7KKfBIqIKszbo8qu9IRnonC5Wf2IuCEVod47lnb8Y3eES52', '98845464658', 'dhhddh', NULL, 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', NULL, 'Rajasthan', 'India', NULL, 'Jodhpur', NULL, 'Active', NULL, NULL, '082e69f94c49cd0cf4c979ab90ae85c6', 'Vendor', NULL, NULL, 0, '2021-06-14 06:40:58', NULL, NULL, NULL),
(101, NULL, 'demo.lifestoreage@malinator.com', 'demo.lifestoreage@malinator.com', '$2y$10$SOMuPUSR2eliNmae7KbdYOl8S1is7ajCxFttQi5lf1tI/xIY90u5a', '99999999998', 'Life', 'Storage', 'jtml mall jaipur', NULL, NULL, NULL, 3052520, NULL, '1624009990-4519.jpg', 'Active', NULL, 'null', NULL, 'Individual', NULL, NULL, 0, '2021-06-18 09:08:27', NULL, NULL, NULL),
(102, NULL, 'testingnewuser@mailinator.com', 'testingnewuser@mailinator.com', '$2y$10$wbnfzvqoTARxKmQp1H0h/eaBOh.dBajvK0OVUJ8tZOHUvqmbFGxt6', '978654327', 'testing life private limited', NULL, 'SF 1B, Jtm Mall, Model Town, Jagatpura, Jaipur, Rajasthan 302017, India', NULL, 'Rajasthan', 'India', 302017, 'Jaipur', '1624013287-2838.jpg', 'Active', NULL, 'null', 'c296c5b65bc2d7db44a7f3aac995e507', 'Vendor', NULL, NULL, 0, '2021-06-18 09:24:34', NULL, NULL, NULL),
(103, NULL, 'djj@f.dd', 'djj@f.dd', '$2y$10$nXlmTIl58xNVFs/spZ0SY.i.gTcRfkJyvEvvQ6FphWvvERGf.4KpG', '5656564848', 'dhshsb', 'xhxbb', 'Jodhpur Junction, Maharaja Umaid Singh Statue Circle, Station Rd, Ratanada, Jodhpur, Rajasthan 342001, India', NULL, 'Rajasthan', 'India', 342001, 'Jodhpur', NULL, 'Active', NULL, NULL, '384a94c11038e37a0bcc49ea4d9c0b57', 'Individual', NULL, NULL, 0, '2021-06-18 09:46:22', NULL, NULL, NULL),
(104, NULL, 'mikgif@gjj.jj', 'mikgif@gjj.jj', '$2y$10$BnLhH6l8SUPpvRaGD//mF.anzGMxEA8H9O5D3.7hH.3.lRSMpEWRa', '98233655899', 'hfuf', NULL, 'Bhagat Ki Kothi, Jodhpur, Rajasthan, India', NULL, 'Rajasthan', 'India', NULL, 'Jodhpur', NULL, 'Active', NULL, NULL, '8d7dd3d8869266bc65f5fb5412a20109', 'Vendor', NULL, NULL, 0, '2021-06-21 12:22:45', NULL, NULL, NULL),
(105, NULL, 'org.mlp@gmail.com', 'org.mlp@gmail.com', '$2y$10$6tbilMS2cisBVWl68iotP.s/HCserAKjad1mnqBIYrc/G4V9LDIya', '9587142939', 'mangi', 'lal', 'Jaipur', NULL, NULL, NULL, 331317, NULL, NULL, 'Active', NULL, NULL, NULL, 'Superadmin', 190251, NULL, 0, '2021-06-22 09:32:34', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `documentscategories`
--
ALTER TABLE `documentscategories`
  ADD PRIMARY KEY (`DocumentCategoriesID`);

--
-- Indexes for table `documentshare`
--
ALTER TABLE `documentshare`
  ADD PRIMARY KEY (`DocumentShareID`),
  ADD KEY `userdocuments_documentshare_UserDocumentID` (`UserDocumentID`),
  ADD KEY `users_documentshare_UserID_ShareToID` (`ShareToID`);

--
-- Indexes for table `emailtemplates`
--
ALTER TABLE `emailtemplates`
  ADD PRIMARY KEY (`EmailTemplateID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`FaqID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD KEY `users_invoices_UserID` (`CustomerID`),
  ADD KEY `subscriptions_invoices_SubscriptionID` (`SubscriptionID`);

--
-- Indexes for table `push_notfications`
--
ALTER TABLE `push_notfications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `remindercategories_reminders_ReminderCategoryID` (`description`);

--
-- Indexes for table `remindercategories`
--
ALTER TABLE `remindercategories`
  ADD PRIMARY KEY (`ReminderCategoryID`),
  ADD KEY `remindercategories_remindercategoryparentID_ReminderCategoryID` (`ReminderCategoryParentID`);

--
-- Indexes for table `remindercategorymetas`
--
ALTER TABLE `remindercategorymetas`
  ADD PRIMARY KEY (`ReminderCategoryMetaID`),
  ADD KEY `remindercategories_remindercategorymetas_ReminderCategoryID` (`ReminderCategoryID`);

--
-- Indexes for table `remindermetas`
--
ALTER TABLE `remindermetas`
  ADD PRIMARY KEY (`ReminderMetaID`),
  ADD KEY `reminders_remindermetas_ReminderID` (`ReminderID`),
  ADD KEY `ReminderCategoryMetaID` (`ReminderCategoryMetaID`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`ReminderID`),
  ADD KEY `remindercategories_reminders_ReminderCategoryID` (`ReminderCategoryID`);

--
-- Indexes for table `reminderserviceproviders`
--
ALTER TABLE `reminderserviceproviders`
  ADD PRIMARY KEY (`ReminderServiceProviderID`),
  ADD KEY `remindercategories_reminderserviceprovider_ReminderCategoryID` (`ReminderCategoryID`),
  ADD KEY `serviceprovider_reminderserviceprovider_ServiceProviderID` (`ServiceProviderID`);

--
-- Indexes for table `reminder_image`
--
ALTER TABLE `reminder_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `remindercategories_reminders_ReminderCategoryID` (`ReminderID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ReportID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `servicecategories`
--
ALTER TABLE `servicecategories`
  ADD PRIMARY KEY (`ServiceCategoryID`),
  ADD KEY `servicecategories_servicecategoryParentID_ServiceCategoryID` (`ServiceCategoryParentID`);

--
-- Indexes for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  ADD PRIMARY KEY (`ServiceProviderID`),
  ADD KEY `users_serviceprovider_UserID` (`UserID`),
  ADD KEY `servicecategories_serviceprovider_ServiceCategoryID` (`ServiceCategoryID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`SettingID`);

--
-- Indexes for table `subscriptionplans`
--
ALTER TABLE `subscriptionplans`
  ADD PRIMARY KEY (`SubscriptionPlanID`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`SubscriptionID`),
  ADD KEY `subscriptionplans_subscriptions_SubscriptionPlanID` (`SubscriptionPlanID`),
  ADD KEY `users_subscriptions_UserID_CustomerID` (`CustomerID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`TicketID`),
  ADD KEY `trainings_tickets_TrainingID` (`TrainingID`);

--
-- Indexes for table `trainingcategories`
--
ALTER TABLE `trainingcategories`
  ADD PRIMARY KEY (`TrainingCategoryID`),
  ADD KEY `trainingcategories_TrainingCategoriesID_TrainingCategoryParentID` (`TrainingCategoryParentID`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`TrainingID`);

--
-- Indexes for table `userdocuments`
--
ALTER TABLE `userdocuments`
  ADD PRIMARY KEY (`UserDocumentID`),
  ADD KEY `users_userdocuments_UserID` (`UserID`),
  ADD KEY `reminders_userdocuments_ReminderID` (`ReminderID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`email`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documentscategories`
--
ALTER TABLE `documentscategories`
  MODIFY `DocumentCategoriesID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documentshare`
--
ALTER TABLE `documentshare`
  MODIFY `DocumentShareID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `FaqID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `push_notfications`
--
ALTER TABLE `push_notfications`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `remindercategories`
--
ALTER TABLE `remindercategories`
  MODIFY `ReminderCategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `remindercategorymetas`
--
ALTER TABLE `remindercategorymetas`
  MODIFY `ReminderCategoryMetaID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `remindermetas`
--
ALTER TABLE `remindermetas`
  MODIFY `ReminderMetaID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `ReminderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `reminder_image`
--
ALTER TABLE `reminder_image`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `servicecategories`
--
ALTER TABLE `servicecategories`
  MODIFY `ServiceCategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  MODIFY `ServiceProviderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `subscriptionplans`
--
ALTER TABLE `subscriptionplans`
  MODIFY `SubscriptionPlanID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `TicketID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trainingcategories`
--
ALTER TABLE `trainingcategories`
  MODIFY `TrainingCategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `TrainingID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userdocuments`
--
ALTER TABLE `userdocuments`
  MODIFY `UserDocumentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `remindermetas`
--
ALTER TABLE `remindermetas`
  ADD CONSTRAINT `remindermetas_ibfk_1` FOREIGN KEY (`ReminderID`) REFERENCES `reminders` (`ReminderID`),
  ADD CONSTRAINT `remindermetas_ibfk_2` FOREIGN KEY (`ReminderCategoryMetaID`) REFERENCES `remindercategorymetas` (`ReminderCategoryMetaID`);

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_ibfk_1` FOREIGN KEY (`ReminderCategoryID`) REFERENCES `remindercategories` (`ReminderCategoryID`);

--
-- Constraints for table `userdocuments`
--
ALTER TABLE `userdocuments`
  ADD CONSTRAINT `userdocuments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
