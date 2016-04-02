-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2016 a las 10:17:35
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos_espera_cesar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Estado 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `locationname` varchar(50) NOT NULL DEFAULT '',
  `deladd1` varchar(40) NOT NULL DEFAULT '',
  `deladd2` varchar(40) NOT NULL DEFAULT '',
  `deladd3` varchar(40) NOT NULL DEFAULT '',
  `deladd4` varchar(40) NOT NULL DEFAULT '',
  `deladd5` varchar(20) NOT NULL DEFAULT '',
  `deladd6` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(55) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `taxprovinceid` tinyint(4) NOT NULL DEFAULT '1',
  `cashsalecustomer` varchar(21) NOT NULL,
  `managed` int(11) DEFAULT '0',
  `currabrev` char(3) NOT NULL,
  `branchcode` varchar(20) NOT NULL,
  `rebatemin` decimal(9,3) DEFAULT '0.000',
  `rebatemax` decimal(9,3) DEFAULT '0.000',
  `codigo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`loccode`, `locationname`, `deladd1`, `deladd2`, `deladd3`, `deladd4`, `deladd5`, `deladd6`, `tel`, `fax`, `email`, `contact`, `taxprovinceid`, `cashsalecustomer`, `managed`, `currabrev`, `branchcode`, `rebatemin`, `rebatemax`, `codigo`) VALUES
('BEJ', 'VZLA BEJUMA', 'Av. Vzla, Edf. Icono, Piso 3,Ofc 302', 'Pueblo Nuevo San Antonio', 'Estado Tachira', 'Venezuela', '', '', '04243586338', '', 'ventas_snt@tumotopartes.com', 'Cesar Quintero', 1, '0022-0022', 0, 'VEF', 'J317624831', '0.000', '0.000', '03'),
('CUC', 'COL CUCUTA', 'Autopista Internacional', 'Numero 11-227', 'La Parada', 'Norte de Santander', 'Colombia', '', '005775709546', '', 'ventas_cucuta@tumotopartes.com', 'David Rojas', 3, '0004-0004', 0, 'COP', 'J313303232', '0.000', '0.000', '05'),
('MCY', 'VZLA SANTA ROSA', 'Calle San Miguel, numero 62', 'Santa Rosa', 'Maracay', 'Aragua', '', '', '0243 2465997', '', 'ventas_maracay@tumotopartes.com', 'Alvaro Diaz', 1, '0003-0003', 0, 'VEF', 'J313303232', '10.000', '30.000', '06'),
('MRD', 'VZLA MIRANDA', ' ', '', '', '', '', '', '', '', '', '', 1, '0015-0015', 0, 'VEF', '', '0.000', '0.000', '04'),
('MTB', 'VZLA MONTALBAN', ' ', '', '', '', '', '', '', '', '', '', 1, '0021-0021', 0, 'VEF', '', '0.000', '0.000', '02'),
('SMN', 'VZLA LOS SAMANES', '', 'Los Samanes', 'Valencia', 'Carabobo', 'Venezuela', '', '02432450759', '', 'ventas_empire@tumotopartes.com', 'Ruben Sandia', 1, '0023-0023', 0, 'VEF', 'J313303232', '0.000', '0.000', '08'),
('SNC', 'VZLA SAN CRISTOBAL', 'Cesar Quintero', '', '', '', '', '', '', '', '', '', 1, '', 0, 'VEF', 'J317624831', '0.000', '0.000', '07'),
('VEN', 'VZLA SAN VICENTE', ' Calle San Miguel, #62, ', 'Santa Rosa', 'Maracay', 'Aragua', 'Venezuela', '', '02432465997', '02432465997', 'atencion@tumotopartes.com', 'Yonathan Angel', 1, '0002-0002', 0, 'VEF', 'J317624831', '0.000', '0.000', '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locstock`
--

