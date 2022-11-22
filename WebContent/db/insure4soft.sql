-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2022 às 06:00
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `insure4soft`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aparelho`
--

CREATE TABLE `aparelho` (
  `idAparelho` int(11) NOT NULL,
  `marcaAparelho` varchar(100) NOT NULL,
  `modeloAparelho` varchar(100) NOT NULL,
  `armazenamentoAparelho` varchar(5) NOT NULL,
  `valorAparelho` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aparelho`
--

INSERT INTO `aparelho` (`idAparelho`, `marcaAparelho`, `modeloAparelho`, `armazenamentoAparelho`, `valorAparelho`) VALUES
(1, 'Apple', 'Iphone 8', '64GB', 1599),
(2, 'Apple', 'Iphone 8', '128GB', 1799),
(3, 'Apple', 'Iphone 8', '256GB', 2099),
(4, 'Apple', 'Iphone 8 Plus', '64GB', 1699),
(5, 'Apple', 'Iphone 8 Plus', '128GB', 1899),
(6, 'Apple', 'Iphone 8 Plus', '256GB', 2299),
(7, 'Apple', 'Iphone X', '64GB', 2000),
(8, 'Apple', 'Iphone X', '256GB', 1000),
(9, 'Apple', 'Iphone XR', '64GB', 2000),
(10, 'Apple', 'Iphone XR', '128GB', 2519),
(11, 'Apple', 'Iphone XR', '256GB', 2999),
(12, 'Apple', 'Iphone XS', '64GB', 2200),
(13, 'Apple', 'Iphone XS', '256GB', 3100),
(14, 'Apple', 'Iphone XS', '512GB', 3700),
(15, 'Apple', 'Iphone XS MAX', '64GB', 3299),
(16, 'Apple', 'Iphone XS MAX', '256GB', 3899),
(17, 'Apple', 'Iphone XS MAX', '512GB', 4469),
(18, 'Apple', 'Iphone 11', '64GB', 3099),
(19, 'Apple', 'Iphone 11', '128GB', 3699),
(20, 'Apple', 'Iphone 11', '256GB', 4469),
(21, 'Apple', 'Iphone 11 PRO', '64GB', 3599),
(22, 'Apple', 'Iphone 11 PRO', '256GB', 4999),
(23, 'Apple', 'Iphone 11 PRO MAX', '64GB', 4799),
(24, 'Apple', 'Iphone 11 PRO MAX', '256GB', 6999),
(25, 'Apple', 'Iphone 11 PRO MAX', '512GB', 7500),
(26, 'Apple', 'Iphone SE 2ª Geração', '64GB', 2999),
(27, 'Apple', 'Iphone SE 2ª Geração', '128GB', 3499),
(28, 'Apple', 'Iphone SE 2ª Geração', '256GB', 4199),
(29, 'Apple', 'Iphone 12', '64GB', 3999),
(30, 'Apple', 'Iphone 12', '128GB', 4400),
(31, 'Apple', 'Iphone 12', '256GB', 4750),
(32, 'Apple', 'Iphone 12 MINI', '64GB', 4199),
(33, 'Apple', 'Iphone 12 MINI', '128GB', 4350),
(34, 'Apple', 'Iphone 12 MINI', '256GB', 4699),
(35, 'Apple', 'Iphone 12 PRO', '128GB', 6399),
(36, 'Apple', 'Iphone 12 PRO', '256GB', 6699),
(37, 'Apple', 'Iphone 12 PRO', '512GB', 6999),
(38, 'Apple', 'Iphone 12 PRO MAX', '128GB', 6749),
(39, 'Apple', 'Iphone 12 PRO MAX', '256GB', 7199),
(40, 'Apple', 'Iphone 12 PRO MAX', '512GB', 7499),
(41, 'Apple', 'Iphone 13', '128GB', 4999),
(42, 'Apple', 'Iphone 13', '256GB', 5350),
(43, 'Apple', 'Iphone 13', '512GB', 6199),
(44, 'Apple', 'Iphone 13 MINI', '128GB', 4649),
(45, 'Apple', 'Iphone 13 MINI', '256GB', 5300),
(46, 'Apple', 'Iphone 13 MINI', '512GB', 5579),
(47, 'Apple', 'Iphone 13 PRO', '256GB', 6599),
(48, 'Apple', 'Iphone 13 PRO', '512GB', 7439),
(49, 'Apple', 'Iphone 13 PRO', '1TB', 7899),
(50, 'Apple', 'Iphone 13 PRO MAX', '128GB', 6699),
(51, 'Apple', 'Iphone 13 PRO MAX', '256GB', 7099),
(52, 'Apple', 'Iphone 13 PRO MAX', '512GB', 8000),
(53, 'Apple', 'Iphone 13 PRO MAX', '1TB', 9699),
(54, 'Apple', 'Iphone SE 3', '64GB', 3199),
(55, 'Apple', 'Iphone SE 3', '128GB', 3499),
(56, 'Apple', 'Iphone SE 3', '256GB', 4049),
(57, 'Apple', 'Iphone X', '128GB', 2450),
(58, 'Apple', 'Iphone XS MAX', '128GB', 3599),
(59, 'Apple', 'IPHONE 11 PRO ', '128GB', 4200),
(60, 'Apple', 'Iphone 11 PRO MAX', '128GB', 5699),
(61, 'Apple', 'Iphone 13 PRO', '128GB', 6299),
(77, 'Motorola', 'Edge 30', '256GB', 2400),
(78, 'Motorola', 'Edge 30 Pro', '256GB', 3600),
(79, 'Motorola', 'Edge 20', '128GB', 2000),
(80, 'Motorola', 'Edge 20 Pro ', '256GB', 3100),
(81, 'Motorola', 'Edge 20 Pro lite', '128GB', 1700),
(82, 'Motorola', 'Edge Plus', '256GB', 1800),
(83, 'Motorola', 'Edge', '128GB', 1600),
(84, 'Motorola', 'Moto G 5G', '128GB', 1500),
(85, 'Motorola', 'Moto G 5G Plus', '128GB', 2100),
(86, 'Motorola', 'Moto G7', '64GB', 1000),
(87, 'Motorola', 'Moto G7 Play', '32GB', 700),
(88, 'Motorola', 'Moto G7 Power', '32GB', 850),
(89, 'Motorola', 'Moto G7 Power', '64GB', 1200),
(90, 'Motorola', 'Moto G8', ' 64GB', 800),
(91, 'Motorola', 'Moto G8 Plus', ' 64GB', 850),
(92, 'Motorola', 'Moto G8 Power', ' 64GB', 1050),
(93, 'Motorola', 'Moto G9 Power', '128GB', 1200),
(94, 'Motorola', 'Moto G9 Plus', '128GB', 1200),
(95, 'Motorola', 'Moto G9 Play', '64GB', 1000),
(96, 'Motorola', 'Moto G10', '64GB', 1065),
(97, 'Motorola', 'Moto G10', '128GB', 1500),
(98, 'Motorola', 'Moto G20', '64GB', 900),
(99, 'Motorola', 'Moto G20', '128GB', 1050),
(100, 'Motorola', 'Moto G22', '128GB', 1030),
(101, 'Motorola', 'Moto G30', '64GB', 790),
(102, 'Motorola', 'Moto G30', '128GB', 1450),
(103, 'Motorola', 'Moto G31', '128GB', 1080),
(104, 'Motorola', 'Moto G41', '128GB', 1060),
(105, 'Motorola', 'Moto G42', '128GB', 1300),
(106, 'Motorola', 'Moto G50', '128GB', 1400),
(107, 'Motorola', 'Moto G52', '128GB', 1230),
(108, 'Motorola', 'Moto G60', '128GB', 1370),
(109, 'Motorola', 'Moto G60S', '128GB', 1500),
(110, 'Motorola', 'Moto G62 5G', '256GB', 1450),
(111, 'Motorola', 'Moto G71', '128GB', 1650),
(112, 'Motorola', 'Moto G82', '128GB', 1750),
(113, 'Motorola', 'Moto G100', '128GB', 1260),
(114, 'Motorola', 'Moto G200 5G', '256GB', 2300),
(115, 'Motorola', 'One Fusion+', '128GB', 2000),
(116, 'Motorola', 'One Fusion', '64GB', 1300),
(117, 'Motorola', 'One Fusion', '128GB', 1400),
(118, 'Motorola', 'One Zoom', '128GB', 1040),
(119, 'Motorola', 'One Vision', '128GB', 1070),
(120, 'Motorola', 'One Hyper', '128GB', 1200),
(121, 'Motorola', 'One', '64GB', 700),
(122, 'Motorola', 'One Action', '128GB', 1200),
(123, 'Motorola', 'One Macro', '64GB', 1300),
(124, 'Motorola', 'Razr', '64GB', 4600),
(125, 'Asus', 'Zenfone 8', '128GB', 3100),
(126, 'Asus', 'Zenfone 8 ', '256GB', 3600),
(127, 'Asus', 'Zenfone 8 Flip', '128GB', 5000),
(128, 'Asus', 'Zenfone 8 Flip', '256GB', 5700),
(129, 'Asus', 'Zenfone 7', '128GB', 4100),
(130, 'Asus', 'Zenfone 6', '64GB', 3000),
(131, 'Asus', 'Zenfone 6', '128GB', 2500),
(132, 'Asus', 'Zenfone 6', '256GB', 2900),
(133, 'Asus', 'Zenfone 6', '512GB', 3500),
(134, 'Asus', 'Zenfone Max M2', '32GB', 1400),
(135, 'Asus', 'Zenfone Max M2', '64GB', 1650),
(136, 'Asus', ' Zenfone Max Pro M2', '64GB', 1800),
(137, 'Asus', 'Zenfone Max ProM2', '128GB', 2300),
(138, 'Asus', 'Zenfone Max Plus M1', '32GB', 1100),
(139, 'Asus', 'Zenfone Max Pro M1', '32GB', 1500),
(140, 'Asus', 'Zenfone Max Pro M1', '64GB', 1800),
(141, 'Asus', 'Zenfone Max Shot', '32GB', 1600),
(142, 'Asus', 'Zenfone Max Shot', '64GB', 2100),
(143, 'Asus', 'ROG Phone 5', '128GB', 3900),
(144, 'Asus', 'ROG Phone 5S', '128GB', 7800),
(145, 'Asus', 'ROG Phone 5S', '256GB', 10000),
(146, 'Asus', 'ROG Phone 5S Pro', '512GB', 11500),
(147, 'Asus', 'ROG Phone 3', '128GB', 5000),
(148, 'Asus', 'ROG Phone 3', '256GB', 5300),
(149, 'Asus', 'ROG Phone 3', '512GB', 6000),
(150, 'Asus', 'ROG Phone 2', '128GB', 8200),
(151, 'Asus', 'ROG Phone 2', '512GB', 9000),
(152, 'Samsung', 'Galaxy S22 Ultra', '256GB', 8400),
(153, 'Samsung', 'Galaxy S22 Plus', '128GB', 5700),
(154, 'Samsung', 'Galaxy S22 Plus', '256GB', 6300),
(155, 'Samsung', 'Galaxy S22', '128GB', 4600),
(156, 'Samsung', 'Galaxy S22', '256GB', 5600),
(157, 'Samsung', 'Galaxy S21 FE', '128GB', 2990),
(158, 'Samsung', 'Galaxy S21 Ultra', '128GB', 8100),
(159, 'Samsung', 'Galaxy S21 Ultra', '256', 8900),
(160, 'Samsung', 'Galaxy S21 Ultra', '512GB', 9300),
(161, 'Samsung', 'Galaxy S21 Plus', '128GB', 5300),
(162, 'Samsung', 'Galaxy S21 Plus', '256GB', 5830),
(163, 'Samsung', 'Galaxy S21', '128GB', 4200),
(164, 'Samsung', 'Galaxy S20 FE', '128GB', 2200),
(165, 'Samsung', 'Galaxy S20 Ultra', '128GB', 2900),
(166, 'Samsung', 'Galaxy S20 Ultra', '512GB', 3100),
(167, 'Samsung', 'Galaxy S20 Plus', '128GB', 2100),
(168, 'Samsung', 'Galaxy S20', '128GB', 1800),
(169, 'Samsung', 'Galaxy S10 Lite', '128GB', 1400),
(170, 'Samsung', 'Galaxy S10e', '128GB', 1000),
(171, 'Samsung', 'Galaxy S10 Plus', '128GB', 3200),
(172, 'Samsung', 'Galaxy S10 Plus', '512GB', 3500),
(173, 'Samsung', 'Galaxy S10 Plus', '1024G', 4000),
(174, 'Samsung', 'Galaxy S9 Plus', '64GB', 960),
(175, 'Samsung', 'Galaxy S9 Plus', '128GB', 1090),
(176, 'Samsung', 'Galaxy S9', '64GB', 650),
(177, 'Samsung', 'Galaxy S9', '128GB', 780),
(178, 'Samsung', 'Galaxy S8Plus', '64GB', 1000),
(179, 'Samsung', 'Galaxy S8 Plus', '128GB', 1230),
(180, 'Samsung', 'Galaxy S8', '64GB', 800),
(181, 'Samsung', 'Galaxy Note 20 Ultra', '256GB', 6000),
(182, 'Samsung', 'Galaxy Note 20 Ultra', '512GB', 6800),
(183, 'Samsung', 'Galaxy Note 20', '256GB', 3500),
(184, 'Samsung', 'Galaxy Note 10 Lite', '128GB', 3800),
(185, 'Samsung', 'Galaxy Note 10 Plus', '256GB', 3000),
(186, 'Samsung', 'Galaxy Note 10 Plus', '512GB', 3200),
(187, 'Samsung', 'Galaxy Note 10', '256GB', 2800),
(188, 'Samsung', 'Galaxy Note 9', '128GB', 3000),
(189, 'Samsung', 'Galaxy Note 9', '512GB', 3200),
(190, 'Samsung', 'Galaxy Note 8', '64GB', 1070),
(191, 'Samsung', 'Galaxy Note 8', '128GB', 1200),
(192, 'Samsung', 'Galaxy M13', '128GB', 1300),
(193, 'Samsung', 'Galaxy M21s', '64GB', 1900),
(194, 'Samsung', 'Galaxy M22', '128GB', 1200),
(195, 'Samsung', 'Galaxy M23 5G', '128GB', 1400),
(196, 'Samsung', 'Galaxy M31', '128GB', 1600),
(197, 'Samsung', 'Galaxy M32', '128GB', 1660),
(198, 'Samsung', 'Galaxy M51', '128GB', 1200),
(199, 'Samsung', 'Galaxy M52 5G', '128GB', 1700),
(200, 'Samsung', 'Galaxy M53 5G', '128GB', 1300),
(201, 'Samsung', 'Galaxy M62', '128GB', 2500),
(202, 'Samsung', 'Galaxy A52s 5G', '128GB', 1800),
(203, 'Samsung', 'Galaxy A03s', '64GB', 900),
(204, 'Samsung', 'Galaxy A03 ', '64GB', 1000),
(205, 'Samsung', 'Galaxy A03  Core', '32GB', 800),
(206, 'Samsung', 'Galaxy A53 5G', '128GB', 2060),
(207, 'Samsung', 'Galaxy A52 5G', '128GB', 1600),
(208, 'Samsung', 'Galaxy A13', '128GB', 1300),
(209, 'Samsung', 'Galaxy A23', '128GB', 1500),
(210, 'Samsung', 'Galaxy A22', '128GB', 1300),
(211, 'Samsung', 'Galaxy A22 5G', '128GB', 1300),
(212, 'Samsung', 'Galaxy A72', '128GB', 2420),
(213, 'Samsung', 'Galaxy A73 5G', '128GB', 2500),
(214, 'Samsung', 'Galaxy A32', '128GB', 1350),
(215, 'Samsung', 'Galaxy A33 5G', '128GB', 2200),
(216, 'Samsung', 'Galaxy A01', '32GB', 1200),
(217, 'Samsung', 'Galaxy A01 Core', '32GB', 1200),
(218, 'Samsung', 'Galaxy A02s', '32GB', 1060),
(219, 'Samsung', 'Galaxy A12', '64GB', 1165),
(220, 'Samsung', 'Galaxy A31', '128GB', 1600),
(221, 'Samsung', 'Galaxy A21s', '64GB', 1500),
(222, 'Samsung', 'Galaxy A11', '64GB', 1600),
(223, 'Samsung', 'Galaxy A71', '128GB', 2400),
(224, 'Samsung', 'Galaxy A51', '128GB', 2200),
(225, 'Samsung', 'Galaxy A30s', '64GB', 2300),
(226, 'Samsung', 'Galaxy A20s', '32GB', 1900),
(227, 'Samsung', 'Galaxy A10s', '32GB', 850),
(228, 'Samsung', 'Galaxy A6 Plus', '64GB', 74),
(229, 'Samsung', 'Galaxy A7', '64GB', 600),
(230, 'Samsung', 'Galaxy A7', '128GB', 730),
(231, 'Samsung', 'Galaxy A8 Plus', '64GB', 880),
(232, 'Samsung', 'Galaxy A8', '64GB', 500),
(233, 'Samsung', 'Galaxy A9', '128GB', 850),
(234, 'Samsung', 'Galaxy A80', '128GB', 4000),
(235, 'Samsung', 'Galaxy A70', '128GB', 110),
(236, 'Samsung', 'Galaxy A50', '64GB', 760),
(237, 'Samsung', 'Galaxy A50', '128GB', 810),
(238, 'Samsung', 'Galaxy A30', '64GB', 800),
(239, 'Samsung', 'Galaxy A20', '32GB', 610),
(240, 'Samsung', 'Galaxy A10', '32GB', 550),
(241, 'Samsung', 'Galaxy Z Fold 3', '256GB', 9800),
(242, 'Samsung', 'Galaxy Z Fold 3', '512GB', 12800),
(243, 'Samsung', 'Galaxy Z Fold 2', '256GB', 8100),
(244, 'Samsung', 'Galaxy Flip', '256GB', 7500),
(245, 'Samsung', 'Galaxy J8', '64GB', 670),
(246, 'Samsung', 'Galaxy J7 Duo', '32GB', 340),
(247, 'Samsung', 'Galaxy J6 Plus', '32GB', 500),
(248, 'Samsung', 'Galaxy J6', '32GB', 600),
(249, 'Samsung', 'Galaxy J6', '64GB', 680),
(250, 'Samsung', 'Galaxy J4 Plus', '32GB', 520),
(251, 'Samsung', 'Galaxy J4', '16GB', 320),
(252, 'Samsung', 'Galaxy J4', '32GB', 400),
(253, 'Samsung', 'Galaxy J4 Core', '16GB', 420),
(254, 'Samsung', 'Galaxy J7 Pro', '64GB', 600),
(255, 'Samsung', 'Galaxy J4 Pro (2018)', '16GB', 300),
(256, 'Xiaomi', 'Mi 12', '128GB', 4600),
(257, 'Xiaomi', 'Mi 12', '256GB', 5000),
(258, 'Xiaomi', 'Mi 11T', '128GB', 2700),
(259, 'Xiaomi', 'Mi 11T', '256GB', 2950),
(260, 'Xiaomi', 'Mi 11T Pro', '256GB', 3500),
(261, 'Xiaomi', 'Mi 11T Lite', '128GB', 2000),
(262, 'Xiaomi', 'Mi 11T Lite 5G', '128GB', 2200),
(263, 'Xiaomi', 'Mi 11T Lite 5G NE', '128GB', 2150),
(264, 'Xiaomi', 'Mi 11', '128GB', 2250),
(265, 'Xiaomi', 'Mi 11', '256GB', 2400),
(266, 'Xiaomi', 'Mi 10', '128GB', 1600),
(267, 'Xiaomi', 'Mi 10', '256GB', 1820),
(268, 'Xiaomi', 'Mi 10 Pro', '256GB', 2100),
(269, 'Xiaomi', 'Mi 10 Ultra', '128GB', 3000),
(270, 'Xiaomi', 'Mi 10 Ultra', '256GB', 3300),
(271, 'Xiaomi', 'Mi 10 Ultra', '512GB', 4700),
(272, 'Xiaomi', 'Mi 10 Lite', '64GB', 2300),
(273, 'Xiaomi', 'Mi 10 Lite', '256GB', 2810),
(274, 'Xiaomi', 'Mi 10T', '128GB', 1900),
(275, 'Xiaomi', 'Mi 10T Pro', '128GB', 3000),
(276, 'Xiaomi', 'Mi 10T Pro', '256GB', 3200),
(277, 'Xiaomi', 'Mi 10T Lite', '64GB', 1800),
(278, 'Xiaomi', 'Mi 10T Lite', '128GB', 2000),
(279, 'Xiaomi', 'Mi Note 10', '128GB', 1800),
(280, 'Xiaomi', 'Mi Note 10 Pro', '256GB', 2050),
(281, 'Xiaomi', 'Mi Note 9', '64GB', 1400),
(282, 'Xiaomi', 'Mi Note 9', '128GB', 1620),
(283, 'Xiaomi', 'Mi Note 9 Lite', '64GB', 2500),
(284, 'Xiaomi', 'Mi Note 9 Lite', '128GB', 2690),
(285, 'Xiaomi', 'Mi Note 9 SE', '64GB', 2700),
(286, 'Xiaomi', 'Mi Note 9 SE', '128GB', 3000),
(287, 'Xiaomi', 'Mi Note 9T', '64GB', 1900),
(288, 'Xiaomi', 'Mi Note 9T', '128GB', 2200),
(289, 'Xiaomi', 'Mi Note 9T Pro', '64GB', 1900),
(290, 'Xiaomi', 'Mi Note 9T Pro', '128GB', 1670),
(291, 'Xiaomi', 'Mi Note 9T Pro', '256GB', 1800),
(292, 'Xiaomi', 'Mi Note 8', '64GB', 1300),
(293, 'Xiaomi', 'Mi Note 8', '128GB', 1500),
(294, 'Xiaomi', 'Mi Note 8', '256GB', 1970),
(295, 'Xiaomi', 'Mi Note 8 Lite', '64GB', 1400),
(296, 'Xiaomi', 'Mi Note 8 Lite', '128GB', 1630),
(297, 'Xiaomi', 'Mi Note A3', '64GB', 1200),
(298, 'Xiaomi', 'Mi Note A3', '128GB', 1500),
(299, 'Xiaomi', 'Poco F2 Pro', '128GB', 4300),
(300, 'Xiaomi', 'Poco F2 Pro', '256GB', 4710),
(301, 'Xiaomi', 'Poco F3', '128GB', 2300),
(302, 'Xiaomi', 'Poco F3', '256GB', 2700),
(303, 'Xiaomi', 'Poco M4 Pro 5G', '64GB', 1700),
(304, 'Xiaomi', 'Poco M4 Pro 5G', '128GB', 2000),
(305, 'Xiaomi', 'Poco M3', '64GB', 1100),
(306, 'Xiaomi', 'Poco M3', '128GB', 1500),
(307, 'Xiaomi', 'Poco M3 Pro 5G', '64GB', 1300),
(308, 'Xiaomi', 'Poco M3 Pro 5G', '128GB', 1700),
(309, 'Xiaomi', 'Poco X3', '64GB', 2300),
(310, 'Xiaomi', 'Poco X3', '128GB', 2600),
(311, 'Xiaomi', 'Poco X3 Pro', '128GB', 3220),
(312, 'Xiaomi', 'Poco X3 Pro', '256GB', 3500),
(313, 'Xiaomi', 'Poco X3 GT', '128GB', 3000),
(314, 'Xiaomi', 'Poco X3 GT', '256GB', 3200),
(315, 'Xiaomi', 'PocoPhone F1', '64GB', 2300),
(316, 'Xiaomi', 'PocoPhone F1', '128GB', 2600),
(317, 'Xiaomi', 'Poco X4 Pro 5G', '128GB', 1900),
(318, 'Xiaomi', 'Poco X4 Pro 5G', '256GB', 2200),
(319, 'Xiaomi', 'Redmi Note 11S', '64GB', 1200),
(320, 'Xiaomi', 'Redmi Note 11S', '128GB', 1420),
(321, 'Xiaomi', 'Redmi Note 11S 5G', '128GB', 1600),
(322, 'Xiaomi', 'Redmi Note 11S Pro', '128GB', 1590),
(323, 'Xiaomi', 'Redmi Note 11S Pro 5G', '128GB', 1800),
(324, 'Xiaomi', 'Redmi Note 11S Pro Plus 5G', '128GB', 2000),
(325, 'Xiaomi', 'Redmi Note 11', '64GB', 1250),
(326, 'Xiaomi', 'Redmi Note 11', '128GB', 1500),
(327, 'Xiaomi', 'Redmi Note 10 Pro Max', '128GB', 2200),
(328, 'Xiaomi', 'Redmi Note 10 ', '64GB', 1650),
(329, 'Xiaomi', 'Redmi Note 10 ', '128GB', 1840),
(330, 'Xiaomi', 'Redmi Note 10  Lite', '128GB', 1400),
(331, 'Xiaomi', 'Redmi Note 10S', '64GB', 1300),
(332, 'Xiaomi', 'Redmi Note 10  Pro', '64GB', 2500),
(333, 'Xiaomi', 'Redmi Note 10  Pro', '128GB', 2870),
(334, 'Xiaomi', 'Redmi Note 9', '32GB', 1600),
(335, 'Xiaomi', 'Redmi Note 9', '64GB', 1800),
(336, 'Xiaomi', 'Redmi Note 9', '128GB', 1920),
(337, 'Xiaomi', 'Redmi Note 9 Pro', '64GB', 1830),
(338, 'Xiaomi', 'Redmi Note 9 Pro', '128GB', 1900),
(339, 'Xiaomi', 'Redmi Note 9 Pro Max', '64GB', 2000),
(340, 'Xiaomi', 'Redmi Note 8(2021)', '64GB', 1400),
(341, 'Xiaomi', 'Redmi Note 8(2021)', '128GB', 1690),
(342, 'Xiaomi', 'Redmi Note 8 Pro', '64GB', 1400),
(343, 'Xiaomi', 'Redmi Note 8 Pro', '128GB', 1700),
(344, 'Xiaomi', 'Redmi Note 8 Pro', '256GB', 1920),
(345, 'Xiaomi', 'Redmi Note 8T', '64GB', 1500),
(346, 'Xiaomi', 'Redmi Note 8T', '128GB', 1950),
(347, 'Xiaomi', 'Redmi Note 7', '128GB', 909),
(348, 'Xiaomi', 'Redmi Note 7 Pro', '64GB', 1000),
(349, 'Xiaomi', 'Redmi Note 7 Pro', '128GB', 1500),
(350, 'Xiaomi', 'Redmi K30 Ultra', '128GB', 4200),
(351, 'Xiaomi', 'Redmi K30 Ultra', '256GB', 4820),
(352, 'Xiaomi', 'Redmi K30 Ultra', '512GB', 5600);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(60) NOT NULL,
  `cpfCliente` varchar(14) NOT NULL,
  `telefoneCliente` varchar(15) NOT NULL,
  `emailCliente` varchar(120) NOT NULL,
  `senhaCliente` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `cpfCliente`, `telefoneCliente`, `emailCliente`, `senhaCliente`) VALUES
