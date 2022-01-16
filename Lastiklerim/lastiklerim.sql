-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Oca 2022, 10:41:57
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lastiklerim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-07-05 11:02:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `height`
--

CREATE TABLE `height` (
  `Height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `height`
--

INSERT INTO `height` (`Height`) VALUES
(50),
(60),
(65);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `heightcapacity`
--

CREATE TABLE `heightcapacity` (
  `HeightCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `heightcapacity`
--

INSERT INTO `heightcapacity` (`HeightCapacity`) VALUES
(84),
(87),
(90),
(93);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mycar`
--

CREATE TABLE `mycar` (
  `Brand` text NOT NULL,
  `Model` text NOT NULL,
  `TyreWidth` int(11) NOT NULL,
  `TyreHeightCapacity` int(11) NOT NULL,
  `TyreHeight` int(11) NOT NULL,
  `TyreRimDiameter` int(11) NOT NULL,
  `CarPhoto` text NOT NULL,
  `carId` int(11) NOT NULL,
  `TyreSpecs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productiondate`
--

CREATE TABLE `productiondate` (
  `ProductionDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `productiondate`
--

INSERT INTO `productiondate` (`ProductionDate`) VALUES
(2017),
(2018),
(2019),
(2020),
(2021);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rimdiameter`
--

CREATE TABLE `rimdiameter` (
  `RimDiameter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `rimdiameter`
--

INSERT INTO `rimdiameter` (`RimDiameter`) VALUES
(14),
(15),
(16);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblbrands`
--

CREATE TABLE `tblbrands` (
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `BrandPhoto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblbrands`
--

INSERT INTO `tblbrands` (`BrandName`, `CreationDate`, `UpdationDate`, `BrandPhoto`) VALUES
('Bridgestone', '2017-06-18 16:24:34', '2022-01-15 13:55:11', 'https://www.carlogos.org/tire-logos/bridgestone-logo-5500x1200.png'),
('Dunlop\r\n', '2017-06-18 16:24:34', '2022-01-15 13:54:40', 'https://cdn.worldvectorlogo.com/logos/dunlop-tires.svg'),
('Kormoran\r\n', '2017-06-18 16:24:34', '2022-01-15 13:54:06', 'https://mollaoglu.com.tr/uploads/files/marka.logo_kormoran.svg'),
('Michelin', '2017-06-18 16:24:34', '2022-01-15 13:55:40', 'https://logo-logos.com/wp-content/uploads/2016/10/Michelin_logo.png'),
('Nokian\r\n', '2017-06-18 16:24:34', '2022-01-15 13:37:02', 'https://nokianlastikleri.com/wp-content/uploads/2020/11/Nokian-Infofield-Hakka-Black-720px.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbltyremodels`
--

CREATE TABLE `tbltyremodels` (
  `TyrePhoto` text NOT NULL,
  `TyreBrand` varchar(120) CHARACTER SET latin1 NOT NULL,
  `Price` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `RimDiameter` int(11) NOT NULL,
  `HeightCapacity` int(11) NOT NULL,
  `ProductionDate` int(11) NOT NULL,
  `TyreType` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbltyremodels`
--

INSERT INTO `tbltyremodels` (`TyrePhoto`, `TyreBrand`, `Price`, `FullName`, `Width`, `Height`, `RimDiameter`, `HeightCapacity`, `ProductionDate`, `TyreType`, `id`) VALUES
('https://dcadprod.azureedge.net/b2c-experience-production/attachments/ckg7u03ie07n001kczdyz94r8-mic-o-du-l-1.full.png', 'Michelin', 1000, 'Micheline Alpine 6', 200, 65, 15, 90, 2021, 'Kış', 1),
('https://dcadprod.azureedge.net/b2c-experience-production/attachments/ckg7u03ie07n001kczdyz94r8-mic-o-du-l-1.full.png', 'Michelin', 800, 'Micheline Alpine 6 ', 185, 60, 14, 87, 2021, 'Kış', 2),
('https://cdn.akakce.com/bridgestone/bridgestone-blizzak-lm005-205-55-r16-91h-kis-lastigi-z.jpg', 'Bridgestone', 1200, 'Blizzak LM005', 195, 65, 16, 84, 2021, 'Kış', 3),
('https://productimages.hepsiburada.net/s/21/375/9937448763442.jpg', 'Kormoran\r\n', 970, 'Winter', 200, 65, 15, 87, 2021, 'Kış', 4),
('https://productimages.hepsiburada.net/s/3/375/9618713968690.jpg', 'Dunlop\r\n', 914, 'Winter Ice', 195, 50, 15, 93, 2021, 'Kış', 5),
('https://mcdn01.gittigidiyor.net/74086/tn24/740864601_tn24_0.jpg', 'Dunlop\r\n', 1333, 'Sp Sport', 200, 65, 15, 90, 2021, 'Yaz', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `carId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`, `carId`) VALUES
(8, 'emre kızıltoprak', 'emre.kzltprkk@gmail.com', '202cb962ac59075b964b07152d234b70', '32422452', NULL, NULL, NULL, NULL, '2022-01-16 09:01:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `width`
--

CREATE TABLE `width` (
  `Width` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `width`
--

INSERT INTO `width` (`Width`) VALUES
(185),
(195),
(200);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `height`
--
ALTER TABLE `height`
  ADD PRIMARY KEY (`Height`),
  ADD KEY `Height` (`Height`);

--
-- Tablo için indeksler `heightcapacity`
--
ALTER TABLE `heightcapacity`
  ADD PRIMARY KEY (`HeightCapacity`),
  ADD KEY `HeightCapacity` (`HeightCapacity`);

--
-- Tablo için indeksler `mycar`
--
ALTER TABLE `mycar`
  ADD PRIMARY KEY (`carId`),
  ADD KEY `carId` (`carId`);

--
-- Tablo için indeksler `productiondate`
--
ALTER TABLE `productiondate`
  ADD PRIMARY KEY (`ProductionDate`),
  ADD KEY `ProductionDate` (`ProductionDate`);

--
-- Tablo için indeksler `rimdiameter`
--
ALTER TABLE `rimdiameter`
  ADD PRIMARY KEY (`RimDiameter`),
  ADD KEY `RimDiameter` (`RimDiameter`);

--
-- Tablo için indeksler `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`BrandName`),
  ADD KEY `BrandName` (`BrandName`);

--
-- Tablo için indeksler `tbltyremodels`
--
ALTER TABLE `tbltyremodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TyreBrand` (`TyreBrand`),
  ADD KEY `Width` (`Width`),
  ADD KEY `Height` (`Height`),
  ADD KEY `RimDiameter` (`RimDiameter`),
  ADD KEY `HeightCapacity` (`HeightCapacity`),
  ADD KEY `ProductionDate` (`ProductionDate`);

--
-- Tablo için indeksler `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `carId` (`carId`);

--
-- Tablo için indeksler `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `width`
--
ALTER TABLE `width`
  ADD PRIMARY KEY (`Width`),
  ADD KEY `Width` (`Width`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tbltyremodels`
--
ALTER TABLE `tbltyremodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tbltyremodels`
--
ALTER TABLE `tbltyremodels`
  ADD CONSTRAINT `tbltyremodels_ibfk_1` FOREIGN KEY (`TyreBrand`) REFERENCES `tblbrands` (`BrandName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltyremodels_ibfk_2` FOREIGN KEY (`Height`) REFERENCES `height` (`Height`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltyremodels_ibfk_3` FOREIGN KEY (`ProductionDate`) REFERENCES `productiondate` (`ProductionDate`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltyremodels_ibfk_4` FOREIGN KEY (`HeightCapacity`) REFERENCES `heightcapacity` (`HeightCapacity`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltyremodels_ibfk_5` FOREIGN KEY (`Width`) REFERENCES `width` (`Width`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltyremodels_ibfk_6` FOREIGN KEY (`RimDiameter`) REFERENCES `rimdiameter` (`RimDiameter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `tblusers`
--
ALTER TABLE `tblusers`
  ADD CONSTRAINT `tblusers_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `mycar` (`carId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