CREATE TABLE `locstock` (
  `loccode` varchar(5) NOT NULL DEFAULT '',
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '0',
  `reorderlevel` bigint(20) NOT NULL DEFAULT '1',
  `location` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `locstock`
--

INSERT INTO `locstock` (`loccode`, `stockid`, `quantity`, `reorderlevel`, `location`) VALUES
('BEJ', '100-000', 0, 1, ''),
('BEJ', '100-001', 0, 1, ''),
('BEJ', '100-002', 0, 1, ''),
('BEJ', '100-003', 0, 1, ''),
('BEJ', '100-140', 0, 1, ''),
('BEJ', '100-145', 0, 1, ''),
('BEJ', '100-258', 0, 1, ''),
('BEJ', '100-336', 0, 1, ''),
('BEJ', '100-411', 5, 2, '08H'),
('BEJ', '100-421', 0, 1, ''),
('BEJ', '100-425', 2, 2, '08H'),
('BEJ', '100-632', 2, 2, '12C'),
('BEJ', '100-635', 0, 1, '13D'),
('BEJ', '100-663', 0, 1, ''),
('CUC', '100-000', 0, 1, ''),
('CUC', '100-001', 0, 1, ''),
('CUC', '100-002', 0, 1, ''),
('CUC', '100-003', 0, 1, ''),
('CUC', '100-140', 0, 1, ''),
('CUC', '100-145', 0, 1, ''),
('CUC', '100-258', 0, 1, ''),
('CUC', '100-336', 0, 1, ''),
('CUC', '100-411', 0, 1, ''),
('CUC', '100-421', 0, 1, ''),
('CUC', '100-425', 0, 1, ''),
('CUC', '100-632', 0, 1, ''),
('CUC', '100-635', 0, 1, ''),
('CUC', '100-663', 0, 1, ''),
('MCY', '100-000', 0, 1, ''),
('MCY', '100-001', 0, 1, ''),
('MCY', '100-002', 0, 1, ''),
('MCY', '100-003', 0, 1, '01G'),
('MCY', '100-140', 0, 1, ''),
('MCY', '100-145', 0, 1, ''),
('MCY', '100-258', 0, 1, '10J'),
('MCY', '100-336', 0, 1, ''),
('MCY', '100-411', 0, 1, '17E'),
('MCY', '100-421', 0, 1, ''),
('MCY', '100-425', 0, 1, '18D'),
('MCY', '100-632', 0, 1, '06B'),
('MCY', '100-635', 0, 1, ''),
('MCY', '100-663', 0, 1, ''),
('MRD', '100-000', 0, 1, ''),
('MRD', '100-001', 0, 1, ''),
('MRD', '100-002', 0, 1, ''),
('MRD', '100-003', 0, 1, ''),
('MRD', '100-140', 0, 1, ''),
('MRD', '100-145', 0, 1, ''),
('MRD', '100-258', 0, 1, ''),
('MRD', '100-336', 0, 1, ''),
('MRD', '100-411', 8, 2, '08C'),
('MRD', '100-421', 0, 1, ''),
('MRD', '100-425', 3, 2, '08C'),
('MRD', '100-632', 5, 2, '08G'),
('MRD', '100-635', 1, 1, '12F'),
('MRD', '100-663', 0, 1, ''),
('MTB', '100-000', 0, 1, ''),
('MTB', '100-001', 0, 1, ''),
('MTB', '100-002', 0, 1, ''),
('MTB', '100-003', 0, 1, ''),
('MTB', '100-140', 0, 1, ''),
('MTB', '100-145', 0, 1, ''),
('MTB', '100-258', 0, 1, ''),
('MTB', '100-336', 0, 1, ''),
('MTB', '100-411', 5, 2, '07A'),
('MTB', '100-421', 0, 1, ''),
('MTB', '100-425', 4, 2, '07A'),
('MTB', '100-632', 5, 2, '07D'),
('MTB', '100-635', 1, 1, '07E'),
('MTB', '100-663', 0, 1, ''),
('SMN', '100-000', 0, 1, ''),
('SMN', '100-001', 0, 1, ''),
('SMN', '100-002', 0, 1, ''),
('SMN', '100-003', 0, 1, ''),
('SMN', '100-140', 0, 1, ''),
('SMN', '100-145', 0, 1, ''),
('SMN', '100-258', 0, 1, ''),
('SMN', '100-336', 0, 1, ''),
('SMN', '100-411', 5, 2, '02D'),
('SMN', '100-421', 0, 1, ''),
('SMN', '100-425', 2, 2, '02D'),
('SMN', '100-632', 2, 2, '02D'),
('SMN', '100-635', 0, 1, ''),
('SMN', '100-663', 0, 1, ''),
('SNC', '100-000', 0, 1, ''),
('SNC', '100-001', 0, 1, ''),
('SNC', '100-002', 0, 1, ''),
('SNC', '100-003', 0, 1, ''),
('SNC', '100-140', 0, 1, ''),
('SNC', '100-145', 0, 1, ''),
('SNC', '100-258', 0, 1, ''),
('SNC', '100-336', 0, 1, ''),
('SNC', '100-411', 0, 1, ''),
('SNC', '100-421', 0, 1, ''),
('SNC', '100-425', 0, 1, ''),
('SNC', '100-632', 0, 1, ''),
('SNC', '100-635', 0, 1, ''),
('SNC', '100-663', 0, 1, ''),
('VEN', '100-000', 0, 1, ''),
('VEN', '100-001', 0, 1, ''),
('VEN', '100-002', 0, 1, ''),
('VEN', '100-003', 0, 1, ''),
('VEN', '100-140', 0, 1, ''),
('VEN', '100-145', 0, 1, ''),
('VEN', '100-258', 0, 1, ''),
('VEN', '100-336', 0, 1, ''),
('VEN', '100-411', 10, 1, '51A'),
('VEN', '100-421', 0, 1, ''),
('VEN', '100-425', 33, 1, '06H'),
('VEN', '100-632', 26, 1, '08C'),
('VEN', '100-635', 0, 1, '66D'),
('VEN', '100-663', 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_espera`
--

CREATE TABLE `productos_espera` (
  `id` int(11) NOT NULL,
  `producto` varchar(10) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `sucursal` varchar(10) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_espera`
--

INSERT INTO `productos_espera` (`id`, `producto`, `nombre_producto`, `sucursal`, `cliente`, `telefono`, `estado_id`, `fecha`) VALUES
(1, '100-000', 'Cadena 428x104 Generica', 'BEJ', 'Jaime Irazabal', '04143299925', 1, '2016-04-02 02:47:58'),
(2, '100-000', 'Cadena 428x104 Generica', 'BEJ', 'Jaime Irazabal', '04143299925', 1, '2016-04-02 02:47:58'),
(3, '100-411', 'Swichera Jaguar Tanque Grande (Kit)', 'BEJ', 'Jonas Aponte', '123456789', NULL, '2016-04-02 03:47:00'),
(4, '100-632', 'SWICHERA  LEON GN125 (Kit)', 'MCY', 'Cesar', '48985615', NULL, '2016-04-02 03:47:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stockmaster`
--

CREATE TABLE `stockmaster` (
  `stockid` varchar(20) NOT NULL DEFAULT '',
  `categoryid` varchar(6) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `longdescription` text NOT NULL,
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mbflag` char(1) NOT NULL DEFAULT 'B',
  `lastcurcostdate` date NOT NULL DEFAULT '1800-01-01',
  `actualcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `lastcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `materialcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `labourcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `overheadcost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `lowestlevel` smallint(6) NOT NULL DEFAULT '0',
  `discontinued` tinyint(4) NOT NULL DEFAULT '0',
  `controlled` tinyint(4) NOT NULL DEFAULT '0',
  `eoq` double NOT NULL DEFAULT '0',
  `volume` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `kgs` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `barcode` varchar(50) NOT NULL DEFAULT '',
  `discountcategory` char(2) NOT NULL DEFAULT '',
  `taxcatid` tinyint(4) NOT NULL DEFAULT '1',
  `serialised` tinyint(4) NOT NULL DEFAULT '0',
  `appendfile` varchar(40) NOT NULL DEFAULT 'none',
  `perishable` tinyint(1) NOT NULL DEFAULT '0',
  `decimalplaces` tinyint(4) NOT NULL DEFAULT '0',
  `pansize` double NOT NULL DEFAULT '0',
  `shrinkfactor` double NOT NULL DEFAULT '0',
  `nextserialno` bigint(20) NOT NULL DEFAULT '0',
  `netweight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `location` varchar(20) NOT NULL,
  `minimo` double NOT NULL DEFAULT '3',
  `lastcostrate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price01` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price02` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price03` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `offers` tinyint(1) NOT NULL DEFAULT '1',
  `descriptionUS` varchar(50) DEFAULT NULL,
  `longdescriptionUS` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stockmaster`
--

INSERT INTO `stockmaster` (`stockid`, `categoryid`, `description`, `longdescription`, `units`, `mbflag`, `lastcurcostdate`, `actualcost`, `lastcost`, `materialcost`, `labourcost`, `overheadcost`, `lowestlevel`, `discontinued`, `controlled`, `eoq`, `volume`, `kgs`, `barcode`, `discountcategory`, `taxcatid`, `serialised`, `appendfile`, `perishable`, `decimalplaces`, `pansize`, `shrinkfactor`, `nextserialno`, `netweight`, `location`, `minimo`, `lastcostrate`, `price01`, `price02`, `price03`, `available`, `offers`, `descriptionUS`, `longdescriptionUS`) VALUES
('100-000', '0000', 'Cadena 428x104 Generica', '100-000 Cadena 428x104 Generica', 'each', 'B', '1800-01-01', '0.0000', '0.0000', '2.9920', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '9.0000', '30.2524', '26.8911', '0.0000', 0, 0, NULL, NULL),
('100-001', '0000', 'Asiento CG125 Negro (Aplica Jaguar)', '100-001 Asiento CG125 Negro (Aplica Jaguar) GY1', 'each', 'B', '1800-01-01', '0.0000', '0.0000', '7.1431', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '9.0000', '72.2249', '64.1999', '0.0000', 0, 0, NULL, NULL),
('100-002', '0000', 'Candado Disco Pin Pequeño', '100-002 Candado Disco Pin Pequeño', 'each', 'B', '2012-10-23', '0.0000', '0.8602', '1.2526', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '15.5700', '7.3211', '6.5077', '0.0000', 0, 0, NULL, NULL),
('100-003', '0000', 'Asiento GN125 Jacobs', '100-003 Asiento GN125 Jacobs', 'each', 'B', '2012-09-07', '0.0000', '0.0000', '13.4953', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '14.8200', '82.8658', '73.6584', '0.0000', 1, 0, NULL, NULL),
('100-145', '0000', 'Swichera HORSE MODELO NUEVO (Kit)', '100-145 Swichera HORSE MODELO NUEVO (Kit)', 'Kit', 'B', '2011-01-08', '0.0000', '7.5556', '6.0445', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '9.0000', '61.1164', '54.3257', '0.0000', 0, 0, NULL, NULL),
('100-258', '0000', 'Swichera AX100 (Kit)', '100-258 Swichera AX100 (Kit)', 'each', 'B', '2014-07-10', '0.0000', '18.9367', '2.9760', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '1.0000', '153.1769', '136.1572', '0.0000', 0, 0, NULL, NULL),
('100-336', '0000', 'Swichera (Kit) Horse', '100-336  Swichera (Kit) Horse  Horse H1R', 'Pza', 'B', '2011-01-08', '4.8011', '5.7871', '5.1555', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '9.0000', '52.1280', '46.3360', '0.0000', 0, 0, NULL, NULL),
('100-411', '0000', 'Swichera Jaguar Tanque Grande (Kit)', '100-411 18200000-130 Swichera Jaguar Tanque Grande (Kit)', 'Kit', 'B', '2013-08-23', '3.0000', '11.4033', '7.7705', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '30.0000', '23.5705', '20.9515', '0.0000', 1, 0, NULL, NULL),
('100-421', '0000', 'Swichera Jaguar Tanque Pequeño (Kit)', '100-421 KIT-SWICH-00 Swichera Jaguar Tanque Pequeño (Kit)', 'Kit', 'B', '2011-01-08', '5.2067', '3.0978', '2.4782', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '9.0000', '25.0578', '22.2736', '0.0000', 0, 0, NULL, NULL),
('100-425', '0000', 'Swichera Horse (Kit)', '100-425 Swichera Horse (Kit)', 'Pza', 'B', '2014-09-22', '0.0000', '5.1908', '4.3830', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '0', '0', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '1.0000', '15.2065', '13.5169', '0.0000', 1, 1, NULL, NULL),
('100-632', '0000', 'SWICHERA  LEON GN125 (Kit)', '100-632 SWICHERA  LEON GN125 (Kit)', 'Kit', 'B', '2015-10-26', '0.0000', '3.9172', '3.7562', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '1.0000', '56.1984', '49.9541', '0.0000', 1, 0, 'LEON SWICHERA GN125 (Kit )', '100-632 LEON SWICHERA GN125 (Kit )'),
('100-635', '0000', 'Kit Swichera Matrix', '100-635  KIT SWICHERA  Scooter 150 GY6', 'Pza', 'B', '2015-10-05', '9.4444', '3.2291', '2.9993', '0.0000', '0.0000', 0, 0, 0, 0, '0.0000', '0.0000', '', '', 1, 0, '0', 1, 0, 0, 0, 0, '0.0000', '', 3, '1.0000', '68.7556', '61.1160', '0.0000', 0, 0, NULL, NULL);

--
-- Disparadores `stockmaster`
--
DELIMITER $$
CREATE TRIGGER `stockmaster_AFTER_INSERT` AFTER INSERT ON `stockmaster` FOR EACH ROW begin
  insert into tum12607_pretashop1609.ps_product (id_supplier,id_manufacturer,id_category_default,id_shop_default,id_tax_rules_group,on_sale,online_only,ean13,upc,ecotax,quantity,minimal_quantity,price,wholesale_price,unity,unit_price_ratio,additional_shipping_cost,reference,supplier_reference,location,width,height,depth,weight,out_of_stock,quantity_discount,customizable,uploadable_files,text_fields,active,redirect_type,id_product_redirected,available_for_order,available_date,`condition`,show_price,indexed,visibility,cache_is_pack,cache_has_attachments,is_virtual,cache_default_attribute,date_add,date_upd,advanced_stock_management) values (0,0,2,1,1,0,0,'','',0.000000,0,1,0.000000,0.000000,'',0.000000,0.00, new.stockid,'','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,404,0,1,'0000-00-00','new',1,1,'both',0,0,0,0,NOW(),NOW(),0);
  SET @id_product = (SELECT id_product FROM tum12607_pretashop1609.ps_product ORDER BY id_product DESC LIMIT 1);
    
  SET @descripcion_nueva = lower(new.description);
  SET @descripcion_nueva = replace(@descripcion_nueva, 'ñ','n');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'á','a');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'ó','o');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'í','i');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'ú','u');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'é','e');
    SET @descripcion_nueva = replace(@descripcion_nueva, 'ú','u');
  SET @descripcion_nueva = replace(@descripcion_nueva, '/','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '(','');
  SET @descripcion_nueva = replace(@descripcion_nueva, ')','');
  SET @descripcion_nueva = replace(@descripcion_nueva, ',','');
  SET @descripcion_nueva = replace(@descripcion_nueva, ';','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '"','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '&quot','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '&','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '*','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '+','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '^','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '#','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '@','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '!','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '~','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '`','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '_','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '>','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '<','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '=','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '[','');
  SET @descripcion_nueva = replace(@descripcion_nueva, ']','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '{','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '}','');
  SET @descripcion_nueva = replace(@descripcion_nueva, '|','');

  SET @descripcion_nueva_long = lower(new.longdescription);

  SET @descripcion_nueva_long = replace(@descripcion_nueva_long, '&quot','');
  

  SET @descripcion_nueva_longUS = lower(new.longdescriptionUS);

  SET @descripcion_nueva_longUS = replace(@descripcion_nueva_longUS, '&quot','');


    SET @descripcion_nuevaUS = lower(new.descriptionUS);

  SET @descripcion_nuevaUS = replace(@descripcion_nuevaUS, '&quot','');
  


  
  insert into tum12607_pretashop1609.ps_product_lang (id_product,id_shop,id_lang,description,description_short,link_rewrite,meta_description,meta_keywords,meta_title,`name`,available_now,available_later) 
  values (@id_product,1,1,new.description,@descripcion_nueva_long,replace(@descripcion_nueva,' ','-'),'','','',@descripcion_nueva,'','');
  insert into tum12607_pretashop1609.ps_product_lang (id_product,id_shop,id_lang,description,description_short,link_rewrite,meta_description,meta_keywords,meta_title,`name`,available_now,available_later) 
  values (@id_product,1,2,@descripcion_nuevaUS,@descripcion_nueva_longUS,replace(@descripcion_nueva,' ','-'),'','','',@descripcion_nueva,'','');
  insert into tum12607_pretashop1609.ps_product_lang (id_product,id_shop,id_lang,description,description_short,link_rewrite,meta_description,meta_keywords,meta_title,`name`,available_now,available_later) 
  values (@id_product,1,3,new.description,@descripcion_nueva_long,replace(@descripcion_nueva,' ','-'),'','','',@descripcion_nueva,'','');
  insert into tum12607_pretashop1609.ps_product_lang (id_product,id_shop,id_lang,description,description_short,link_rewrite,meta_description,meta_keywords,meta_title,`name`,available_now,available_later) 
  values (@id_product,1,4,@descripcion_nueva,@descripcion_nueva_long,replace(@descripcion_nueva,' ','-'),'','','',@descripcion_nueva,'','');
  insert into tum12607_pretashop1609.ps_product_lang (id_product,id_shop,id_lang,description,description_short,link_rewrite,meta_description,meta_keywords,meta_title,`name`,available_now,available_later) 
  values (@id_product,1,5,new.description,@descripcion_nueva_long,replace(@descripcion_nueva,' ','-'),'','','',@descripcion_nueva,'','');
    insert into tum12607_pretashop1609.ps_product_shop (id_product,id_shop,id_category_default,id_tax_rules_group,on_sale,online_only,ecotax,minimal_quantity,price,wholesale_price,unity,unit_price_ratio,additional_shipping_cost,customizable,uploadable_files,text_fields,active,redirect_type,id_product_redirected,available_for_order,available_date,`condition`,show_price,indexed,visibility,cache_default_attribute,advanced_stock_management,date_add,date_upd) values (@id_product,1,2,1,0,0,0.000000,1,0.000000,0.000000,'',0.000000,0.00,0,0,0,1,404,0,1,'0000-00-00','new',1,1,'both',0,0,now(),now());
    insert into tum12607_pretashop1609.ps_stock_available (id_product,id_product_attribute,id_shop,id_shop_group,quantity,depends_on_stock,out_of_stock) values (@id_product,0,1,0,0,0,2);
  SET @position = (select position from tum12607_pretashop1609.ps_category_product where id_category=2 order by position desc limit 1);
  SET @next_position = @position +1;
  insert into tum12607_pretashop1609.ps_category_product (id_category,id_product,position) values (2,@id_product,@next_position);
end
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loccode`),
  ADD KEY `taxprovinceid` (`taxprovinceid`);

--
-- Indices de la tabla `locstock`
--
ALTER TABLE `locstock`
  ADD PRIMARY KEY (`loccode`,`stockid`),
  ADD KEY `StockID` (`stockid`);

--
-- Indices de la tabla `productos_espera`
--
ALTER TABLE `productos_espera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stockmaster`
--
ALTER TABLE `stockmaster`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `CategoryID` (`categoryid`),
  ADD KEY `Description` (`description`),
  ADD KEY `LastCurCostDate` (`lastcurcostdate`),
  ADD KEY `MBflag` (`mbflag`),
  ADD KEY `StockID` (`stockid`,`categoryid`),
  ADD KEY `Controlled` (`controlled`),
  ADD KEY `DiscountCategory` (`discountcategory`),
  ADD KEY `taxcatid` (`taxcatid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `productos_espera`
--
ALTER TABLE `productos_espera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