(1, 'Maria Silva', '222.222.222-22', '(21) 91214-3333', 'maria@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecocliente`
--

CREATE TABLE `enderecocliente` (
  `idEnderecoCliente` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(140) NOT NULL,
  `rua` varchar(140) NOT NULL,
  `logradouro` int(10) NOT NULL,
  `complemento` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enderecocliente`
--

INSERT INTO `enderecocliente` (`idEnderecoCliente`, `idCliente`, `cep`, `cidade`, `bairro`, `rua`, `logradouro`, `complemento`) VALUES
(1, 1, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecofuncionario`
--

CREATE TABLE `enderecofuncionario` (
  `idEnderecoFuncionario` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(140) NOT NULL,
  `rua` varchar(140) NOT NULL,
  `numero` int(10) NOT NULL,
  `complemento` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formapagamento`
--

CREATE TABLE `formapagamento` (
  `idFormaPagamento` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `formaPagamento` varchar(10) NOT NULL,
  `numeroCartao` varchar(19) NOT NULL,
  `dataValidade` varchar(5) NOT NULL,
  `cvv` int(3) NOT NULL,
  `titularCartao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(140) NOT NULL,
  `telefoneFuncionario` varchar(15) NOT NULL,
  `emailFuncionario` varchar(300) NOT NULL,
  `cpfFuncionario` varchar(100) NOT NULL,
  `senhaFuncionario` varchar(150) NOT NULL,
  `cargoFuncionario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `telefoneFuncionario`, `emailFuncionario`, `cpfFuncionario`, `senhaFuncionario`, `cargoFuncionario`) VALUES
(1, 'I4S', '(00) 00000-0000', 'i4s@adm', '000.000.000-00', '12345678', 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguro`
--

CREATE TABLE `seguro` (
  `idSeguro` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idAparelho` int(11) NOT NULL,
  `idFormaPagamento` int(11) NOT NULL,
  `planoSeguro` varchar(15) NOT NULL,
  `valorSeguro` double NOT NULL,
  `statusSeguro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `seguro`
--

INSERT INTO `seguro` (`idSeguro`, `idCliente`, `idAparelho`, `idFormaPagamento`, `planoSeguro`, `valorSeguro`, `statusSeguro`) VALUES
(2, 1, 14, 1, 'Soft Bronze', 95.5, 'Ativo'),
(10, 1, 156, 0, 'Soft Prata', 203.5, 'Ativo'),
(11, 1, 261, 0, 'Soft Ouro', 85.5, 'Ativo'),
(12, 1, 79, 0, 'Soft Bronze', 79.5, 'Ativo'),
(13, 1, 129, 0, 'Soft Bronze', 142.5, 'Em Análise');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinistro`
--

CREATE TABLE `sinistro` (
  `idSinistro` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idSeguro` int(11) NOT NULL,
  `ocorrencia` varchar(50) NOT NULL,
  `boletimDeOcorrencia` varchar(300) NOT NULL,
  `dataDoAviso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aparelho`
--
ALTER TABLE `aparelho`
  ADD PRIMARY KEY (`idAparelho`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `enderecocliente`
--
ALTER TABLE `enderecocliente`
  ADD PRIMARY KEY (`idEnderecoCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `enderecofuncionario`
--
ALTER TABLE `enderecofuncionario`
  ADD PRIMARY KEY (`idEnderecoFuncionario`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `formapagamento`
--
ALTER TABLE `formapagamento`
  ADD PRIMARY KEY (`idFormaPagamento`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices para tabela `seguro`
--
ALTER TABLE `seguro`
  ADD PRIMARY KEY (`idSeguro`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idAparelho` (`idAparelho`);

--
-- Índices para tabela `sinistro`
--
ALTER TABLE `sinistro`
  ADD PRIMARY KEY (`idSinistro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aparelho`
--
ALTER TABLE `aparelho`
  MODIFY `idAparelho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `enderecocliente`
--
ALTER TABLE `enderecocliente`
  MODIFY `idEnderecoCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `enderecofuncionario`
--
ALTER TABLE `enderecofuncionario`
  MODIFY `idEnderecoFuncionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formapagamento`
--
ALTER TABLE `formapagamento`
  MODIFY `idFormaPagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `seguro`
--
ALTER TABLE `seguro`
  MODIFY `idSeguro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `sinistro`
--
ALTER TABLE `sinistro`
  MODIFY `idSinistro` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `enderecocliente`
--
ALTER TABLE `enderecocliente`
  ADD CONSTRAINT `enderecocliente_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `enderecofuncionario`
--
ALTER TABLE `enderecofuncionario`
  ADD CONSTRAINT `enderecofuncionario_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `formapagamento`
--
ALTER TABLE `formapagamento`
  ADD CONSTRAINT `formapagamento_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `seguro`
--
ALTER TABLE `seguro`
  ADD CONSTRAINT `seguro_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `seguro_ibfk_2` FOREIGN KEY (`idAparelho`) REFERENCES `aparelho` (`idAparelho`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
