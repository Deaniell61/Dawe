
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-10-2016 a las 19:50:19
-- Versión del servidor: 10.0.23-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u757044153_her`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE IF NOT EXISTS `accesos` (
  `idAccesos` int(11) NOT NULL AUTO_INCREMENT,
  `Agrega` int(11) DEFAULT NULL,
  `Modifica` int(11) DEFAULT NULL,
  `Mostrar` int(11) DEFAULT NULL,
  `Elimina` int(11) DEFAULT NULL,
  `idUsuarios` int(11) DEFAULT NULL,
  `idModulo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAccesos`),
  KEY `AccesoModulo_idx` (`idModulo`),
  KEY `AccesoUsuarios_idx` (`idUsuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`idAccesos`, `Agrega`, `Modifica`, `Mostrar`, `Elimina`, `idUsuarios`, `idModulo`) VALUES
(15, 1, 1, 1, 1, 1, 3),
(16, 1, 1, 1, 1, 1, 2),
(18, 1, 1, 1, 1, 1, 4),
(19, 1, 1, 1, 1, 1, 5),
(20, 1, 1, 1, 1, 1, 6),
(21, 1, 1, 1, 1, 1, 7),
(22, 1, 1, 1, 1, 1, 8),
(23, 1, 1, 1, 1, 1, 1),
(24, 1, 1, 1, 0, 2, 7),
(25, 1, 1, 1, 0, 2, 4),
(26, 1, 1, 1, 0, 2, 3),
(27, 1, 0, 1, 0, 2, 6),
(28, 0, 0, 1, 0, 2, 5),
(29, 1, 1, 1, 0, 3, 7),
(30, 0, 0, 1, 0, 3, 6),
(31, 1, 1, 1, 0, 3, 4),
(32, 0, 0, 1, 0, 3, 1),
(33, 1, 1, 1, 1, 0, 2),
(34, 1, 1, NULL, 1, 0, 1),
(35, 1, 1, NULL, 1, 0, 4),
(36, 1, 1, NULL, 1, 0, 3),
(37, 1, 1, NULL, 1, 0, 6),
(38, 1, 1, NULL, 1, 0, 5),
(39, 1, 1, NULL, 1, 0, 8),
(40, 1, 1, NULL, 1, 0, 7),
(42, 1, 1, NULL, 1, 0, 9),
(43, 1, 1, NULL, 1, 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Nit` varchar(20) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Municipio` int(11) DEFAULT NULL,
  `Pais` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `ClientePais_idx` (`Pais`),
  KEY `ClineteDepartamento_idx` (`Departamento`),
  KEY `ClienteMunicipio_idx` (`Municipio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Apellido`, `Nit`, `Departamento`, `Municipio`, `Pais`, `estado`, `direccion`, `telefono`) VALUES
(1, 'Novaguatemala S.A', '', '38466607', NULL, NULL, NULL, 1, 'ciudad', '78810404'),
(2, 'WILIAM CHINO', 'VASQUES', 'C/F', NULL, NULL, NULL, 1, 'REU', '47648804'),
(6, 'CLIENTES VARIOS', 'VARIOS', 'C/F', NULL, NULL, NULL, 1, 'CIUDAD', '0000'),
(7, 'CLIENTES VARIOS 2', 'VARIOS', '123', NULL, NULL, NULL, 1, 'CIUDAD', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisiones`
--

CREATE TABLE IF NOT EXISTS `comisiones` (
  `idComisiones` int(11) NOT NULL AUTO_INCREMENT,
  `fechaIni` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `porcentaje` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `idUsuarios` int(11) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComisiones`),
  KEY `ComisionesUsuarios` (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradetalle`
--

CREATE TABLE IF NOT EXISTS `compradetalle` (
  `idCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `subtotal` double DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `precioE` double DEFAULT NULL,
  `precioM` double DEFAULT NULL,
  `descuentos` double DEFAULT NULL,
  `garantia` text,
  `estado` int(11) DEFAULT NULL,
  `idCompras` int(11) DEFAULT NULL,
  `idProductos` int(11) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCompraDetalle`),
  KEY `DetalleCompra_idx` (`idCompras`),
  KEY `DetalleTipo_idx` (`idTipo`),
  KEY `DetalleProducto_idx` (`idProductos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=375 ;

--
-- Volcado de datos para la tabla `compradetalle`
--

INSERT INTO `compradetalle` (`idCompraDetalle`, `subtotal`, `vencimiento`, `cantidad`, `costo`, `precio`, `precioE`, `precioM`, `descuentos`, `garantia`, `estado`, `idCompras`, `idProductos`, `idTipo`) VALUES
(5, 131, NULL, 1, 131, 215, 195.5, 187, NULL, NULL, 1, 1, 5, NULL),
(6, 139, NULL, 1, 139, 225, 204.55, 195.65, NULL, NULL, 1, 1, 6, NULL),
(7, 199, NULL, 1, 199, 325, 295.45, 282.61, NULL, NULL, 1, 1, 7, NULL),
(8, 173, NULL, 1, 173, 280, 254.55, 243.48, NULL, NULL, 1, 1, 8, NULL),
(9, 154, NULL, 1, 154, 250, 227.27, 217.39, NULL, NULL, 1, 1, 9, NULL),
(10, 223, NULL, 1, 223, 350, 318.18, 304.35, NULL, NULL, 1, 1, 10, NULL),
(11, 0, NULL, 0, 148, 245, 222.73, 213.04, NULL, NULL, 1, 1, 11, NULL),
(12, 156, NULL, 1, 156, 250, 227.27, 217.39, NULL, NULL, 1, 1, 12, NULL),
(13, 156.7, NULL, 1, 156.7, 250, 227.27, 217.39, NULL, NULL, 1, 1, 13, NULL),
(14, 255, NULL, 1, 255, 380, 345.45, 330.43, NULL, NULL, 1, 1, 14, NULL),
(15, 0, NULL, 0, 135.2, 215, 195.45, 186.96, NULL, NULL, 1, 1, 15, NULL),
(16, 245, NULL, 1, 245, 390, 354.55, 339.13, NULL, NULL, 1, 1, 16, NULL),
(17, 0, NULL, 0, 275, 430, 390.91, 373.91, NULL, NULL, 1, 1, 17, NULL),
(18, 329, NULL, 1, 329, 525, 477.27, 456.52, NULL, NULL, 1, 1, 18, NULL),
(19, 245, NULL, 1, 245, 400, 363.64, 347.83, NULL, NULL, 1, 1, 19, NULL),
(20, 235, NULL, 1, 235, 390, 354.55, 339.13, NULL, NULL, 1, 1, 20, NULL),
(21, 337, NULL, 1, 337, 535, 486.36, 465.22, NULL, NULL, 1, 1, 21, NULL),
(22, 242, NULL, 1, 242, 400, 363.64, 347.83, NULL, NULL, 1, 1, 22, NULL),
(23, 102.75, NULL, 5, 20.55, 45, 40.91, 39.13, NULL, NULL, 1, 1, 23, NULL),
(24, 57.32, NULL, 4, 14.33, 40, 36.36, 34.78, NULL, NULL, 1, 1, 24, NULL),
(25, 101.4, NULL, 6, 16.9, 40, 36.36, 34.78, NULL, NULL, 1, 1, 25, NULL),
(26, 53, NULL, 4, 13.25, 40, 36.36, 34.78, NULL, NULL, 1, 1, 26, NULL),
(27, 147.2, NULL, 4, 36.8, 60, 54.55, 52.17, NULL, NULL, 1, 1, 27, NULL),
(28, 71.6, NULL, 4, 17.9, 40, 36.36, 34.78, NULL, NULL, 1, 1, 28, NULL),
(29, 128.1, NULL, 6, 21.35, 45, 40.91, 39.13, NULL, NULL, 1, 1, 29, NULL),
(30, 53.7, NULL, 3, 17.9, 40, 36.36, 34.78, NULL, NULL, 1, 1, 30, NULL),
(31, 38, NULL, 2, 19, 40, 36.36, 34.78, NULL, NULL, 1, 1, 31, NULL),
(32, 53.6, NULL, 2, 26.8, 45, 40.91, 39.13, NULL, NULL, 1, 1, 32, NULL),
(33, 35.98, NULL, 2, 17.99, 45, 40.91, 39.13, NULL, NULL, 1, 1, 33, NULL),
(34, 90, NULL, 4, 22.5, 45, 40.91, 39.13, NULL, NULL, 1, 1, 34, NULL),
(35, 61.5, NULL, 3, 20.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 35, NULL),
(36, 110.4, NULL, 3, 36.8, 65, 59.09, 56.52, NULL, NULL, 1, 1, 36, NULL),
(37, 88.8, NULL, 6, 14.8, 40, 36.36, 34.78, NULL, NULL, 1, 1, 37, NULL),
(38, 65.4, NULL, 3, 21.8, 45, 40.91, 39.13, NULL, NULL, 1, 1, 38, NULL),
(39, 54.6, NULL, 3, 18.2, 40, 36.36, 34.78, NULL, NULL, 1, 1, 39, NULL),
(40, 92.5, NULL, 5, 18.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 40, NULL),
(41, 62.25, NULL, 3, 20.75, 45, 40.91, 39.13, NULL, NULL, 1, 1, 41, NULL),
(42, 87, NULL, 3, 29, 50, 45.45, 43.48, NULL, NULL, 1, 1, 42, NULL),
(43, 75.2, NULL, 4, 18.8, 40, 36.36, 34.78, NULL, NULL, 1, 1, 43, NULL),
(44, 54.4, NULL, 2, 27.2, 50, 45.45, 43.48, NULL, NULL, 1, 1, 44, NULL),
(45, 50, NULL, 2, 25, 45, 40.91, 39.13, NULL, NULL, 1, 1, 45, NULL),
(46, 39.6, NULL, 2, 19.8, 40, 36.36, 34.78, NULL, NULL, 1, 1, 46, NULL),
(47, 45.8, NULL, 2, 22.9, 45, 40.91, 39.13, NULL, NULL, 1, 1, 47, NULL),
(48, 35, NULL, 2, 17.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 48, NULL),
(49, 30.8, NULL, 1, 30.8, 60, 54.55, 52.17, NULL, NULL, 1, 1, 49, NULL),
(50, 32.5, NULL, 1, 32.5, 60, 54.55, 52.17, NULL, NULL, 1, 1, 50, NULL),
(51, 26.9, NULL, 1, 26.9, 45, 40.91, 39.13, NULL, NULL, 1, 1, 51, NULL),
(52, 58, NULL, 2, 29, 45, 40.91, 39.13, NULL, NULL, 1, 1, 52, NULL),
(53, 48.48, NULL, 2, 24.24, 50, 45.45, 43.48, NULL, NULL, 1, 1, 53, NULL),
(54, 184, NULL, 1, 184, 295, 268.18, 256.52, NULL, NULL, 1, 1, 54, NULL),
(55, 165.75, NULL, 1, 165.75, 285, 259.09, 247.83, NULL, NULL, 1, 1, 55, NULL),
(56, 42.75, NULL, 1, 42.75, 90, 81.82, 78.26, NULL, NULL, 1, 1, 56, NULL),
(57, 39.9, NULL, 1, 39.9, 90, 81.82, 78.26, NULL, NULL, 1, 1, 57, NULL),
(58, 28.75, NULL, 1, 28.75, 50, 45.45, 43.48, NULL, NULL, 1, 1, 58, NULL),
(59, 27.95, NULL, 1, 27.95, 75, 68.18, 65.22, NULL, NULL, 1, 1, 59, NULL),
(60, 73.8, NULL, 1, 73.8, 125, 113.64, 108.7, NULL, NULL, 1, 1, 60, NULL),
(61, 29.25, NULL, 1, 29.25, 60, 54.55, 52.17, NULL, NULL, 1, 1, 61, NULL),
(62, 159, NULL, 1, 159, 250, 227.27, 217.39, NULL, NULL, 1, 1, 62, NULL),
(63, 91, NULL, 1, 91, 150, 136.36, 130.43, NULL, NULL, 1, 1, 63, NULL),
(64, 119.75, NULL, 1, 119.75, 200, 181.82, 173.91, NULL, NULL, 1, 1, 64, NULL),
(65, 21.9, NULL, 2, 10.95, 30, 27.27, 26.09, NULL, NULL, 1, 1, 65, NULL),
(66, 84.45, NULL, 3, 28.15, 50, 45.45, 43.48, NULL, NULL, 1, 1, 66, NULL),
(67, 131.7, NULL, 6, 21.95, 40, 36.36, 34.78, NULL, NULL, 1, 1, 67, NULL),
(68, 31, NULL, 2, 15.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 68, NULL),
(69, 35.4, NULL, 2, 17.7, 40, 36.36, 34.78, NULL, NULL, 1, 1, 69, NULL),
(70, 52, NULL, 1, 52, 85, 77.27, 73.91, NULL, NULL, 1, 1, 70, NULL),
(71, 10.95, NULL, 1, 10.95, 35, 31.82, 30.43, NULL, NULL, 1, 1, 71, NULL),
(72, 0, NULL, 0, 11.9, 35, 31.82, 30.43, NULL, NULL, 1, 1, 72, NULL),
(73, 33.66, NULL, 1, 33.66, 55, 50, 47.83, NULL, NULL, 1, 1, 73, NULL),
(74, 20.4, NULL, 12, 1.7, 15, 13.64, 13.04, NULL, NULL, 1, 1, 74, NULL),
(75, 7.2, NULL, 1, 7.2, 20, 18.18, 17.39, NULL, NULL, 1, 1, 75, NULL),
(76, 75, NULL, 10, 7.5, 20, 18.18, 17.39, NULL, NULL, 1, 1, 76, NULL),
(77, 8.6, NULL, 1, 8.6, 20, 18.18, 17.39, NULL, NULL, 1, 1, 77, NULL),
(78, 31.9, NULL, 11, 2.9, 15, 13.64, 13.04, NULL, NULL, 1, 1, 78, NULL),
(79, 18.25, NULL, 1, 18.25, 60, 54.55, 52.17, NULL, NULL, 1, 1, 79, NULL),
(80, 22.5, NULL, 1, 22.5, 60, 54.55, 52.17, NULL, NULL, 1, 1, 80, NULL),
(81, 119.5, NULL, 10, 11.95, 22, 20, 19.13, NULL, NULL, 1, 1, 81, NULL),
(82, 176, NULL, 1, 176, 270, 245.45, 234.78, NULL, NULL, 1, 1, 82, NULL),
(83, 41.1, NULL, 1, 41.1, 70, 63.64, 60.87, NULL, NULL, 1, 1, 83, NULL),
(84, 28.15, NULL, 1, 28.15, 85, 77.27, 73.91, NULL, NULL, 1, 1, 84, NULL),
(85, 41.1, NULL, 1, 41.1, 70, 63.64, 60.87, NULL, NULL, 1, 1, 85, NULL),
(86, 105, NULL, 10, 10.5, 20, 18.18, 17.39, NULL, NULL, 1, 1, 86, NULL),
(87, 0, NULL, 0, 23.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 87, NULL),
(88, 0, NULL, 0, 19.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 88, NULL),
(89, 19.5, NULL, 1, 19.5, 40, 36.36, 34.78, NULL, NULL, 1, 1, 89, NULL),
(90, 19.7, NULL, 1, 19.7, 40, 36.36, 34.78, NULL, NULL, 1, 1, 90, NULL),
(91, 37.1, NULL, 1, 37.1, 65, 59.09, 56.52, NULL, NULL, 1, 1, 91, NULL),
(92, 59.8, NULL, 1, 59.8, 100, 90.91, 86.96, NULL, NULL, 1, 1, 92, NULL),
(93, 81, NULL, 1, 81, 140, 127.27, 121.74, NULL, NULL, 1, 1, 93, NULL),
(94, 26.1, NULL, 1, 26.1, 45, 40.91, 39.13, NULL, NULL, 1, 1, 94, NULL),
(95, 13.75, NULL, 1, 13.75, 35, 31.82, 30.43, NULL, NULL, 1, 1, 95, NULL),
(96, 20.4, NULL, 2, 10.2, 20, 18.18, 17.39, NULL, NULL, 1, 1, 96, NULL),
(97, 69, NULL, 1, 69, 115, 104.55, 100, NULL, NULL, 1, 1, 97, NULL),
(98, 0, NULL, 0, 50.25, 85, 77.27, 73.91, NULL, NULL, 1, 1, 98, NULL),
(99, 135, NULL, 2, 67.5, 110, 100, 95.65, NULL, NULL, 1, 1, 99, NULL),
(100, 102.5, NULL, 2, 51.25, 100, 90.91, 86.96, NULL, NULL, 1, 1, 100, NULL),
(101, 8, NULL, 2, 4, 15, 13.64, 13.04, NULL, NULL, 1, 1, 101, NULL),
(102, 4.5, NULL, 2, 2.25, 15, 13.64, 13.04, NULL, NULL, 1, 1, 102, NULL),
(103, 9.5, NULL, 2, 4.75, 15, 13.64, 13.04, NULL, NULL, 1, 1, 103, NULL),
(104, 8.5, NULL, 2, 4.25, 15, 13.64, 13.04, NULL, NULL, 1, 1, 104, NULL),
(105, 83.6, NULL, 4, 20.9, 45, 40.91, 39.13, NULL, NULL, 1, 1, 105, NULL),
(106, 21.6, NULL, 2, 10.8, 20, 18.18, 17.39, NULL, NULL, 1, 1, 106, NULL),
(107, 17.8, NULL, 2, 8.9, 20, 18.18, 17.39, NULL, NULL, 1, 1, 107, NULL),
(108, 11.7, NULL, 1, 11.7, 20, 18.18, 17.39, NULL, NULL, 1, 1, 108, NULL),
(109, 34.8, NULL, 3, 11.6, 22, 20, 19.13, NULL, NULL, 1, 1, 109, NULL),
(110, 6.5, NULL, 2, 3.25, 15, 13.64, 13.04, NULL, NULL, 1, 1, 110, NULL),
(111, 79.7, NULL, 1, 79.7, 125, 113.64, 108.7, NULL, NULL, 1, 1, 111, NULL),
(112, 62, NULL, 2, 31, 50, 45.45, 43.48, NULL, NULL, 1, 1, 112, NULL),
(113, 57, NULL, 2, 28.5, 60, 54.55, 52.17, NULL, NULL, 1, 1, 113, NULL),
(114, 15.9, NULL, 1, 15.9, 35, 31.82, 30.43, NULL, NULL, 1, 1, 114, NULL),
(115, 0, NULL, 0, 15, 30, 27.27, 26.09, NULL, NULL, 1, 1, 115, NULL),
(116, 3.25, NULL, 1, 3.25, 15, 13.64, 13.04, NULL, NULL, 1, 1, 116, NULL),
(117, 21, NULL, 2, 10.5, 20, 18.18, 17.39, NULL, NULL, 1, 1, 117, NULL),
(118, 40, NULL, 1, 40, 65, 59.09, 56.52, NULL, NULL, 1, 1, 118, NULL),
(119, 32, NULL, 2, 16, 30, 27.27, 26.09, NULL, NULL, 1, 1, 119, NULL),
(120, 32, NULL, 2, 16, 30, 27.27, 26.09, NULL, NULL, 1, 1, 120, NULL),
(121, 11.75, NULL, 1, 11.75, 25, 22.73, 21.74, NULL, NULL, 1, 1, 121, NULL),
(122, 43, NULL, 2, 21.5, 35, 31.82, 30.43, NULL, NULL, 1, 1, 122, NULL),
(123, 43, NULL, 2, 21.5, 35, 31.82, 30.43, NULL, NULL, 1, 1, 123, NULL),
(124, 22.75, NULL, 1, 22.75, 40, 36.36, 34.78, NULL, NULL, 1, 1, 124, NULL),
(125, 22.75, NULL, 1, 22.75, 40, 36.36, 34.78, NULL, NULL, 1, 1, 125, NULL),
(126, 9.8, NULL, 2, 4.9, 10, 9.09, 8.7, NULL, NULL, 1, 1, 126, NULL),
(127, 0, NULL, 0, 31, 50, 45.45, 43.48, NULL, NULL, 0, 2, 127, NULL),
(128, 11.25, NULL, 9, 1.25, 5, 4.55, 4.35, NULL, NULL, 0, 2, 128, NULL),
(129, 102.5, NULL, 2, 51.25, 85, 77.27, 73.91, NULL, NULL, 1, 3, 129, NULL),
(130, 0, NULL, 0, 46.3, 85, 77.27, 73.91, NULL, NULL, 1, 3, 130, NULL),
(131, 47, NULL, 4, 11.75, 20, 18.18, 17.39, NULL, NULL, 1, 3, 131, NULL),
(132, 73, NULL, 1, 73, 115, 104.55, 100, NULL, NULL, 1, 4, 132, NULL),
(133, 49.75, NULL, 1, 49.75, 90, 81.82, 78.26, NULL, NULL, 1, 4, 133, NULL),
(134, 101.4, NULL, 1, 101.4, 160, 145.45, 139.13, NULL, NULL, 1, 4, 134, NULL),
(135, 49.8, NULL, 1, 49.8, 90, 81.82, 78.26, NULL, NULL, 1, 4, 135, NULL),
(136, 4, NULL, 1, 4, 45, 40.91, 39.13, NULL, NULL, 1, 4, 136, NULL),
(137, 44.4, NULL, 3, 14.8, 45, 40.91, 39.13, NULL, NULL, 1, 4, 137, NULL),
(138, 114, NULL, 4, 28.5, 60, 54.55, 52.17, NULL, NULL, 1, 4, 138, NULL),
(139, 95.8, NULL, 4, 23.95, 60, 54.55, 52.17, NULL, NULL, 1, 4, 139, NULL),
(140, 86.2, NULL, 2, 43.1, 75, 68.18, 65.22, NULL, NULL, 1, 4, 140, NULL),
(141, 59.75, NULL, 1, 59.75, 100, 90.91, 86.96, NULL, NULL, 1, 4, 141, NULL),
(142, 112.5, NULL, 2, 56.25, 100, 90.91, 86.96, NULL, NULL, 1, 4, 142, NULL),
(143, 375, NULL, 1, 375, 575, 522.73, 500, NULL, NULL, 1, 4, 143, NULL),
(144, 108, NULL, 2, 54, 85, 77.27, 73.91, NULL, NULL, 1, 4, 144, NULL),
(145, 117, NULL, 2, 58.5, 85, 77.27, 73.91, NULL, NULL, 1, 4, 145, NULL),
(146, 107.4, NULL, 3, 35.8, 75, 68.18, 65.22, NULL, NULL, 1, 4, 146, NULL),
(147, 327, NULL, 3, 109, 170, 154.55, 147.83, NULL, NULL, 1, 4, 147, NULL),
(148, 81, NULL, 10, 8.1, 25, 22.73, 21.74, NULL, NULL, 1, 4, 148, NULL),
(149, 165, NULL, 1, 165, 250, 227.27, 217.39, NULL, NULL, 1, 4, 149, NULL),
(150, 54.8, NULL, 8, 6.85, 25, 22.73, 21.74, NULL, NULL, 1, 4, 150, NULL),
(151, 34, NULL, 10, 3.4, 20, 18.18, 17.39, NULL, NULL, 1, 4, 151, NULL),
(152, 69, NULL, 3, 23, 40, 36.36, 34.78, NULL, NULL, 1, 4, 152, NULL),
(153, 184.25, NULL, 1, 184.25, 315, 286.36, 273.91, NULL, NULL, 1, 4, 153, NULL),
(154, 109, NULL, 1, 109, 210, 190.91, 182.61, NULL, NULL, 1, 4, 154, NULL),
(155, 82.25, NULL, 1, 82.25, 135, 122.73, 117.39, NULL, NULL, 1, 4, 155, NULL),
(156, 101, NULL, 1, 101, 215, 195.45, 186.96, NULL, NULL, 1, 4, 156, NULL),
(157, 116.35, NULL, 1, 116.35, 185, 168.18, 160.87, NULL, NULL, 1, 4, 157, NULL),
(158, 57, NULL, 1, 57, 90, 81.82, 78.26, NULL, NULL, 1, 4, 158, NULL),
(159, 49, NULL, 1, 49, 90, 81.82, 78.26, NULL, NULL, 1, 4, 159, NULL),
(160, 89, NULL, 1, 89, 145, 131.82, 126.09, NULL, NULL, 1, 4, 160, NULL),
(161, 58.67, NULL, 1, 58.67, 90, 81.82, 78.26, NULL, NULL, 1, 4, 161, NULL),
(162, 47.7, NULL, 3, 15.9, 28, 25.45, 24.35, NULL, NULL, 1, 4, 162, NULL),
(163, 39.3, NULL, 3, 13.1, 28, 25.45, 24.35, NULL, NULL, 1, 4, 163, NULL),
(165, 72, NULL, 18, 4, 20, 18.18, 17.39, NULL, NULL, 1, 4, 165, NULL),
(166, 126, NULL, 10, 12.6, 25, 22.73, 21.74, NULL, NULL, 1, 4, 166, NULL),
(167, 138, NULL, 1, 138, 215, 195.45, 186.96, NULL, NULL, 1, 4, 167, NULL),
(168, 61.75, NULL, 5, 12.35, 25, 22.73, 21.74, NULL, NULL, 1, 4, 168, NULL),
(169, 188.4, NULL, 4, 47.1, 85, 77.27, 73.91, NULL, NULL, 1, 4, 169, NULL),
(170, 94, NULL, 4, 23.5, 45, 40.91, 39.13, NULL, NULL, 1, 4, 170, NULL),
(171, 81, NULL, 1, 81, 130, 118.18, 113.04, NULL, NULL, 1, 4, 171, NULL),
(173, 6.5, NULL, 1, 6.5, 20, 18.18, 17.39, NULL, NULL, 1, 4, 173, NULL),
(174, 25, NULL, 5, 5, 20, 18.18, 17.39, NULL, NULL, 1, 4, 174, NULL),
(175, 8.25, NULL, 3, 2.75, 20, 18.18, 17.39, NULL, NULL, 1, 4, 175, NULL),
(176, 14, NULL, 2, 7, 22, 20, 19.13, NULL, NULL, 1, 4, 176, NULL),
(177, 19, NULL, 2, 9.5, 20, 18.18, 17.39, NULL, NULL, 1, 4, 177, NULL),
(178, 19.5, NULL, 3, 6.5, 15, 13.64, 13.04, NULL, NULL, 1, 4, 178, NULL),
(179, 52, NULL, 2, 26, 40, 36.36, 34.78, NULL, NULL, 1, 4, 179, NULL),
(180, 182, NULL, 2, 91, 140, 127.27, 121.74, NULL, NULL, 1, 4, 180, NULL),
(181, 97.5, NULL, 2, 48.75, 80, 72.73, 69.57, NULL, NULL, 1, 4, 181, NULL),
(182, 130, NULL, 2, 65, 100, 90.91, 86.96, NULL, NULL, 1, 4, 182, NULL),
(183, 179.5, NULL, 2, 89.75, 140, 127.27, 121.74, NULL, NULL, 1, 4, 183, NULL),
(184, 46.5, NULL, 3, 15.5, 25, 22.73, 21.74, NULL, NULL, 1, 4, 184, NULL),
(185, 32.5, NULL, 1, 32.5, 55, 50, 47.83, NULL, NULL, 1, 4, 185, NULL),
(186, 104, NULL, 2, 52, 80, 72.73, 69.57, NULL, NULL, 1, 4, 186, NULL),
(187, 52.2, NULL, 2, 26.1, 40, 36.36, 34.78, NULL, NULL, 1, 4, 187, NULL),
(188, 46, NULL, 2, 23, 40, 36.36, 34.78, NULL, NULL, 1, 4, 188, NULL),
(189, 20, NULL, 2, 10, 20, 18.18, 17.39, NULL, NULL, 1, 4, 189, NULL),
(190, 45.5, NULL, 2, 22.75, 40, 36.36, 34.78, NULL, NULL, 1, 4, 190, NULL),
(191, 359.2, NULL, 2, 179.6, 270, 245.45, 234.78, NULL, NULL, 1, 4, 191, NULL),
(192, 87.65, NULL, 1, 87.65, 150, 136.36, 130.43, NULL, NULL, 1, 5, 192, NULL),
(193, 33.5, NULL, 1, 33.5, 60, 54.55, 52.17, NULL, NULL, 1, 5, 193, NULL),
(194, 37.5, NULL, 1, 37.5, 75, 68.18, 65.22, NULL, NULL, 1, 5, 194, NULL),
(195, 20.25, NULL, 1, 20.25, 45, 40.91, 39.16, NULL, NULL, 1, 5, 195, NULL),
(196, 116.7, NULL, 1, 116.7, 185, 168.18, 160.87, NULL, NULL, 1, 5, 196, NULL),
(197, 77, NULL, 1, 77, 150, 136.36, 130.43, NULL, NULL, 1, 5, 197, NULL),
(198, 78.75, NULL, 1, 78.75, 150, 136.36, 130.43, NULL, NULL, 1, 5, 198, NULL),
(199, 97.5, NULL, 1, 97.5, 175, 159.09, 152.17, NULL, NULL, 1, 5, 199, NULL),
(200, 17.5, NULL, 1, 17.5, 35, 31.82, 30.43, NULL, NULL, 1, 5, 200, NULL),
(201, 109.5, NULL, 1, 109.5, 190, 172.73, 165.22, NULL, NULL, 1, 5, 201, NULL),
(202, 58.75, NULL, 1, 58.75, 115, 104.55, 100, NULL, NULL, 1, 5, 202, NULL),
(203, 53.75, NULL, 1, 53.75, 130, 118.18, 113.04, NULL, NULL, 1, 5, 203, NULL),
(204, 28.6, NULL, 1, 28.6, 100, 90.91, 86.96, NULL, NULL, 1, 5, 204, NULL),
(205, 169, NULL, 1, 169, 280, 254.55, 243.48, NULL, NULL, 1, 5, 205, NULL),
(206, 42.35, NULL, 1, 42.35, 70, 63.64, 60.87, NULL, NULL, 1, 5, 206, NULL),
(207, 103.5, NULL, 3, 34.5, 60, 54.55, 52.17, NULL, NULL, 1, 5, 207, NULL),
(208, 97.5, NULL, 1, 97.5, 175, 159.09, 152.17, NULL, NULL, 1, 5, 208, NULL),
(209, 28.8, NULL, 1, 28.8, 50, 45.45, 43.48, NULL, NULL, 1, 5, 209, NULL),
(210, 63.58, NULL, 2, 31.79, 70, 63.64, 60.87, NULL, NULL, 1, 5, 210, NULL),
(211, 71.8, NULL, 2, 35.9, 65, 59.09, 56.52, NULL, NULL, 1, 5, 211, NULL),
(212, 114, NULL, 3, 38, 75, 68.18, 65.22, NULL, NULL, 1, 5, 213, NULL),
(213, 114, NULL, 4, 28.5, 45, 40.91, 39.13, NULL, NULL, 1, 5, 214, NULL),
(214, 39.5, NULL, 2, 19.75, 70, 63.64, 60.87, NULL, NULL, 1, 5, 215, NULL),
(215, 16.25, NULL, 1, 16.25, 60, 54.55, 52.17, NULL, NULL, 1, 5, 216, NULL),
(216, 14.25, NULL, 1, 14.25, 60, 54.55, 52.17, NULL, NULL, 1, 5, 217, NULL),
(217, 99, NULL, 1, 99, 180, 163.64, 156.52, NULL, NULL, 1, 5, 218, NULL),
(218, 75, NULL, 1, 75, 125, 113.64, 108.7, NULL, NULL, 1, 5, 219, NULL),
(219, 40.5, NULL, 1, 40.5, 75, 68.18, 65.22, NULL, NULL, 1, 5, 220, NULL),
(220, 88.8, NULL, 1, 88.8, 145, 131.82, 126.09, NULL, NULL, 1, 5, 221, NULL),
(221, 82, NULL, 1, 82, 130, 118.18, 113.04, NULL, NULL, 1, 5, 222, NULL),
(222, 78.8, NULL, 1, 78.8, 135, 122.73, 117.39, NULL, NULL, 1, 5, 223, NULL),
(223, 117, NULL, 1, 117, 185, 168.18, 160.87, NULL, NULL, 1, 5, 224, NULL),
(224, 25.75, NULL, 1, 25.75, 45, 40.91, 39.13, NULL, NULL, 1, 5, 225, NULL),
(225, 17.55, NULL, 1, 17.55, 55, 50, 47.83, NULL, NULL, 1, 5, 226, NULL),
(226, 71.7, NULL, 6, 11.95, 22, 20, 19.13, NULL, NULL, 1, 5, 227, NULL),
(227, 23.4, NULL, 3, 7.8, 22, 20, 19.13, NULL, NULL, 1, 5, 228, NULL),
(228, 26.7, NULL, 3, 8.9, 22, 20, 19.13, NULL, NULL, 1, 5, 229, NULL),
(229, 106.95, NULL, 3, 35.65, 75, 68.18, 65.22, NULL, NULL, 1, 5, 230, NULL),
(230, 33.5, NULL, 1, 33.5, 60, 54.55, 52.17, NULL, NULL, 1, 5, 231, NULL),
(231, 77.6, NULL, 2, 38.8, 75, 68.18, 65.22, NULL, NULL, 1, 5, 232, NULL),
(232, 26, NULL, 1, 26, 45, 40.91, 39.13, NULL, NULL, 1, 5, 233, NULL),
(233, 34.9, NULL, 1, 34.9, 70, 63.64, 60.87, NULL, NULL, 1, 5, 234, NULL),
(234, 33.5, NULL, 1, 33.5, 70, 63.64, 60.87, NULL, NULL, 1, 5, 235, NULL),
(235, 43.2, NULL, 1, 43.2, 75, 68.18, 65.22, NULL, NULL, 1, 5, 236, NULL),
(236, 32.65, NULL, 1, 32.65, 85, 77.27, 73.91, NULL, NULL, 1, 5, 237, NULL),
(237, 0, NULL, 0, 84.5, 135, 122.73, 117.39, NULL, NULL, 1, 5, 238, NULL),
(238, 17.55, NULL, 3, 5.85, 20, 18.18, 17.39, NULL, NULL, 1, 5, 239, NULL),
(239, 36.7, NULL, 1, 36.7, 70, 63.64, 60.87, NULL, NULL, 1, 5, 240, NULL),
(240, 56, NULL, 1, 56, 95, 86.36, 82.61, NULL, NULL, 1, 5, 242, NULL),
(241, 59.5, NULL, 2, 29.75, 60, 54.55, 52.17, NULL, NULL, 1, 5, 243, NULL),
(242, 13.75, NULL, 1, 13.75, 25, 22.73, 21.74, NULL, NULL, 1, 5, 244, NULL),
(243, 79.9, NULL, 2, 39.95, 75, 68.18, 65.22, NULL, NULL, 1, 5, 245, NULL),
(244, 116, NULL, 2, 58, 115, 104.55, 100, NULL, NULL, 1, 5, 246, NULL),
(245, 13.8, NULL, 2, 6.9, 25, 22.73, 21.74, NULL, NULL, 1, 5, 247, NULL),
(246, 17.25, NULL, 1, 17.25, 35, 31.82, 30.43, NULL, NULL, 1, 5, 248, NULL),
(247, 36.25, NULL, 1, 36.25, 65, 59.09, 56.52, NULL, NULL, 1, 5, 249, NULL),
(248, 55.9, NULL, 2, 27.95, 50, 45.45, 43.48, NULL, NULL, 1, 5, 250, NULL),
(249, 46, NULL, 2, 23, 50, 45.45, 43.48, NULL, NULL, 1, 5, 251, NULL),
(250, 57, NULL, 2, 28.5, 50, 45.45, 43.48, NULL, NULL, 1, 5, 252, NULL),
(251, 21.25, NULL, 1, 21.25, 45, 40.91, 39.13, NULL, NULL, 1, 5, 253, NULL),
(252, 9.75, NULL, 1, 9.75, 30, 27.27, 26.09, NULL, NULL, 1, 5, 254, NULL),
(253, 0, NULL, 0, 17.55, 35, 31.82, 30.43, NULL, NULL, 1, 5, 255, NULL),
(254, 51, NULL, 2, 25.5, 45, 40.91, 39.13, NULL, NULL, 1, 5, 256, NULL),
(255, 80.5, NULL, 2, 40.25, 65, 59.09, 56.52, NULL, NULL, 1, 5, 257, NULL),
(256, 59.4, NULL, 2, 29.7, 50, 45.45, 43.48, NULL, NULL, 1, 5, 258, NULL),
(257, 13.8, NULL, 3, 4.6, 12, 10.91, 10.43, NULL, NULL, 1, 5, 259, NULL),
(258, 14.4, NULL, 3, 4.8, 12, 10.91, 10.43, NULL, NULL, 1, 5, 260, NULL),
(259, 36.4, NULL, 4, 9.1, 25, 22.73, 21.74, NULL, NULL, 1, 5, 261, NULL),
(260, 12.8, NULL, 2, 6.4, 20, 18.18, 17.39, NULL, NULL, 1, 5, 262, NULL),
(261, 43.8, NULL, 4, 10.95, 20, 18.18, 17.39, NULL, NULL, 1, 5, 263, NULL),
(262, 7, NULL, 2, 3.5, 15, 13.64, 13.04, NULL, NULL, 1, 5, 264, NULL),
(263, 52.77, NULL, 1, 52.77, 85, 77.27, 73.91, NULL, NULL, 1, 5, 265, NULL),
(264, 5.5, NULL, 2, 2.75, 15, 13.64, 13.04, NULL, NULL, 1, 5, 266, NULL),
(265, 101.8, NULL, 2, 50.9, 85, 77.27, 73.91, NULL, NULL, 1, 5, 267, NULL),
(266, 123.58, NULL, 2, 61.79, 100, 90.91, 86.96, NULL, NULL, 1, 5, 268, NULL),
(267, 93.78, NULL, 2, 46.89, 80, 72.73, 69.57, NULL, NULL, 1, 5, 269, NULL),
(268, 39.75, NULL, 1, 39.75, 70, 63.64, 60.87, NULL, NULL, 1, 5, 270, NULL),
(269, 104, NULL, 1, 104, 160, 145.45, 139.13, NULL, NULL, 1, 5, 271, NULL),
(270, 117, NULL, 1, 117, 170, 154.55, 147.83, NULL, NULL, 1, 5, 272, NULL),
(271, 4.8, NULL, 4, 1.2, 5, 4.55, 4.35, NULL, NULL, 1, 5, 273, NULL),
(272, 37.75, NULL, 1, 37.75, 60, 54.55, 52.17, NULL, NULL, 1, 5, 274, NULL),
(273, 27.35, NULL, 1, 27.35, 50, 45.45, 43.48, NULL, NULL, 1, 6, 275, NULL),
(274, 298, NULL, 2, 149, 235, 213.64, 204.35, NULL, NULL, 1, 7, 276, NULL),
(275, 365, NULL, 2, 182.5, 280, 254.55, 243.48, NULL, NULL, 1, 7, 277, NULL),
(276, 230, NULL, 2, 115, 190, 172.73, 165.22, NULL, NULL, 1, 7, 278, NULL),
(277, 104.25, NULL, 1, 104.25, 175, 159.09, 152.17, NULL, NULL, 1, 7, 279, NULL),
(278, 91, NULL, 1, 91, 175, 159.09, 152.17, NULL, NULL, 1, 7, 280, NULL),
(279, 55.9, NULL, 1, 55.9, 125, 113.64, 108.7, NULL, NULL, 1, 7, 281, NULL),
(280, 54.25, NULL, 1, 54.25, 125, 113.64, 108.7, NULL, NULL, 1, 7, 282, NULL),
(281, 26.55, NULL, 1, 26.55, 75, 68.18, 65.22, NULL, NULL, 1, 7, 283, NULL),
(282, 26.55, NULL, 1, 26.55, 75, 68.18, 65.22, NULL, NULL, 1, 7, 284, NULL),
(283, 22.75, NULL, 1, 22.75, 60, 54.55, 52.17, NULL, NULL, 1, 7, 285, NULL),
(284, 35.9, NULL, 1, 35.9, 65, 59.09, 56.52, NULL, NULL, 1, 7, 286, NULL),
(285, 39.65, NULL, 1, 39.65, 80, 72.73, 69.57, NULL, NULL, 1, 7, 287, NULL),
(286, 25.7, NULL, 1, 25.7, 50, 45.45, 43.48, NULL, NULL, 1, 7, 288, NULL),
(287, 179, NULL, 1, 179, 300, 272.73, 260.87, NULL, NULL, 1, 7, 289, NULL),
(288, 150.75, NULL, 1, 150.75, 250, 227.27, 217.39, NULL, NULL, 1, 7, 290, NULL),
(289, 198, NULL, 1, 198, 360, 327.27, 313.04, NULL, NULL, 1, 7, 291, NULL),
(290, 96, NULL, 1, 96, 180, 163.64, 156.52, NULL, NULL, 1, 7, 292, NULL),
(291, 92.25, NULL, 1, 92.25, 180, 163.64, 156.52, NULL, NULL, 1, 7, 293, NULL),
(292, 400, NULL, 1, 400, 675, 613.64, 586.96, NULL, NULL, 1, 7, 294, NULL),
(293, 189.78, NULL, 1, 189.78, 325, 295.45, 282.61, NULL, NULL, 1, 7, 295, NULL),
(294, 396.5, NULL, 1, 396.5, 625, 568.18, 543.48, NULL, NULL, 1, 7, 296, NULL),
(295, 37.05, NULL, 1, 37.05, 60, 54.55, 52.17, NULL, NULL, 1, 7, 297, NULL),
(296, 34.75, NULL, 1, 34.75, 60, 54.55, 52.17, NULL, NULL, 1, 7, 298, NULL),
(297, 39.5, NULL, 1, 39.5, 75, 68.18, 65.22, NULL, NULL, 1, 7, 299, NULL),
(298, 99, NULL, 1, 99, 180, 163.64, 156.52, NULL, NULL, 1, 7, 300, NULL),
(299, 42, NULL, 1, 42, 100, 90.91, 86.96, NULL, NULL, 1, 7, 301, NULL),
(300, 26.85, NULL, 1, 26.85, 75, 68.18, 65.22, NULL, NULL, 1, 7, 302, NULL),
(301, 14.25, NULL, 1, 14.25, 50, 45.45, 43.48, NULL, NULL, 1, 7, 303, NULL),
(302, 26.7, NULL, 1, 26.7, 70, 63.64, 60.87, NULL, NULL, 1, 7, 304, NULL),
(303, 92.25, NULL, 1, 92.25, 150, 136.36, 130.43, NULL, NULL, 1, 7, 305, NULL),
(304, 26.3, NULL, 1, 26.3, 70, 63.64, 60.87, NULL, NULL, 1, 7, 306, NULL),
(305, 42.7, NULL, 1, 42.7, 80, 72.73, 69.57, NULL, NULL, 1, 7, 307, NULL),
(306, 44.25, NULL, 1, 44.25, 100, 90.91, 86.96, NULL, NULL, 1, 7, 308, NULL),
(307, 109, NULL, 1, 109, 180, 163.64, 156.52, NULL, NULL, 1, 7, 309, NULL),
(308, 59.6, NULL, 1, 59.6, 100, 90.91, 86.96, NULL, NULL, 1, 7, 310, NULL),
(309, 240, NULL, 1, 240, 375, 340.91, 326.09, NULL, NULL, 1, 7, 311, NULL),
(310, 33.25, NULL, 1, 33.25, 60, 54.55, 52.17, NULL, NULL, 1, 7, 312, NULL),
(311, 69, NULL, 1, 69, 125, 113.64, 108.7, NULL, NULL, 1, 7, 313, NULL),
(312, 19, NULL, 1, 19, 40, 36.36, 34.78, NULL, NULL, 1, 7, 314, NULL),
(313, 75.4, NULL, 2, 37.7, 66, 60, 57.39, NULL, NULL, 1, 7, 315, NULL),
(314, 25, NULL, 1, 25, 55, 50, 47.83, NULL, NULL, 1, 7, 316, NULL),
(315, 47.77, NULL, 1, 47.77, 80, 72.73, 69.57, NULL, NULL, 1, 7, 317, NULL),
(316, 28.6, NULL, 1, 28.6, 50, 45.45, 43.48, NULL, NULL, 1, 7, 318, NULL),
(317, 25.35, NULL, 1, 25.35, 55, 50, 47.83, NULL, NULL, 1, 7, 319, NULL),
(318, 17, NULL, 2, 8.5, 35, 31.82, 30.43, NULL, NULL, 1, 7, 320, NULL),
(319, 13.8, NULL, 2, 6.9, 15, 13.64, 13.04, NULL, NULL, 1, 7, 321, NULL),
(321, 23.75, NULL, 1, 23.75, 45, 40.91, 39.13, NULL, NULL, 1, 7, 323, NULL),
(322, 46.12, NULL, 2, 23.06, 40, 36.36, 34.78, NULL, NULL, 1, 7, 324, NULL),
(323, 70.75, NULL, 1, 70.75, 115, 104.55, 100, NULL, NULL, 1, 7, 325, NULL),
(324, 54, NULL, 1, 54, 85, 77.27, 73.91, NULL, NULL, 1, 7, 326, NULL),
(325, 98, NULL, 1, 98, 150, 136.36, 130.43, NULL, NULL, 1, 7, 327, NULL),
(326, 234, NULL, 2, 117, 175, 159.09, 152.17, NULL, NULL, 1, 7, 328, NULL),
(327, 71, NULL, 1, 71, 115, 104.55, 100, NULL, NULL, 1, 7, 329, NULL),
(328, 0, NULL, 0, 39, 75, 68, 64, NULL, NULL, 1, 7, 330, NULL),
(329, 45, NULL, 3, 15, 25, 22.73, 21.74, NULL, NULL, 1, 7, 331, NULL),
(330, 227.5, NULL, 1, 227.5, 350, 318.18, 304.35, NULL, NULL, 1, 7, 332, NULL),
(332, 39, NULL, 1, 39, 60, 54.55, 52.17, NULL, NULL, 1, 7, 334, NULL),
(333, 52.5, NULL, 2, 26.25, 45, 40.91, 39.13, NULL, NULL, 1, 7, 335, NULL),
(334, 13.9, NULL, 1, 13.9, 60, 54.55, 52.17, NULL, NULL, 1, 8, 336, NULL),
(335, 33.6, NULL, 3, 11.2, 35, 31.82, 30.43, NULL, NULL, 1, 8, 337, NULL),
(336, 15, NULL, 1, 15, 35, 31.82, 30.43, NULL, NULL, 1, 8, 338, NULL),
(337, 18.7, NULL, 11, 1.7, 15, 13.64, 13.04, NULL, NULL, 1, 8, 339, NULL),
(338, 54.6, NULL, 12, 4.55, 15, 13.64, 13.04, NULL, NULL, 1, 8, 340, NULL),
(339, 55.8, NULL, 12, 4.65, 15, 13.64, 13.04, NULL, NULL, 1, 8, 341, NULL),
(340, 86.9, NULL, 11, 7.9, 20, 18.18, 17.39, NULL, NULL, 1, 8, 342, NULL),
(341, 114, NULL, 12, 9.5, 25, 22.73, 21.74, NULL, NULL, 1, 8, 343, NULL),
(342, 20.75, NULL, 1, 20.75, 45, 40.91, 39.13, NULL, NULL, 1, 8, 344, NULL),
(343, 31, NULL, 2, 15.5, 30, 27.27, 26.09, NULL, NULL, 1, 8, 345, NULL),
(344, 35, NULL, 10, 3.5, 15, 13.5, 12.75, NULL, NULL, 1, 10, 346, NULL),
(345, 130, NULL, 2, 65, 110, 99, 93.5, NULL, NULL, 1, 11, 347, NULL),
(346, 10.5, NULL, 2, 5.25, 20, 18.18, 17.39, NULL, NULL, 1, 12, 348, NULL),
(347, 133.6, NULL, 2, 66.8, 110, 100, 95.65, NULL, NULL, 1, 12, 349, NULL),
(348, 28.95, NULL, 1, 28.95, 90, 81.82, 78.26, NULL, NULL, 1, 13, 350, NULL),
(349, 307.88, NULL, 2, 153.94, 245, 220.5, 208.25, NULL, NULL, 1, 16, 351, NULL),
(350, 135.79, NULL, 1, 135.79, 215, 193.5, 182.75, NULL, NULL, 1, 17, 352, NULL),
(351, 184, NULL, 1, 184, 300, 270, 255, NULL, NULL, 1, 18, 353, NULL),
(352, 164.25, NULL, 1, 164.25, 250, 225, 212.5, NULL, NULL, 1, 19, 354, NULL),
(353, 186.75, NULL, 1, 186.75, 290, 261, 246.5, NULL, NULL, 1, 19, 355, NULL),
(354, 156.75, NULL, 1, 156.75, 250, 225, 212.5, NULL, NULL, 1, 20, 356, NULL),
(357, 186.75, NULL, 1, 186.75, 295, 265.5, 250.75, NULL, NULL, 1, 23, 359, NULL),
(358, 149.25, NULL, 1, 149.25, 250, 225, 212.5, NULL, NULL, 1, 24, 360, NULL),
(359, 245.25, NULL, 3, 81.75, 150, 135, 127.5, NULL, NULL, 1, 25, 361, NULL),
(360, 245.25, NULL, 3, 81.75, 150, 135, 127.5, NULL, NULL, 1, 26, 362, NULL),
(361, 85, NULL, 1, 85, 150, 135, 127.5, NULL, NULL, 1, 27, 363, NULL),
(362, 148.5, NULL, 2, 74.25, 150, 135, 127.5, NULL, NULL, 1, 28, 364, NULL),
(363, 74.25, NULL, 1, 74.25, 150, 135, 127.5, NULL, NULL, 1, 29, 365, NULL),
(364, 148.5, NULL, 2, 74.25, 150, 135, 127.5, NULL, NULL, 1, 30, 366, NULL),
(365, 74.25, NULL, 1, 74.25, 150, 135, 127.5, NULL, NULL, 1, 31, 367, NULL),
(366, 74.25, NULL, 1, 74.25, 150, 135, 127.5, NULL, NULL, 1, 31, 368, NULL),
(367, 74.25, NULL, 1, 74.25, 150, 135, 127.5, NULL, NULL, 1, 32, 367, NULL),
(368, 74.25, NULL, 1, 74.25, 150, 135, 127.5, NULL, NULL, 1, 33, 369, NULL),
(369, 81.57, NULL, 1, 81.57, 150, 135, 127.5, NULL, NULL, 1, 33, 370, NULL),
(370, 96.75, NULL, 1, 96.75, 165, 148.5, 140.25, NULL, NULL, 1, 38, 371, NULL),
(371, 96.75, NULL, 1, 96.75, 160, 144, 136, NULL, NULL, 1, 39, 372, NULL),
(372, 111.75, NULL, 1, 111.75, 180, 162, 153, NULL, NULL, 1, 41, 373, NULL),
(373, 81.75, NULL, 1, 81.75, 150, 135, 127.5, NULL, NULL, 1, 42, 374, NULL),
(374, 89.63, NULL, 1, 89.63, 150, 135, 127.5, NULL, NULL, 1, 43, 375, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `idCompras` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` double DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoCompra` int(11) DEFAULT NULL,
  `NoComprobante` varchar(45) DEFAULT NULL,
  `idDistribuidor` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCompras`),
  KEY `CompraDistribuidor_idx` (`idDistribuidor`),
  KEY `CompraTipo_idx` (`tipoCompra`),
  KEY `ComprasUsuario` (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `fecha`, `total`, `estado`, `tipoCompra`, `NoComprobante`, `idDistribuidor`, `idUsuario`) VALUES
(1, '2016-10-05 05:34:37', 8615.39, 1, 1, '31388', 1, 1),
(2, '2016-10-05 08:04:50', 11.25, 1, 1, '31318', 1, 1),
(3, '2016-10-05 08:07:26', 149.5, 1, 1, '31338', 1, 1),
(4, '2016-10-05 08:11:35', 5357.12, 1, 1, '31417', 1, 1),
(5, '2016-10-06 05:23:25', 4462.41, 1, 1, '31418', 1, 1),
(6, '2016-10-06 06:24:38', 27.35, 1, 1, '31419', 1, 1),
(7, '2016-10-06 06:27:33', 5327.77, 1, 1, '31421', 1, 1),
(8, '2016-10-06 07:16:05', 444.25, 1, 1, '31858', 1, 1),
(10, '2016-10-14 15:09:15', 35, 1, 1, '33182', 1, 1),
(11, '2016-10-14 15:41:31', 130, 1, 1, NULL, 2, 1),
(12, '2016-10-16 05:35:14', 144.1, 1, 1, '32090', 1, 0),
(13, '2016-10-16 05:38:52', 28.95, 1, 1, '32522', 1, 0),
(16, '2016-10-27 15:25:19', 307.88, 1, 1, '01', 4, 1),
(17, '2016-10-27 15:32:08', 135.79, 1, 1, '02', 4, 1),
(18, '2016-10-27 16:53:50', 184, 1, 1, NULL, 3, 1),
(19, '2016-10-27 17:08:30', 351, 1, 1, '004', 5, 1),
(20, '2016-10-27 17:21:23', 156.75, 1, 1, '', 5, 1),
(23, '2016-10-27 17:49:45', 186.75, 1, 1, NULL, 6, 1),
(24, '2016-10-27 17:55:40', 149.25, 1, 1, NULL, 6, 1),
(25, '2016-10-27 18:26:34', 245.25, 1, 1, NULL, 6, 1),
(26, '2016-10-27 18:32:58', 245.25, 1, 1, NULL, 6, 1),
(27, '2016-10-27 18:42:55', 85, 1, 1, NULL, 2, 1),
(28, '2016-10-27 20:54:33', 148.5, 1, 2, '40622', 6, 1),
(29, '2016-10-27 21:03:02', 74.25, 1, 1, '', 5, 1),
(30, '2016-10-27 21:08:20', 148.5, 1, 2, NULL, 5, 1),
(31, '2016-10-27 21:24:23', 148.5, 1, 1, NULL, 5, 1),
(32, '2016-10-27 21:36:44', 74.25, 1, 1, NULL, 5, 1),
(33, '2016-10-27 22:42:48', 155.82, 1, 1, NULL, 5, 1),
(38, '2016-10-27 22:49:04', 96.75, 1, 1, NULL, 5, 1),
(39, '2016-10-27 22:52:04', 96.75, 1, 2, '40622', 6, 1),
(41, '2016-10-27 23:04:39', 111.75, 1, 1, '', 6, 1),
(42, '2016-10-27 23:11:38', 81.75, 1, 1, NULL, 6, 2),
(43, '2016-10-27 23:18:26', 89.63, 1, 1, NULL, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE IF NOT EXISTS `correos` (
  `idCorreos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT '1',
  `estado` int(11) DEFAULT '1',
  PRIMARY KEY (`idCorreos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `correos`
--

INSERT INTO `correos` (`idCorreos`, `fecha`, `correo`, `tipo`, `estado`) VALUES
(1, '2016-10-26 02:58:30', 'jdanielr61@gmail.com', 1, 1),
(2, '2016-10-27 00:42:22', 'jdanielr61@gmail.com', 1, 1),
(3, '2016-10-28 01:47:34', 'jdanielr61@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentascobrar`
--

CREATE TABLE IF NOT EXISTS `cuentascobrar` (
  `idCuentasC` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plazo` int(11) DEFAULT NULL,
  `tipoPlazo` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `idVentas` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `CreditoDado` double DEFAULT NULL,
  `fecha_ant` date DEFAULT NULL,
  PRIMARY KEY (`idCuentasC`),
  UNIQUE KEY `idCompras` (`idVentas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cuentascobrar`
--

INSERT INTO `cuentascobrar` (`idCuentasC`, `fecha`, `plazo`, `tipoPlazo`, `total`, `idVentas`, `estado`, `CreditoDado`, `fecha_ant`) VALUES
(1, '2016-10-25 00:00:00', 5, '1', 40, 59, 1, 40, '2016-10-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentaspagar`
--

CREATE TABLE IF NOT EXISTS `cuentaspagar` (
  `idCuentasP` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plazo` int(11) DEFAULT NULL,
  `tipoPlazo` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `idCompras` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `CreditoDado` double DEFAULT NULL,
  `fecha_ant` date DEFAULT NULL,
  PRIMARY KEY (`idCuentasP`),
  UNIQUE KEY `idVentas` (`idCompras`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `cuentaspagar`
--

INSERT INTO `cuentaspagar` (`idCuentasP`, `fecha`, `plazo`, `tipoPlazo`, `total`, `idCompras`, `estado`, `CreditoDado`, `fecha_ant`) VALUES
(1, '2016-10-27 00:00:00', 30, '1', 148.5, 28, 1, 148.5, '2016-10-27'),
(3, '2016-10-27 00:00:00', 30, '1', 148.5, 30, 1, 148.5, '2016-10-27'),
(5, '2016-10-27 00:00:00', 30, '1', 96.75, 39, 1, 96.75, '2016-10-27'),
(7, '2016-10-27 00:00:00', 30, '1', 111.75, 41, 1, 111.75, '2016-10-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `idDepartamentos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `codigoPostal` varchar(45) DEFAULT NULL,
  `LADA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idDepartamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidores`
--

CREATE TABLE IF NOT EXISTS `distribuidores` (
  `idDistribuidores` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Telefono2` varchar(20) DEFAULT NULL,
  `NoVendedor` varchar(30) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDistribuidores`),
  KEY `DistribuidorProveedor_idx` (`IdProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `idEmpleados` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(75) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Puesto` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  PRIMARY KEY (`idEmpleados`),
  KEY `EmpleadoPuesto_idx` (`Puesto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleados`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Puesto`, `estado`, `sueldo`) VALUES
(1, 'NESTER ', 'BERCIAN', '58298134', 'CHAMPERICO', 2, 1, 0),
(2, 'Yordi Alberto', 'Ortiz Oliva', '51782705', 'champerico', 2, 1, 0),
(3, 'MARIO', 'MORALES', '42207608', 'REU', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE IF NOT EXISTS `gastos` (
  `idGastos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `Descripcion` text,
  `Monto` double DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGastos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `idInventario` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) DEFAULT NULL,
  `precioCosto` double DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `precioClienteEs` double DEFAULT NULL,
  `precioDistribuidor` double DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `minimo` double DEFAULT '0',
  PRIMARY KEY (`idInventario`),
  KEY `InventarioProducto_idx` (`idProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=376 ;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idProducto`, `precioCosto`, `precioVenta`, `precioClienteEs`, `precioDistribuidor`, `cantidad`, `minimo`) VALUES
(5, 5, 131, 215, 195.5, 187, 1, 0),
(6, 6, 139, 225, 204.55, 195.65, 1, 0),
(7, 7, 199, 325, 295.45, 282.61, 1, 0),
(8, 8, 173, 280, 254.55, 243.48, 2, 0),
(9, 9, 154, 250, 227.27, 217.39, 1, 0),
(10, 10, 223, 350, 318.18, 304.35, 1, 0),
(11, 11, 148, 245, 222, 213, 1, 0),
(12, 12, 156, 250, 227.27, 217.39, 2, 0),
(13, 13, 156.7, 250, 227.27, 217.39, 1, 0),
(14, 14, 255, 380, 345.45, 330.43, 1, 0),
(15, 15, 135.2, 220, 200, 191, 1, 0),
(16, 16, 245, 390, 354.55, 339.13, 1, 0),
(17, 17, 275, 430, 387, 365.5, 0, 0),
(18, 18, 329, 525, 477.27, 456.52, 1, 0),
(19, 19, 245, 400, 363.64, 347.83, 1, 0),
(20, 20, 235, 390, 354.55, 339.13, 1, 0),
(21, 21, 337, 535, 486.36, 465.22, 1, 0),
(22, 22, 242, 400, 363.64, 347.83, 1, 0),
(23, 23, 20.55, 45, 40.91, 39.13, 5, 0),
(24, 24, 14.33, 40, 36.36, 34.78, 4, 0),
(25, 25, 16.9, 40, 36.36, 34.78, 6, 0),
(26, 26, 13.25, 40, 36.36, 34.78, 4, 0),
(27, 27, 36.8, 60, 54.55, 52.17, 4, 0),
(28, 28, 17.9, 40, 36.36, 34.78, 4, 0),
(29, 29, 21.35, 45, 40.91, 39.13, 6, 0),
(30, 30, 17.9, 40, 36.36, 34.78, 3, 0),
(31, 31, 19, 40, 36.36, 34.78, 2, 0),
(32, 32, 26.8, 45, 40.91, 39.13, 1, 0),
(33, 33, 17.99, 45, 40.91, 39.13, 2, 0),
(34, 34, 22.5, 45, 40.91, 39.13, 4, 0),
(35, 35, 20.5, 40, 36.36, 34.78, 3, 0),
(36, 36, 36.8, 65, 59.09, 56.52, 3, 0),
(37, 37, 14.8, 40, 36.36, 34.78, 6, 0),
(38, 38, 21.8, 45, 40.91, 39.13, 3, 0),
(39, 39, 18.2, 40, 36.36, 34.78, 3, 0),
(40, 40, 18.5, 40, 36.36, 34.78, 5, 0),
(41, 41, 20.75, 45, 40.91, 39.13, 3, 0),
(42, 42, 29, 50, 45.45, 43.48, 3, 0),
(43, 43, 18.8, 40, 36.36, 34.78, 4, 0),
(44, 44, 27.2, 50, 45.45, 43.48, 2, 0),
(45, 45, 25, 45, 40.91, 39.13, 2, 0),
(46, 46, 19.8, 40, 36.36, 34.78, 2, 0),
(47, 47, 22.9, 45, 40.91, 39.13, 1, 0),
(48, 48, 17.5, 40, 36.36, 34.78, 2, 0),
(49, 49, 30.8, 60, 54.55, 52.17, 1, 0),
(50, 50, 32.5, 60, 54.55, 52.17, 1, 0),
(51, 51, 26.9, 45, 40.91, 39.13, 1, 0),
(52, 52, 29, 45, 40.91, 39.13, 2, 0),
(53, 53, 24.24, 50, 45.45, 43.48, 2, 0),
(54, 54, 184, 295, 268.18, 256.52, 1, 0),
(55, 55, 165.75, 285, 259.09, 247.83, 1, 0),
(56, 56, 42.75, 90, 81.82, 78.26, 1, 0),
(57, 57, 39.9, 90, 81.82, 78.26, 1, 0),
(58, 58, 28.75, 50, 45.45, 43.48, 0, 0),
(59, 59, 27.95, 75, 68.18, 65.22, 1, 0),
(60, 60, 73.8, 125, 113.64, 108.7, 1, 0),
(61, 61, 29.25, 60, 54.55, 52.17, 1, 0),
(62, 62, 159, 250, 227.27, 217.39, 1, 0),
(63, 63, 91, 150, 136.36, 130.43, 1, 0),
(64, 64, 119.75, 200, 181.82, 173.91, 1, 0),
(65, 65, 10.95, 30, 27.27, 26.09, 2, 0),
(66, 66, 28.15, 50, 45.45, 43.48, 3, 0),
(67, 67, 21.95, 40, 36.36, 34.78, 4, 0),
(68, 68, 15.5, 40, 36.36, 34.78, 2, 0),
(69, 69, 17.7, 40, 36.36, 34.78, 2, 0),
(70, 70, 52, 85, 77.27, 73.91, 1, 0),
(71, 71, 10.95, 35, 31.82, 30.43, 1, 0),
(72, 72, 11.9, 35, 31.82, 30.43, 1, 0),
(73, 73, 33.66, 55, 50, 47.83, 1, 0),
(74, 74, 1.7, 15, 13.64, 13.04, 12, 0),
(75, 75, 7.2, 20, 18.18, 17.39, 1, 0),
(76, 76, 7.5, 20, 18.18, 17.39, 7, 0),
(77, 77, 8.6, 20, 18.18, 17.39, 1, 0),
(78, 78, 2.9, 15, 13.64, 13.04, 11, 0),
(79, 79, 18.25, 60, 54.55, 52.17, 1, 0),
(80, 80, 22.5, 60, 54.55, 52.17, 1, 0),
(81, 81, 11.95, 22, 20, 19.13, 10, 0),
(82, 82, 176, 270, 245.45, 234.78, 1, 0),
(83, 83, 41.1, 70, 63.64, 60.87, 1, 0),
(84, 84, 28.15, 85, 77.27, 73.91, 1, 0),
(85, 85, 41.1, 70, 63.64, 60.87, 1, 0),
(86, 86, 10.5, 20, 18.18, 17.39, 8, 0),
(87, 87, 23.5, 40, 36.36, 34.78, 2, 0),
(88, 88, 19.5, 40, 36.36, 34.78, 1, 0),
(89, 89, 19.5, 40, 36.36, 34.78, 1, 0),
(90, 90, 19.7, 40, 36.36, 34.78, 1, 0),
(91, 91, 37.1, 65, 59.09, 56.52, 1, 0),
(92, 92, 59.8, 100, 90.91, 86.96, 1, 0),
(93, 93, 81, 140, 127.27, 121.74, 1, 0),
(94, 94, 26.1, 45, 40.91, 39.13, 1, 0),
(95, 95, 13.75, 35, 31.82, 30.43, 1, 0),
(96, 96, 10.2, 20, 18.18, 17.39, 2, 0),
(97, 97, 69, 115, 104.55, 100, 1, 0),
(98, 98, 50.25, 100, 90.91, 86.96, 1, 0),
(99, 99, 67.5, 110, 100, 95.65, 2, 0),
(101, 101, 4, 15, 13.64, 13.04, 2, 0),
(102, 102, 2.25, 15, 13.64, 13.04, 2, 0),
(103, 103, 4.75, 15, 13.64, 13.04, 2, 0),
(104, 104, 4.25, 15, 13.64, 13.04, 2, 0),
(105, 105, 20.9, 45, 40.91, 39.13, 4, 0),
(106, 106, 10.8, 20, 18.18, 17.39, 2, 0),
(107, 107, 8.9, 20, 18.18, 17.39, 2, 0),
(108, 108, 11.7, 20, 18.18, 17.39, 1, 0),
(109, 109, 11.6, 22, 20, 19.13, 3, 0),
(110, 110, 3.25, 15, 13.64, 13.04, 1, 0),
(111, 111, 79.7, 125, 113.64, 108.7, 1, 0),
(112, 112, 31, 50, 45.45, 43.48, 2, 0),
(113, 113, 28.5, 60, 54.55, 52.17, 2, 0),
(114, 114, 15.9, 35, 31.82, 30.43, 1, 0),
(115, 115, 15, 35, 31.82, 30.43, 3, 0),
(116, 116, 3.25, 15, 13.64, 13.04, 0, 0),
(117, 117, 10.5, 20, 18.18, 17.39, 2, 0),
(118, 118, 40, 65, 59.09, 56.52, 1, 0),
(119, 119, 16, 30, 27.27, 26.09, 2, 0),
(120, 120, 16, 30, 27.27, 26.09, 2, 0),
(121, 121, 11.75, 25, 22.73, 21.74, 1, 0),
(122, 122, 21.5, 35, 31.82, 30.43, 2, 0),
(123, 123, 21.5, 35, 31.82, 30.43, 2, 0),
(124, 124, 22.75, 40, 36.36, 34.78, 1, 0),
(125, 125, 22.75, 40, 36.36, 34.78, 1, 0),
(126, 126, 4.9, 12.5, 11.36, 10.87, 12, 0),
(127, 127, 31, 55, 50, 47.83, 3, 0),
(128, 128, 1.25, 5, 4.55, 4.35, 9, 0),
(129, 129, 51.25, 85, 77.27, 73.91, 2, 0),
(130, 130, 46.3, 90, 81, 76.5, 1, 0),
(131, 131, 11.75, 20, 18.18, 17.39, 4, 0),
(132, 132, 73, 115, 104.55, 100, 1, 0),
(133, 133, 49.75, 90, 81.82, 78.26, 1, 0),
(134, 134, 101.4, 160, 145.45, 139.13, 1, 0),
(135, 135, 49.8, 90, 81.82, 78.26, 1, 0),
(136, 136, 4, 45, 40.91, 39.13, 1, 0),
(137, 137, 14.8, 45, 40.91, 39.13, 3, 0),
(138, 138, 28.5, 60, 54.55, 52.17, 4, 0),
(139, 139, 23.95, 60, 54.55, 52.17, 4, 0),
(140, 140, 43.1, 75, 68.18, 65.22, 2, 0),
(141, 141, 59.75, 100, 90.91, 86.96, 1, 0),
(142, 142, 56.25, 100, 90.91, 86.96, 2, 0),
(143, 143, 375, 575, 522.73, 500, 1, 0),
(144, 144, 54, 85, 77.27, 73.91, 2, 0),
(145, 145, 58.5, 85, 77.27, 73.91, 2, 0),
(146, 146, 35.8, 75, 68.18, 65.22, 3, 0),
(147, 147, 109, 170, 154.55, 147.83, 1, 0),
(148, 148, 8.1, 25, 22.73, 21.74, 10, 0),
(149, 149, 165, 250, 227.27, 217.39, 1, 0),
(150, 150, 6.85, 25, 22.73, 21.74, 8, 0),
(151, 151, 3.4, 20, 18.18, 17.39, 10, 0),
(152, 152, 23, 40, 36.36, 34.78, 3, 0),
(153, 153, 184.25, 315, 286.36, 273.91, 1, 0),
(154, 154, 109, 210, 190.91, 182.61, 1, 0),
(155, 155, 82.25, 135, 122.73, 117.39, 1, 0),
(156, 156, 101, 215, 195.45, 186.96, 1, 0),
(157, 157, 116.35, 185, 168.18, 160.87, 1, 0),
(158, 158, 57, 90, 81.82, 78.26, 1, 0),
(159, 159, 49, 90, 81.82, 78.26, 1, 0),
(160, 160, 89, 145, 131.82, 126.09, 1, 0),
(161, 161, 58.67, 90, 81.82, 78.26, 1, 0),
(162, 162, 15.9, 28, 25.45, 24.35, 2, 0),
(163, 163, 13.1, 28, 25.45, 24.35, 3, 0),
(165, 165, 4, 20, 18.18, 17.39, 18, 0),
(166, 166, 12.6, 25, 22.73, 21.74, 9, 0),
(167, 167, 138, 215, 195.45, 186.96, 1, 0),
(168, 168, 12.35, 25, 22.73, 21.74, 5, 0),
(169, 169, 47.1, 85, 77.27, 73.91, 4, 0),
(170, 170, 23.5, 45, 40.91, 39.13, 4, 0),
(171, 171, 81, 130, 118.18, 113.04, 1, 0),
(173, 173, 6.5, 20, 18.18, 17.39, 1, 0),
(174, 174, 5, 20, 18.18, 17.39, 5, 0),
(175, 175, 2.75, 20, 18.18, 17.39, 3, 0),
(176, 176, 7, 22, 20, 19.13, 2, 0),
(177, 177, 9.5, 20, 18.18, 17.39, 2, 0),
(178, 178, 6.5, 15, 13.64, 13.04, 3, 0),
(179, 179, 26, 40, 36.36, 34.78, 2, 0),
(180, 180, 91, 140, 127.27, 121.74, 2, 0),
(181, 181, 48.75, 80, 72.73, 69.57, 2, 0),
(182, 182, 65, 100, 90.91, 86.96, 2, 0),
(183, 183, 89.75, 140, 127.27, 121.74, 2, 0),
(184, 184, 15.5, 25, 22.73, 21.74, 3, 0),
(185, 185, 32.5, 55, 50, 47.83, 1, 0),
(186, 186, 52, 80, 72.73, 69.57, 2, 0),
(187, 187, 26.1, 40, 36.36, 34.78, 2, 0),
(188, 188, 23, 40, 36.36, 34.78, 2, 0),
(189, 189, 10, 20, 18.18, 17.39, 2, 0),
(190, 190, 22.75, 40, 36.36, 34.78, 2, 0),
(191, 191, 179.6, 270, 245.45, 234.78, 2, 0),
(192, 192, 87.65, 150, 136.36, 130.43, 1, 0),
(193, 193, 33.5, 60, 54.55, 52.17, 1, 0),
(194, 194, 37.5, 75, 68.18, 65.22, 1, 0),
(195, 195, 20.25, 45, 40.91, 39.13, 1, 0),
(196, 196, 116.7, 185, 168.15, 160.87, 1, 0),
(197, 197, 77, 150, 136.36, 130.43, 1, 0),
(198, 198, 78.75, 150, 136.36, 130.43, 1, 0),
(199, 199, 97.5, 175, 159.09, 152.17, 1, 0),
(200, 200, 17.5, 35, 31.82, 30.43, 1, 0),
(201, 201, 109.5, 190, 172.73, 165.22, 1, 0),
(202, 202, 58.75, 115, 104.55, 100, 1, 0),
(203, 203, 53.75, 130, 118.18, 113.04, 1, 0),
(204, 204, 28.6, 100, 90.91, 85.96, 1, 0),
(205, 205, 169, 280, 254.55, 243.48, 1, 0),
(206, 206, 42.35, 70, 63.64, 60.87, 1, 0),
(207, 207, 34.5, 60, 54.55, 52.17, 3, 0),
(208, 208, 97.5, 175, 159.09, 152.17, 1, 0),
(209, 209, 28.8, 50, 45.45, 43.48, 0, 0),
(210, 210, 31.79, 70, 63.64, 60.87, 2, 0),
(211, 211, 35.9, 65, 59.09, 56.52, 2, 0),
(213, 213, 38, 75, 68.18, 65.22, 3, 0),
(214, 214, 28.5, 45, 40.91, 39.13, 4, 0),
(215, 215, 19.75, 70, 63.64, 60.87, 2, 0),
(216, 216, 16.25, 60, 54, 51, 1, 0),
(217, 217, 14.25, 60, 54, 51, 1, 0),
(218, 218, 99, 180, 163.64, 156.52, 1, 0),
(219, 219, 75, 125, 113.64, 108.7, 1, 0),
(220, 220, 40.5, 75, 68.18, 65.22, 1, 0),
(221, 221, 88.8, 145, 131.82, 126.09, 1, 0),
(222, 222, 82, 130, 118, 113.04, 1, 0),
(223, 223, 78.8, 135, 122.73, 117.39, 1, 0),
(224, 224, 117, 185, 168.18, 160.87, 1, 0),
(225, 225, 25.75, 45, 40.91, 39.13, 1, 0),
(226, 226, 17.55, 55, 50, 47.83, 1, 0),
(227, 227, 11.95, 22, 20, 19.13, 6, 0),
(228, 228, 7.8, 22, 20, 19.13, 2, 0),
(229, 229, 8.9, 22, 20, 19.13, 2, 0),
(230, 230, 35.65, 75, 68.18, 65.22, 3, 0),
(231, 231, 33.5, 60, 54.55, 52.17, 1, 0),
(232, 232, 38.8, 75, 68.18, 65.22, 2, 0),
(233, 233, 26, 45, 40.91, 39.13, 1, 0),
(234, 234, 34.9, 70, 63.64, 60.87, 1, 0),
(235, 235, 33.5, 70, 63.64, 60.87, 0, 0),
(236, 236, 43.2, 75, 68.18, 65.22, 1, 0),
(237, 237, 32.65, 85, 77.27, 73.91, 1, 0),
(238, 238, 84.5, 135, 122.73, 117.39, 0, 0),
(239, 239, 5.85, 20, 18.18, 17.39, 3, 0),
(240, 240, 36.7, 70, 63.64, 60.87, 1, 0),
(242, 242, 56, 95, 86.36, 82.61, 1, 0),
(243, 243, 29.75, 60, 54.55, 52.17, 2, 0),
(244, 244, 13.75, 25, 22.73, 21.74, 1, 0),
(245, 245, 39.95, 75, 67.5, 63.75, 2, 0),
(246, 246, 58, 115, 104.55, 100, 2, 0),
(247, 247, 6.9, 25, 22.73, 21.74, 2, 0),
(248, 248, 17.25, 35, 31.82, 30.43, 1, 0),
(249, 249, 36.25, 65, 59.09, 56.52, 1, 0),
(250, 250, 27.95, 50, 45.45, 43.48, 2, 0),
(251, 251, 23, 50, 45.45, 43.48, 2, 0),
(252, 252, 28.5, 50, 45.45, 43.48, 2, 0),
(253, 253, 21.25, 45, 40.91, 39.13, 1, 0),
(254, 254, 9.75, 30, 27.27, 26.09, 1, 0),
(255, 255, 17.55, 35, 31.82, 30.43, 3, 0),
(256, 256, 25.5, 45, 40.9, 39, 2, 0),
(257, 257, 40.25, 65, 59.09, 56.52, 2, 0),
(258, 258, 29.7, 50, 45, 42.5, 2, 0),
(259, 259, 4.6, 12, 10.91, 10.43, 3, 0),
(260, 260, 4.8, 12, 10.91, 10.43, 3, 0),
(261, 261, 9.1, 25, 22.73, 21.74, 4, 0),
(262, 262, 6.4, 20, 18.18, 17.39, 2, 0),
(263, 263, 10.95, 20, 18.18, 17.39, 4, 0),
(264, 264, 3.5, 15, 13.64, 13.04, 2, 0),
(265, 265, 52.77, 85, 76.5, 72.25, 1, 0),
(266, 266, 2.75, 15, 13.64, 13.04, 2, 0),
(267, 267, 50.9, 85, 77.27, 73.91, 2, 0),
(268, 268, 61.79, 100, 90.91, 86.96, 2, 0),
(269, 269, 46.89, 80, 72.13, 69.57, 2, 0),
(270, 270, 39.75, 70, 63.64, 60.87, 1, 0),
(271, 271, 104, 160, 145.45, 139.13, 1, 0),
(272, 272, 117, 170, 154.55, 147.83, 1, 0),
(273, 273, 1.2, 5, 4.5, 4.35, 4, 0),
(274, 274, 37.75, 60, 54.55, 52.17, 1, 0),
(275, 275, 27.35, 50, 45.45, 43.48, 1, 0),
(276, 276, 149, 235, 213.64, 204.35, 2, 0),
(277, 277, 182.5, 280, 254.55, 243.48, 2, 0),
(278, 278, 115, 190, 172.73, 165.22, 2, 0),
(279, 279, 104.25, 175, 159.09, 152.17, 1, 0),
(280, 280, 91, 175, 159.09, 152.17, 1, 0),
(281, 281, 55.9, 125, 113.64, 108.7, 1, 0),
(282, 282, 54.25, 125, 113.64, 108.7, 1, 0),
(283, 283, 26.55, 75, 68.18, 65.22, 1, 0),
(284, 284, 26.55, 75, 68.18, 65.22, 1, 0),
(285, 285, 22.75, 60, 54.55, 52.17, 1, 0),
(286, 286, 35.9, 65, 59.09, 56.52, 1, 0),
(287, 287, 39.65, 80, 72.73, 69.57, 1, 0),
(288, 288, 25.7, 50, 45.45, 43.48, 1, 0),
(289, 289, 179, 300, 272.73, 260.87, 1, 0),
(290, 290, 150.75, 250, 227.27, 217.39, 1, 0),
(291, 291, 198, 360, 327.27, 313.04, 1, 0),
(292, 292, 96, 180, 163.64, 156.52, 1, 0),
(293, 293, 92.25, 180, 163.64, 156.52, 1, 0),
(294, 294, 400, 675, 613.64, 586.96, 1, 0),
(295, 295, 189.78, 325, 295.45, 282.61, 1, 0),
(296, 296, 396.5, 625, 568.18, 543.48, 1, 0),
(297, 297, 37.1, 65, 59.09, 56.52, 1, 0),
(298, 298, 34.75, 60, 54.55, 52.17, 1, 0),
(299, 299, 39.5, 75, 68.18, 65.22, 1, 0),
(300, 300, 99, 180, 163.64, 156.52, 1, 0),
(301, 301, 42, 100, 90.91, 86.96, 1, 0),
(302, 302, 26.85, 75, 68.18, 65.22, 1, 0),
(303, 303, 14.25, 50, 45.45, 43.48, 2, 0),
(304, 304, 26.7, 70, 63.64, 60.87, 1, 0),
(305, 305, 92.25, 150, 136.36, 130.43, 1, 0),
(306, 306, 26.3, 70, 63.64, 60.87, 1, 0),
(307, 307, 42.7, 80, 72.73, 69.57, 1, 0),
(308, 308, 44.25, 100, 90.91, 86.96, 1, 0),
(309, 309, 109, 180, 163.64, 156.52, 1, 0),
(310, 310, 59.6, 100, 90.91, 86.96, 1, 0),
(311, 311, 240, 375, 340.91, 326.09, 1, 0),
(312, 312, 33.25, 60, 54.55, 52.17, 1, 0),
(313, 313, 69, 125, 113.64, 108.7, 1, 0),
(314, 314, 19, 40, 36.36, 34.78, 1, 0),
(315, 315, 37.7, 66, 60, 57.39, 2, 0),
(316, 316, 25, 55, 50, 47.83, 1, 0),
(317, 317, 47.77, 80, 72.73, 69.57, 1, 0),
(318, 318, 28.6, 50, 45.45, 43.48, 1, 0),
(319, 319, 25.35, 55, 50, 47.83, 1, 0),
(320, 320, 8.5, 35, 31.5, 31.82, 2, 0),
(321, 321, 6.9, 15, 13.5, 12.75, 2, 0),
(323, 323, 23.75, 45, 40.91, 39.13, 1, 0),
(324, 324, 23.06, 40, 36, 34, 2, 0),
(325, 325, 70.75, 115, 104.55, 100, 1, 0),
(326, 326, 54, 85, 77.27, 73.91, 1, 0),
(327, 327, 98, 150, 136.26, 130.43, 1, 0),
(328, 328, 117, 175, 159.09, 152.17, 2, 0),
(329, 329, 71, 115, 104.55, 100, 1, 0),
(330, 330, 39, 80, 72.73, 69.57, 3, 0),
(331, 331, 15, 25, 22.73, 21.74, 3, 0),
(332, 332, 227.5, 350, 318.18, 304.35, 1, 0),
(334, 334, 39, 60, 54.55, 52.17, 1, 0),
(335, 335, 26, 45, 40.5, 38.25, 2, 0),
(336, 336, 13.9, 60, 54, 51, 1, 0),
(337, 337, 11.2, 35, 31.82, 30.43, 3, 0),
(338, 338, 15, 35, 31.5, 29.75, 0, 0),
(339, 339, 1.7, 15, 13.64, 13.04, 11, 0),
(340, 340, 4.55, 15, 13.64, 13.04, 12, 0),
(341, 341, 4.65, 15, 13.64, 13.04, 12, 0),
(342, 342, 7.9, 20, 18, 17, 11, 0),
(343, 343, 9.5, 15, 13.5, 13.04, 12, 0),
(344, 344, 20.75, 45, 40.91, 39.13, 1, 0),
(345, 345, 15.5, 30, 27.27, 26.09, 2, 0),
(346, 346, 3.5, 15, 13.5, 12.75, 9, 0),
(347, 347, 65, 110, 99, 93.5, 1, 0),
(348, 348, 5.25, 20, 18.18, 17.39, 2, 0),
(349, 349, 66.8, 110, 100, 95.65, 2, 0),
(350, 350, 28.95, 90, 81.82, 78.26, 1, 0),
(351, 351, 153.94, 245, 220.5, 208.25, 2, 1),
(352, 352, 135.79, 215, 193.5, 182.75, 1, 0),
(353, 353, 184, 300, 270, 255, 1, 0),
(354, 354, 164.25, 250, 225, 212.5, 1, 0),
(355, 355, 186.75, 290, 261, 246.5, 1, 0),
(356, 356, 156.75, 250, 225, 212.5, 1, 0),
(359, 359, 186.75, 295, 265.5, 250.75, 1, 0),
(360, 360, 149.25, 250, 225, 212.5, 1, 1),
(362, 362, 81.75, 150, 135, 127.5, 3, 1),
(363, 363, 85, 150, 135, 127.5, 1, 0),
(364, 364, 74.25, 150, 135, 127.5, 2, 1),
(365, 365, 74.25, 150, 135, 127.5, 1, 0),
(366, 366, 74.25, 150, 135, 127.5, 2, 1),
(367, 367, 74.25, 150, 135, 127.5, 2, 0),
(368, 368, 74.25, 150, 135, 127.5, 1, 0),
(369, 369, 74.25, 150, 135, 127.5, 1, 0),
(370, 370, 81.57, 150, 135, 127.5, 1, 0),
(371, 371, 96.75, 165, 148.5, 140.25, 1, 0),
(372, 372, 96.75, 160, 144, 136, 1, 0),
(373, 373, 111.75, 180, 162, 153, 1, 0),
(374, 374, 81.75, 150, 135, 127.5, 1, 0),
(375, 375, 89.63, 150, 135, 127.5, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE IF NOT EXISTS `modulos` (
  `idModulos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Dir` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `RefId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idModulos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`idModulos`, `Nombre`, `Dir`, `estado`, `RefId`) VALUES
(1, 'Inicio', '../app/img/inicio.png', 1, 'inicio'),
(2, 'Usuarios', '../app/img/usuariotab.png', 1, 'usuario'),
(3, 'Compras', '../app/img/carro-de-la-compra.png', 1, 'compras'),
(4, 'Cuentas', '../app/img/etiqueta-del-precio.png', 1, 'cuentas'),
(5, 'Estadistica', '../app/img/reparacion-mecanismo.png', 1, 'estadistica'),
(6, 'Inventario', '../app/img/notas.png', 1, 'inventario'),
(7, 'Ventas', '../app/img/diagrama.png', 1, 'ventas'),
(8, 'Pagos', '../app/img/pagos.png', 1, 'pagos'),
(9, 'Clientes', '../app/img/clientes.png', 1, 'clientes1'),
(10, 'Proveedores', '../app/img/proveedores.png', 1, 'proveedores1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosc`
--

CREATE TABLE IF NOT EXISTS `movimientosc` (
  `idMovimientoC` int(11) NOT NULL AUTO_INCREMENT,
  `credito` double DEFAULT NULL,
  `abono` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(50) DEFAULT NULL,
  `idCuentasC` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMovimientoC`),
  KEY `MovimientoCCuentasC` (`idCuentasC`),
  KEY `MovimientosCUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosp`
--

CREATE TABLE IF NOT EXISTS `movimientosp` (
  `idMovimientoP` int(11) NOT NULL AUTO_INCREMENT,
  `credito` double DEFAULT NULL,
  `abono` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(50) DEFAULT NULL,
  `idCuentasP` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMovimientoP`),
  KEY `MovimientoPCuentasP` (`idCuentasP`),
  KEY `MovimientosPUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `LADA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idMunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(70) DEFAULT NULL,
  `Codigo` varchar(50) DEFAULT NULL,
  `LADA` varchar(45) DEFAULT NULL,
  `Cod` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idProductos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `Nombre` varchar(100) DEFAULT NULL,
  `CodigoProducto` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoRepuesto` int(11) DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `marca2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idProductos`),
  KEY `ProductoMarca` (`idMarca`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=376 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `Descripcion`, `Nombre`, `CodigoProducto`, `estado`, `tipoRepuesto`, `idMarca`, `marca2`) VALUES
(4, 'PULSAR 220', 'RETENEDOR DE BARRA PULSAR 220 MARCA VALROC', 'DK181019', 0, 1, NULL, ''),
(5, 'PLATINA 125 , XCD125', 'RELACION COMPLETA PLATINA 125, XCD125', '36JA0005', 1, 1, NULL, ''),
(6, 'CT100MODERNA,CT100 MODERNA', 'RELACION COMPLETA CT100 MODERNA', '36DU4003', 1, 1, NULL, ''),
(7, 'PULSAR 220', 'RELACION COMPLETA PULSAR 220', '36DK0040', 1, 1, NULL, ''),
(8, 'PULSAR 135', 'RELACION COMPLETA PULASR 135', '36JE0007', 1, 1, NULL, ''),
(9, 'DISCOVERY 150', 'RELACION COMPLETA DISCOVERY 150', '36JZ0007', 1, 1, NULL, ''),
(10, 'PULSAR NS Y AS 200', 'RELACION COMPLETA PULSAR NS200', '36JL0009', 1, 1, NULL, ''),
(11, 'BOXER 150 , DISCOVERY 125', 'RELACION COMPLETA BOXER 150', '36JZ0026', 1, 1, NULL, ''),
(12, 'DISCOVERY 125 , 135', 'RELACION COMPLETA DISCOVERY 125 Y 135', '36DS4012', 1, 1, NULL, ''),
(13, 'BOXER 100 , CT100 VIEJITAS', 'RELACION COMPLETA BOXER 100 Y CT100 ', '36DU1505', 1, 1, NULL, ''),
(14, 'PULSAR 180', 'RELACION COMPLETA PULSAR 180', '36DK0036', 1, 1, NULL, ''),
(15, 'DISCOVERY 100', 'RELACION COMPLETA DISCOVERY 100', '36PA0042', 1, 1, NULL, ''),
(16, 'PLATINA 125 , XCD125', 'CILINDRO COMPLETO PLATINA 125', '36JD0021', 1, 1, NULL, ''),
(17, 'PULSAR 135', 'CILINDRO COMPLETO PULSAR 135', '36JE0012', 1, 1, NULL, ''),
(18, 'PULSAR 220', 'CILINDRO COMPLETO PULSAR 220', 'DK101625', 1, 1, NULL, ''),
(19, 'DISCOVERY 125 ', 'CILINDRO COMPLETO DISCOVERY 125', '36JZ0024', 1, 1, NULL, ''),
(20, 'PLATINA 125   ', 'CILINDRO COMPLETO PLATINA 125', '36JK0031', 1, 1, NULL, ''),
(21, 'PULSAR NS200', 'CILINDRO COMPLETO PULSAR NS 200', '36JL0007', 1, 1, NULL, ''),
(22, 'BOXER 100,CT100,PLATINA 100', 'CILINDRO COMPLETO BOXER 100', 'DU101218', 1, 1, NULL, ''),
(23, 'PULSAR 135', 'CABLE DE CLUTCH PULSAR 135', 'JD161201', 1, 1, NULL, ''),
(24, 'PLATINA 125', 'CABLE DE ACELERADOR PLATINA 125', 'JK161200', 1, 1, NULL, ''),
(25, 'PULSAR 150,180,200 UG2,UG3,UG4', 'CABLE DE ACELERADOR PULSAR 180', 'DJ191061', 1, 1, NULL, ''),
(26, 'DISCOVERY 125, 150', 'CABLE DE ACELERADOR DISCOVERY125,150', 'JZ161202', 1, 1, NULL, ''),
(27, 'PULSAR,200,220,180', 'CABLE DE ASPIROMETRO PULSA 180 Y VARIAS', 'JC201043', 1, 1, NULL, ''),
(28, 'PULSAR 220', '', 'JC191019', 1, 1, NULL, 'CABLE DE ACELERADOR PULSAR 220'),
(29, 'PULSAR 180,200,220', 'CABLE DE CLUTCH PULSAR 180,200', 'DK191011', 1, 1, NULL, ''),
(30, 'DISCOVERY 100, 135', 'CABLE DE ASPIROMETRO DISCOVERY 100,135', 'DS191006', 1, 1, NULL, ''),
(31, 'DISCOVERY 125, 150', 'CABLE DE CLUTCH DISCOVERY', 'JZ161203', 1, 1, NULL, ''),
(32, 'XCS', 'CABLE DE CLUTCH XCD', 'JA161201', 1, 1, NULL, ''),
(33, 'DISCOVERY 135', 'CABLE DE ASPIROMETRO CON SENSOR DISC 135', 'DS191053', 1, 1, NULL, ''),
(34, 'PULSASAR, 180,200,220', 'CABLE DE CLUTCH PULSAR 180,200,220', 'JC191004', 1, 1, NULL, ''),
(35, 'DISCOVERY 125,135', 'CABLE DE CLUTCH DISCOVERY 125,135', 'DS191001', 1, 1, NULL, ''),
(36, 'PULSAR NS 200', 'CABLE DE ACELERADOR PULSAR NS 200', 'JL161201', 1, 1, NULL, ''),
(37, 'DISCOVERY 135,125', 'CABLE DE ACELERADOR DISCOVERY 135,125', 'DS191012', 1, 1, NULL, ''),
(38, 'CT100 PLATINA', 'CABLE DE ACELERADOR CT100 PLATINA ', 'DU191005', 1, 1, NULL, ''),
(39, 'BOXER', 'CABLE DE ACELERADOR BOXER', 'DF191019', 1, 1, NULL, ''),
(40, 'PULSAR 135', 'CABLE DE ACELERADOR PULSAR 135', 'JD161200', 1, 1, NULL, ''),
(41, 'BOXER ,CT100 PLATINA', 'CABLE DE CLUTCH BOXER, CT100, PLATINA', 'DU191006', 1, 1, NULL, ''),
(42, 'PULSAR 135,XCD', 'CABLE DE ASPIROMETRO PULSAR 135,XCD', 'DJ201183', 1, 1, NULL, ''),
(43, 'DISCOVERY 100,125,135', 'CABLE DE FRENO DISCOVERY 100,125,135', 'DS191054', 1, 1, NULL, ''),
(44, 'PLATINA 125', 'CABLE DE CLUTCH PLATINA 125', 'JK161201', 1, 1, NULL, ''),
(45, 'XCD', 'CABLE DE ACELERADOR XCD', 'DD191132', 1, 1, NULL, ''),
(46, 'CT100', 'CABLE DE CLUTCH CT100', 'DM191017', 1, 1, NULL, ''),
(47, 'XCD', 'CABLE DE FRENO XCD', 'JA161203', 1, 1, NULL, ''),
(48, 'DISCOVERY 125,150', 'CABLE DE ASPIROMETRO DISCOVERY 125,150', 'JZ161210', 1, 1, NULL, ''),
(49, 'PULSAR NS 200', 'RETROVISOR IZQUIERDO PULSAR NS200', 'JL231600', 1, 1, NULL, ''),
(50, 'PULSAR NS 200', 'RETROVISOR DERECHO PULSAR NS200', 'JL231601', 1, 1, NULL, ''),
(51, 'D125,135,150,PULSAR,180,200', 'PIDEVIAS TRASERO IZQUIERDO VARIAS MOTOS', 'DJ201206', 1, 1, NULL, ''),
(52, 'D125,135,150,PULSAR,180,200', 'PIDEVIAS TRASERO DERECHO VARIAS MOTOS', 'DJ201207', 1, 1, NULL, ''),
(53, 'PULSAR 135', 'LLAVE DE PASO DE COMBUSTIBLE PULSAR 135', 'JD171602', 1, 1, NULL, ''),
(54, 'DISCOVERY 125', 'CDI DISCOVERY 125', 'JZ351206', 1, 1, NULL, ''),
(55, 'PULSAR 150,220 NS200', 'BOMBA DE FRENO COMPLETA', 'DJ191056', 1, 1, NULL, ''),
(56, 'PULSAR 135', 'BOBINA DE ALTA IZQUIERDA PULSAR 135', 'JE351203', 1, 1, NULL, ''),
(57, 'PULSAR 135', 'BOBINA DE ALTA DERECHA PULSAR 135', 'JE351204', 1, 1, NULL, ''),
(58, 'PULAR 135', 'PIDEVIA LH PULSAR 135', 'JD401004', 1, 1, NULL, ''),
(59, 'DISCOVERY 100,125', 'BOBINA DE ALTA DERECHA DISCOVERY 100,125', 'PA351202', 1, 1, NULL, ''),
(60, 'PLATINA BOXER CT100', 'CDI PLATINA BOXER,CT100', 'DZ111002', 1, 1, NULL, ''),
(61, 'PULSAR 180,200,220', 'BOBINA DE ALTA DERECHA PULSAR 180,200,220', 'JC111023', 1, 1, NULL, ''),
(62, 'PULSAR 180,200 ', 'CDI PULSAR200 PULSAR180', 'DJ111092', 1, 1, NULL, ''),
(63, 'DISCOVERI   100 125 150', 'REGULADOR DISCOVERI 100 125 150 ', 'JK40200', 1, 1, NULL, ''),
(64, 'PLATNA 125', 'REGULADOR PLATINA', 'KJ402003', 1, 1, NULL, ''),
(65, 'BOXER125,PLATINA125,XCD', 'EMPAQUE DE CULATA BOXER125,PLATINA YXCD', 'JA511006', 1, 1, NULL, ''),
(66, 'PULSAR NS', 'EMPAQUE TAPADERA DE VALVULAS PULSAR NS', 'JL511001', 1, 1, NULL, ''),
(67, 'BOXER125,PLATINA125,XCD', 'EMPAQUE DE TAPADERA DE VALVULAS PLATINA 125 XCD', 'JA511012', 1, 1, NULL, ''),
(68, 'PULSAR 180 UG2,UG3,UG4', 'EMPAQUE DE CULATA PULSAR 180', 'DJ101012', 1, 1, NULL, ''),
(69, 'PULSAR 200,220', 'EMPAQUE DE CULATA PULSAR 200,220', 'DK101003', 1, 1, NULL, ''),
(70, 'PULSAR NS', 'EMPAQUE DE CULATA PULSAR NS', 'JL511022', 1, 1, NULL, ''),
(71, 'CT100,DISCOVERY100,PLATINA 100', 'EMPAQUE DE CULATA CT100 D100 PL100', 'DD101342', 1, 1, NULL, ''),
(72, 'BOXER 150,DISCOVERY150,PULSAR135', 'EMPAQUE DE CULATA BOX150,PLATINA 135', 'JZ511016', 1, 1, NULL, ''),
(73, 'PULSAR NS200', 'EMPAQUE DE CARTER PULSAR NS 200', 'JG541041', 1, 1, NULL, ''),
(74, 'PLATINA 125,XCD', 'EMPAQUE DE CILINDRO PLATINA 125 XCD', 'JA521001', 1, 1, NULL, ''),
(75, 'PULSAR NS200', 'EMPAQUE DE CILINDRO PULSAR NSN200', 'JL521002', 1, 1, NULL, ''),
(76, 'PULSAR 135 Y TODAS LAS DISCOVERY', 'EMPAQUE DERECHO DE CARTER DE CLUTCH', 'JA541212', 1, 1, NULL, ''),
(77, 'PULSAR NS200', 'EMPAQUE DE TAPADERA DE CLUTCH PULAR NS', 'JL541207', 1, 1, NULL, ''),
(78, 'PULSAR,200,220,180', 'EMPAQUE DE CILINDRO PULSAR 200,220', 'DK101063', 1, 1, NULL, ''),
(79, 'CT100,PLATINA', 'KIT DE EMPAQUES MOTOR CT100,PLATIN', 'SE8869B', 1, 1, NULL, ''),
(80, 'PLUSAR 180', 'KIT DE EMPAQUE MOTOR PULSAR 180', 'SE8855B', 1, 1, NULL, ''),
(81, 'D100,125,150 ,P135 PL,XCD', 'KIT DE SELLOS O RETENEDOR DE BARRA D100,125,150 ,P135 PL,XCD', '36DZ0020', 1, 1, NULL, ''),
(82, 'PULSAR 220', 'CDI PULSAR 220', 'DK111072', 1, 1, NULL, ''),
(83, 'XCD', 'BOBINA DE ALTA DERECHA XCD', 'JA351204', 1, 1, NULL, ''),
(84, 'PULSAR NS.200', 'BOBINA DE ALTA LADO IZQUIERDO PULSAR NS.200', 'JL351201', 1, 1, NULL, ''),
(85, 'XCD', 'BOBINA DE ALTA IZQUIERDA XCD', 'JA351203', 1, 1, NULL, ''),
(86, 'PULSAR 180,200,220', 'RETENEDORES DE BARRA PULSAR 180,200,220', 'DK181019', 1, 1, NULL, ''),
(87, 'PULSAR 180,200,220, DISCOVERI125,135', 'TACO DERECHO DELANTERO D125,135,PULSAR180,200,220', 'DJ161127', 1, 1, NULL, ''),
(88, 'PULSAR 180,200,220, DISCOVERI125,135', 'TACO IZQUIERDO DELANTERO D125,135,PULSAR180,200,220', 'DJ161126', 1, 1, NULL, ''),
(89, 'D125,135,150,PULSAR,200,220', 'TACO TRASERO DERECHO COMPLETO D125,135,P135,150,200,', 'DJ161129', 1, 1, NULL, ''),
(90, 'D125,135,150,PULSAR,200,220', 'TACO TRASER IZQUIERDO COMPLETO D125,135,P135,150,200,', 'DJ161128', 1, 1, NULL, ''),
(91, 'DISCOVERI125,150,PULSAR180,200,220', 'SOLENOIDE DE STARTER D125,150, PULSAR 200,220,180', 'DK201078', 1, 1, NULL, ''),
(92, 'PULSAR 200,220', 'KIT DE VALVULAS PULSAR 200,220', 'DK101327', 1, 1, NULL, ''),
(93, 'PULSAR 135', 'REGULADOR PULSAR 135', 'JW402001', 1, 1, NULL, ''),
(94, 'PULSAR 180,200,220', 'BOBINA DE ALTA LH PULSAR 180,200,220', 'JC111022', 1, 1, NULL, ''),
(95, 'PULSAR 135,150,180,220', 'SWITCH DE CLUTCH', 'DJ201195', 1, 1, NULL, ''),
(96, 'BOXER100,150,CT100,PLATINA100', 'BULBO DE FRENO BOXER 100,150,CT100,PLATINA100', '31201079', 1, 1, NULL, ''),
(97, 'XCD', 'REGULADOR DE CORRIENTE', 'JB40200', 1, 1, NULL, ''),
(98, 'BOXER,CT,PLATINA', 'REGULADOR DE CORRIENTE BOX,CT,PL', 'DU201062', 1, 1, NULL, ''),
(99, 'BOXER,CT100,PLATINA', 'KIT DE VALVULAS ADMISION Y ESCAPE ', '36311028', 1, 1, NULL, ''),
(100, 'XCD', 'KIT DE VALVULAS ADMISION Y ESCAPE ', '36JA0002', 0, 1, NULL, ''),
(101, 'PULSAR180,220', 'RETENEDOR DE EJE DE SALIDA', '30101014', 1, 1, NULL, ''),
(102, 'BOX150,CT100,D125,D135', 'RETENEDOR DE PLANTA', '39171519', 1, 1, NULL, ''),
(103, 'P180,200,220', 'RETENEDOR PLANTA CIGÜEÑAL', '39218819', 1, 1, NULL, ''),
(104, 'D135,BOXER,S125,', 'RETENEDOR DE SPROKET', '30151083', 1, 1, NULL, ''),
(105, 'PULSAR 220', 'SENSOR DE TEMPERATURA PULSAR 220', 'DK101503', 1, 1, NULL, ''),
(106, 'A220,D135,D150,P135,P200,P220,', 'CAPUCHON DE CANDELA', 'DH111015', 1, 1, NULL, ''),
(107, 'D125,100,150,PULSAR180', 'CAPUCHON DE CANDELA', 'DD111048', 1, 1, NULL, ''),
(108, 'NS200', 'CAPUCHON CENTRAL PULSAR NS200', 'DK111011', 1, 1, NULL, ''),
(109, 'PULSAR UG3,UG4', 'SWITCH FRONTAL DE FRENO', 'DJ201109', 1, 1, NULL, ''),
(110, 'BOX125,150,CT100,D100,D125,125ST,P135', 'SELLO O RETENEDOR DE EJE DE PATA DE ARRANQUE 16*26*7', '30101142', 1, 1, NULL, ''),
(111, 'PULSAR 150,180,200,220', 'REGULADOR DE VOLTAJE VALROC', 'DJ2012021', 1, 1, NULL, ''),
(112, 'XCD', 'VALVULAS DE ESCAPE PULSAR 135 VALROC', 'JD511202', 1, 1, NULL, ''),
(113, 'NS200', 'CANDELA CENTRAL PULSAR NS', 'JG351209', 1, 1, NULL, ''),
(114, 'PL125,XCD', 'EMPAQUE DE TAPADERA DE VALVULAS ', 'JV511012', 1, 1, NULL, ''),
(115, 'DISCOVERIS TODAS', 'SENSOR DE TEMPERATURA TODAS LAS DISCOVERIS', 'JW351400', 1, 1, NULL, ''),
(116, 'DISCOVERI TODAS,PULSAR TODAS', 'RETENEDOR DE VELOCIDADES', '39219019', 1, 1, NULL, ''),
(117, 'CT100,DISCOVERY100,PLATINA 100', 'SWITCH FRENO DELANTERO CT100,D125,PL125,100', 'DD201170', 1, 1, NULL, ''),
(118, 'D125,D135,P150,PUG3', 'VALVULAS DE ADMISION Y ESCAPE', '36DS1002', 1, 1, NULL, ''),
(119, 'PULSAR 180.200,220 D125,135', 'RETROVISOR DERECHO PULSAR', 'DJ221004', 1, 1, NULL, ''),
(120, 'PULSAR 180.200,220 D125,135', 'RETROVISOR IZQUIERDO PULSAR   ', 'DJ221003', 1, 1, NULL, ''),
(121, 'PLATINA 125,XCD', 'KIT DE RETENEDORES DE PLANTA', 'SE3868C', 1, 1, NULL, ''),
(122, 'BOXER150,CT100', 'PIDEVIA TRASERO IZQUIERDO', 'DU201012', 1, 1, NULL, ''),
(123, 'BOXER150,CT100', 'PIDEVIA TRASERO DERECHO', 'DU201014', 1, 1, NULL, ''),
(124, 'PULSAR 135', 'RETROVISOR IZQUIERDO', 'JD231600', 1, 1, NULL, ''),
(125, 'PULSAR 135', 'RETROVISOR DERECHO', 'JD231601', 1, 1, NULL, ''),
(126, 'TODAS LAS MOTOS BAJAJ', 'SELLOS DE VALVULA TODAS LAS MOTOS', '39201719', 1, 1, NULL, ''),
(127, 'PULSAR 135', 'VALVULA DE ESCAPE PULSAR 135', 'JD511202', 1, 1, NULL, ''),
(128, 'PULSAR 135,UG2,UG3,UG4,200', 'RESORTE BULBO DE FRENO', 'DH191012', 1, 1, NULL, ''),
(129, 'XCD', 'KIT DE VALVULAS DE ADMISION Y ESCAPE', '36JA0002', 1, 1, NULL, ''),
(130, 'PULSAR 180 UG1,UG2,UG3,UG4', 'KIT DE VALVULAS DE ADMISION Y ESCAPE', '36DJ1004', 1, 1, NULL, ''),
(131, 'PULSAR 220', 'RETENEDOR DE BARRA PULSAR 220 MARCA VALROC', 'DK181019', 1, 1, NULL, ''),
(132, 'CT100', 'MANECILLA COMPLETA DERECHA', 'DU191031', 1, 1, NULL, ''),
(133, 'BOXER', 'MANECILLA COMPLETA DERECHA', 'DD191140', 1, 1, NULL, ''),
(134, 'PULSAR NS200', 'CAJA DE CONTACTOS PULSAR NS200 LH', 'JL401400', 1, 1, NULL, ''),
(135, 'PULSAR 180 220 ', 'MANECILLA COMPLETA IZQUIERDA PULSAR VARIAS', 'DJ191082', 1, 1, NULL, ''),
(136, 'PULSAR 135,BOXER XCD', 'FILTRO DE AIRE ELEMENTO ESPONJA', 'JA581006', 1, 1, NULL, ''),
(137, 'PULSAR 220 ,UG2,UG4 180.00', 'FILTRO DE AIRE PULSAR 180,Y220 UG2,2G4', '36DK0015', 1, 1, NULL, ''),
(138, 'PULSAR VARIAS Y DISCOVERIS', 'HULE DE MASA DISCOVERIS Y TODAS LAS PULSAR ', 'JG131219', 1, 1, NULL, ''),
(139, 'BOXER DISCOVERIS Y PULSAR VARIAS', 'HULE DE MASA BOXER DISCOVERIS Y PULSAR VARIAS', 'DJ151088', 1, 1, NULL, ''),
(140, 'PULSAR NS200', 'FILTRO DE AIRE PULSAR NS200', 'JL581009', 1, 1, NULL, ''),
(141, 'PULSAR 150,180', 'FLOTE DE CARBURADOR PULSAR 150,180', 'DJ121055', 1, 1, NULL, ''),
(142, 'PULSAR 220 Y 180', 'FLOTE DE CARBURADOR PULSAR 220', 'DK121045', 1, 1, NULL, ''),
(143, 'PULSAR 180 UG4', 'CARBURADOR COMPLETO PULSAR UG4 180', 'DJ121041', 1, 1, NULL, ''),
(144, 'BOXER,CT100,PLATINA', 'KIT DE DISCOS DE CLTUCH BOXER ,CT100,PLATINA', '36DD4008', 1, 1, NULL, ''),
(145, 'PLATINA XCD', 'KIT DE DISCOS DE CLUTCH PLATINA XCD', '36DH4025', 1, 1, NULL, ''),
(146, 'PLATINA 125 XCD', 'KIT DE DISCOS DE CLUTCH PLATINA125 Y XCD', '36JA0020', 1, 1, NULL, ''),
(147, 'PULSAR 135,DISCOVERY 150', 'KIT DE DISCOS DE CLUTCH PULSAR 135, DISCOVERY 150', '36JE0005', 1, 1, NULL, ''),
(148, 'PULSAR 150,180,200,220', 'DISCOS DE CLUTCH DE METAL PULSAR P150,P200,220,180', 'DK101565', 1, 1, NULL, ''),
(149, 'PULSAR 180,200,220', 'DISCOS DE CLUTCH DE METAL PULSAR P180,P200,P220', 'DJ101369', 1, 1, NULL, ''),
(150, 'BOXER125,150,PLATINA125,XCD', 'DISCOS DE CLUTCH DE METAL BOXER125,150,PLATINA125,XCD', 'JA551419', 1, 1, NULL, ''),
(151, 'BOXER 100,125,CT100', 'DISCOS DE CLUTCH DE METAL BOXER125,150,PLATINA125,XCD', '30101096', 1, 1, NULL, ''),
(152, 'DISCOVERY 125,150,PULSAR 180 Y 150', 'PASTILLA DE FRENO DISCOVERY 125,150,PULSAR 180,220,,200 DELANTERAS.', 'DE151037', 1, 1, NULL, ''),
(153, 'DISCOVERY 125,150', 'BOMBA DE FRENO DE MANECILLA DISCOVERY 125,150', 'DE151015', 1, 1, NULL, ''),
(154, 'PULSAR 180,200,220', 'SWITCH DERECHO PULSAR 180,200,220', 'JC201018', 1, 1, NULL, ''),
(155, 'CT100', 'SWITCH CON MANECILLA (CAJA DE CONTACTOS IZQUIERDA', 'DU191033', 1, 1, NULL, ''),
(156, 'PULSAR 135 ', 'SWITCH IZQUIERDO PULSAR 135', 'JF401400', 1, 1, NULL, ''),
(157, 'PULSAR 135 ', 'SWITCH DERECHO PULSAR 135 ', 'JF401401', 1, 1, NULL, ''),
(158, 'BOX,DISCOVERY,PLATINA,XCD', 'SWITCH IZQUIERDO BOXER DISCOVERI Y PLATINAS XCD', 'JB401400', 1, 1, NULL, ''),
(159, 'BOX,DISCOVERY,PLATINA,XCD', 'SWITCH DERECHO CAJA DE CONTACTOS BOXER,DISC,PL,XCD', 'JB401401', 1, 1, NULL, ''),
(160, 'PULSAR NS', 'SWITCH DERECHO (CAJA DE CONTACTOS DERECHA) NS', 'JL401401', 1, 1, NULL, ''),
(161, 'PULSAR135,DISCOVERY,35', 'FLOTE DE CARBURADOR DISCOVERI 125,PULSAR135', 'DH121059', 1, 1, NULL, ''),
(162, 'P135,150,200,180,220,DIS125,135,150,BOXER', 'MANECILLA IZQUIERDA BOXER150,D125,135,150,P135,150,180', 'DJ191055', 1, 1, NULL, ''),
(163, 'DISCOVERY 125ST,PULSAR 135, XCD', 'MANECILLA DE FRENO DISCOVERY 125ST, PULSAR 135, XCD', 'DJ191059', 1, 1, NULL, ''),
(165, 'DISCOVERIS PULSAR 135 XCD', 'FILTRO DE ACEITE CON RESORTE VARIS MOTOS', 'DD121181V', 1, 1, NULL, ''),
(166, 'PULSAR NS200', 'FILTROS DE ACEITE PULSAR NS200', 'JG571014', 1, 1, NULL, ''),
(167, 'PULSAR 150,200,180,220', 'SWITCH IZQUIERDO (CAJA DE CONTACTOS LH)', 'JC201017', 1, 1, NULL, ''),
(168, 'DTS. D100. D125. D150. P135. PL125. XCD', 'FILTRO DE ACEITE DTS. D100. D125. D150. P135. PL125. XCD', 'JA541019', 1, 1, NULL, ''),
(169, 'PULSAR 135,UG1,UG2,UG3', 'KIT DE CUNAS Y BALINES PULSAR 135,PUG1,PUG2,PUG3', '36314005', 1, 1, NULL, ''),
(170, 'BOXER 100,CT100,PLATINA100 ', 'FRICCIONES DE FRENO BOXER ,150,CT100,PLATINA', '31151060', 1, 1, NULL, ''),
(171, 'PULSAR 180,UG2,UG3,UG4', 'KIT DE DIAFRAGMA PULSAR 180 TODAS', 'DJ121051', 1, 1, NULL, ''),
(173, 'PULSAR NS200', 'TAPON DE DRENAJE DE ACEITE', 'JA541048', 1, 1, NULL, ''),
(174, 'D125,135,P200,180,220', 'TAPON DE DRENAJE DE ACEITE', 'DH101661', 1, 1, NULL, ''),
(175, 'PULAR 220', 'TAPON DE ACEITE PULSAR 220', 'DS101071', 1, 1, NULL, ''),
(176, 'DISCOVERI135', 'TAPON DE DRENAJE DE ACEITE', 'DS121005', 1, 1, NULL, ''),
(177, 'PULSAR 150,180 UG4', 'AGUJA DE AIRE DE CARBURADOR', 'DH121150', 1, 1, NULL, ''),
(178, 'TODAS LAS MOTOS BAJAJ', 'VIDRIO NIVEL DE ACEITE ', 'DG101418', 1, 1, NULL, ''),
(179, 'P135,150,UG1,UG2,UG3', 'AGUJA DE FLOTE P135,150', 'DH121093', 1, 1, NULL, ''),
(180, 'XCD', 'KIT DE CARBURADOR VALROC XCD', 'JA581313', 1, 1, NULL, ''),
(181, 'CT100', 'KIT DE CARBURADOR VALROC CT100', '36DU1204', 1, 1, NULL, ''),
(182, 'DISCOVERI 135', 'KIT DE CARBURADOR VALROC D135', '36DS1201', 1, 1, NULL, ''),
(183, 'PULSAR 180 UG4', 'KIT DE CARBURADOR VALROC PULSAR 180 UG4', 'DJ121056', 1, 1, NULL, ''),
(184, 'BOXER100,150,CT100,PLATINA100', 'HULES DE MASA VALROC ', '31151021', 1, 1, NULL, ''),
(185, 'DISCOVERI 135', 'FLOTE DE CARBURADOR D135', 'DS121080', 1, 1, NULL, ''),
(186, 'PULSAR 180', 'AGUJA DE DIAFRACMA CARBURADOR', 'DJ121044', 1, 1, NULL, ''),
(187, 'PULSAR 220,200,180,150', 'AGUJA DE FLOTE CARBURADOR', 'DK121047', 1, 1, NULL, ''),
(188, 'BOXER100,125,CT100', 'KIT DE AGUJAS DE CARBURADOR', '36DU1206', 1, 1, NULL, ''),
(189, 'PULSAR 135', 'AGUJA DE AIRE DE CARBURADOR', '36JD0002', 1, 1, NULL, ''),
(190, 'PULSAR 135,150,180,200,220,NS200', 'MANECILLA DERECHA P135,150,180,200,220,NS200', 'DJ191057', 1, 1, NULL, ''),
(191, 'NA200,NS200', 'DISCOS DE CLUTCH PULSAR NS200 , AS200', '36JU0002', 1, 1, NULL, ''),
(192, 'XCD', 'SWITCH ENSENDIDO 3 EN 1', 'JB232600', 1, 1, NULL, ''),
(193, 'CT100', 'PATA DE CAMBIOS CT100', 'DD101495', 1, 1, NULL, ''),
(194, 'DISCOVERY 125 ST', 'EJE DE CAMBIOS DISCOVERY 125 ST', '52JZ0264', 1, 1, NULL, ''),
(195, 'DISCOVERY 100M', 'LLAVE DE PASO DE GASOLINA CODIGO ALTERNO D8141018', 'JZ171809', 1, 1, NULL, ''),
(196, 'DISCOVERY 125,135', 'SWITCH ENSENDIDO COMPLETO DISCOVERY 125,135', 'DS181036', 1, 1, NULL, ''),
(197, 'PULSAR NS 200', 'SWITCH ENSENDIDO PULSAR NS200', 'JL401403', 1, 1, NULL, ''),
(198, 'DISCOVERY 100.125,150', 'SWITCH ENSENDIDO 3 EN 1 D100,150', 'JZ232600', 1, 1, NULL, ''),
(199, 'DISCOVERY 125, PLATINA 125', 'SWITCH ENSENDIDO 3 EN 1 D125,P125', 'JK232600', 1, 1, NULL, ''),
(200, 'PULSAR 220', 'MANIFUL PULSAR 220', 'JC120017', 1, 1, NULL, ''),
(201, 'PULSAR 180 PCLA,PUG1,PUG2,PUG3', 'PISTON CON ANILLOS PULSAR 180 ', 'DJ101158', 1, 1, NULL, ''),
(202, 'PULSAR NS200', 'EJE DE CAMBIOS PULSAR NS 200', 'JG561200', 1, 1, NULL, ''),
(203, 'PLATINAS PUG1,PUG4', 'EJE SELECTOR DE CAMBIOS ', '52DH0117', 1, 1, NULL, ''),
(204, 'BOXER CT-100 PLATINA', 'EJE DE CAMBIOS ', '52DU0104', 1, 1, NULL, ''),
(205, 'PULSAR NS200', 'PISTON PULSAR NS200', 'JL521200', 1, 1, NULL, ''),
(206, 'DISCOVERY 135', 'EJE DE CAMBIOS DISCOVERY 135', 'DS101134', 1, 1, NULL, ''),
(207, 'TODAS LAS MOTOS BAJAJ', 'EMPAQUE DE BOMBA DE FRENO', 'DE191028', 1, 1, NULL, ''),
(208, 'XCS', 'PISTON CON ANILLOS XCD', 'JP521200', 1, 1, NULL, ''),
(209, 'DISCOVERI 125,150', 'BOMBA DE ACEITE CON ENGRANAJE DISCOVERI125,150', 'JZ571000', 1, 1, NULL, ''),
(210, 'PULSAR 200,220', 'LLAVE DE PASO DE GASOLINA PULSAR 200,220', 'DJ141056', 1, 1, NULL, ''),
(211, 'PULSAR 220', 'PASTILLA DE FRENO TRASERA PULSAR 220', 'DK151085', 1, 1, NULL, ''),
(213, 'PULSAR NS 200', 'PASTILLA FRENO DELANTERO PULSAR NS200', 'JL131805', 1, 1, NULL, ''),
(214, 'PULSAR 135 DISC125,XCD', 'JUEGO DE PASTILLAS DISCOVERY 125, PULSAR 135, PULSAR,150', 'JW131807', 1, 1, NULL, ''),
(215, 'PULSAR 150,180,220', 'KIT DE GUIAS DE CADENA DE TIEMPO', 'JC101038', 1, 1, NULL, ''),
(216, 'PLATINA 125', 'KIT DE GUIAS DE CADENA DE TIEMPO', '36JK0012', 1, 1, NULL, ''),
(217, 'BOXER Y XCD', 'KIT DE GUIAS DE CADENA DE TIEMPO', '36JA0004', 1, 1, NULL, ''),
(218, 'PULSAR 180,200,220', 'KIT SWITCH ENSENDIDO COMPLETO PULSAR 180,200,220', 'JC181029', 1, 1, NULL, ''),
(219, 'PULSAR 135,150,XCD', 'SWITCH DE ENCENDIDO PULSAR 135,150 XCD', 'JB401402', 1, 1, NULL, ''),
(220, 'PULSAR 150,180,200,220', 'EJE DE CAMBIOS DE VELOCIDADES PULSAR 150,180,200,220', 'DH101705', 1, 1, NULL, ''),
(221, 'BOXER 100,CT100,PLATINA 100', 'SWITCH COMPLETO CON LLAVES BOXER 100,CT100', 'DU181032', 1, 1, NULL, ''),
(222, 'PULSAR135,XCD', 'MANGUERA DE FRENO PULSAR 135 ,XCD', 'JD131808', 1, 1, NULL, ''),
(223, 'BOXER150,DISCOVERI125,150', 'EJE DE LEVAS BOXER150,DIS125,D150', 'JZ511004', 1, 1, NULL, ''),
(224, 'DISCOVERI 100,135', 'KIT DE PISTON STD DISCOVERI 135,100', 'JB521200', 1, 1, NULL, ''),
(225, 'BOXER CT100', 'ESPACIADOR DE MANIFUL BOXER,CT100', 'DU101058', 1, 1, NULL, ''),
(226, 'PULSAR 220', 'KIT DE GUIAS DE CADENA DE TIEMPO PULSAR 220', 'DK101330', 1, 1, NULL, ''),
(227, 'PULSAR 180,200,220', 'TENSOR DE CADENA DE TRACCION PULSAR 200,220,180', 'JM171003', 1, 1, NULL, ''),
(228, 'BOXER,PULSAR 135,DISCOVERIS', 'TENSOR DE CADENA DERECHO ', 'DJ151037', 1, 1, NULL, ''),
(229, 'BOXER,PULSAR 135,DISCOVERIS', 'TENSOR DE CADENA IZQUIERDO', 'DJ151036', 1, 1, NULL, ''),
(230, 'PULSAR 180,UG,UG3,200', 'CADENA DE TIEMPO 98 ESLABONES PULSAR 180,200', 'JC101035', 1, 1, NULL, ''),
(231, 'BOXER100,DIS100,PLATINA125', 'CADENA DE TIEMPO 92 ESLABONES BOXER 100,DIS100,PL125', 'JA531011', 1, 1, NULL, ''),
(232, 'PULSAR 220', 'CADENA DE TIEMPO PULSAR 220', 'DK101064', 1, 1, NULL, ''),
(233, 'BOXER100,CT100,PLATINA', 'CADENA DE TIEMPO BOXER 100,150,CT100,PLATINA', '31101033', 1, 1, NULL, ''),
(234, 'PULSAR150,180UG3UG4UG2,200,220', 'TENSOR DE CADENA DE TIEMPO PULSAR 150,200,180,220', 'JC101034', 1, 1, NULL, ''),
(235, 'PULSAR 135,D100,125,150,PL,XCD', 'TENSOR DE CADENA DE TIEMPO PULSAR135,D100,125,150,PL', 'JA521017', 1, 1, NULL, ''),
(236, 'BOXER150,DISCOVERI125,PULSAR135', 'CADENA DE TIEMPO BOXER 150,D125,PULSAR135', 'DS109905', 1, 1, NULL, ''),
(237, 'DISCOVERY TS,125,PULSAR 180 VIEJITAS', 'TENSOR DE CADENA DE TIEMPO DTS,D125,PULSAR 180 VIEJITAS', 'DS101277', 1, 1, NULL, ''),
(238, 'PULSAR 135', 'EJE DE LEVAS PULSAR 135', 'JD511211', 1, 1, NULL, ''),
(239, 'PULSAR VARIAS,DISCOVERI VARIAS Y BOXER', 'SPROCKET DE CADENA DE TIEMPO DISCOVERIS,PULSAR,BOXER', 'DS101276', 1, 1, NULL, ''),
(240, 'DISCOVERI125,135,PUG1', 'TENSOR DE CADENA DE TIEMPO D125,D135,PUG1', 'DJ101216', 1, 1, NULL, ''),
(242, 'PULSAR UG4 180.', 'EJE DE LEVAS SOLO PULSAR 180 UG4', 'DJ101372', 1, 1, NULL, ''),
(243, 'PULSAR 180,200,220', 'EJE DE RUEDA TRASERA PULSAR 180,200,220', 'DK151009', 1, 1, NULL, ''),
(244, 'BOX150,D100M,D125,D125ST,P135,XCD', 'EJE DE RUEDA DELANTERA ', 'JB131017', 1, 1, NULL, ''),
(245, 'BOXER100,CT100,PLATINA100', 'KIT O SET ANILLOS STD 100CC BOXER1OO,CT100,PLATINA100', '36DD4001', 1, 1, NULL, ''),
(246, 'D125ST.D135.P135.P200.P200AS.P200NS.P180', 'KIT CALIPER DE MORDAZA DELANTERO ', 'DJ151075', 1, 1, NULL, ''),
(247, 'DISCOVERY 125,150', 'HULE DE MANIFUL D125.D150', 'JZ581210', 1, 1, NULL, ''),
(248, 'XCD', 'EJE DE MULETA PARA LA XCD', 'JB122004', 1, 1, NULL, ''),
(249, 'DISCOVERI 125,135,150,XCD', 'EJE DE RUEDA TRASERA D125,135,150,XCD', 'JN131211', 1, 1, NULL, ''),
(250, 'D125,135,P150,180', 'EJE DE RUEDA TRASERA', 'DJ151032', 1, 1, NULL, ''),
(251, 'PULSAR 180,220', 'EJE DE RUEDA DELANTERA ', 'DK151008', 1, 1, NULL, ''),
(252, 'D125,D135,P150,PUG3', 'EJE RUEDA DELANTERA', 'DJ151041', 1, 1, NULL, ''),
(253, 'PULSAR UG4,200,220', 'EJE DE MULETA PULSAR 180,200,220', 'DK171003', 1, 1, NULL, ''),
(254, 'BOXER100,CT100', 'EJE DE MULETA BOXER 100,CT100', '31171006', 1, 1, NULL, ''),
(255, 'PULSAR 135', 'VALVULA DE ADMISION PULSAR 135', 'JD511201', 1, 1, NULL, ''),
(256, 'D125ST,D135,D150,P150,AS200,NS200,XCD', 'KIT DE EMPAQUES BOMBA DE FRENO SUPERIOR', 'DJ191023', 1, 1, NULL, ''),
(257, 'PULSAR 180,200', 'KIT DE EMPAQUES BOMBA DE FRENO SUPERIOR ', 'DE191043', 1, 1, NULL, ''),
(258, 'DISCOVERI125ST,PULSAR NS', 'KIT DE EMPAQUES BOMBA DE FRENO SUPERIOR', '36DJ4031', 1, 1, NULL, ''),
(259, 'BOXER', 'TENSOR DE CADENA DERECHO BOXER', '52DZ0047', 1, 1, NULL, ''),
(260, 'BOXER', 'TENSOR DE CADENA IZQUIERDO BOXER', '52DZ0046', 1, 1, NULL, ''),
(261, 'BOX125,D100,D150,P135,PL125,XCD', 'BUSHING DE MULETA', 'DP171006', 1, 1, NULL, ''),
(262, 'BOX,,BOX150,', 'BUSHING DE MULETA ', '30171018', 1, 1, NULL, ''),
(263, 'D125ST,P200,P220,UG4', 'BUSHING DE MULETA', 'DK171006', 1, 1, NULL, ''),
(264, 'DISCOVERI 125ST,PULSAR135', 'PASADOR DE BALANCIN', 'JD511209', 1, 1, NULL, ''),
(265, 'PULSAR NS200,180', 'KIT O SET ANILLOS STD PULSAR NS200,180', '36JU0001', 1, 1, NULL, ''),
(266, 'BOX100,CT100,PL125', 'INSULADOR O ESPACIADOR DE CARBURADOR ', '31101175', 1, 1, NULL, ''),
(267, 'PULSAR 180,220', 'BALANCIN SIN CANASTILLA ', 'DK101755', 1, 1, NULL, ''),
(268, 'PULSAR 135', 'BALANCIN COMPLETO PULSAR 135', 'JD511207', 1, 1, NULL, ''),
(269, 'BOXER100,D100,PL125,XCD', 'BALANCIN CON BALINERA ', 'JA511204', 1, 1, NULL, ''),
(270, 'XCD', 'CADENA DE TIEMPO XCD', 'CB101026', 1, 1, NULL, ''),
(271, 'PULSAR 135', 'VIELA DE CIGÜEÑAL PULSAR 135', 'JZ531003', 1, 1, NULL, ''),
(272, 'PULSAR 180', 'VIELA DE CIGÜEÑAL PULSAR 180', 'JC101001', 1, 1, NULL, ''),
(273, 'VARIAS PULSAR', 'LAMINAS DE BASE DE TENSOR DE CADENA', 'DJ151045', 1, 1, NULL, ''),
(274, 'PULSAR 150,UG2', 'CARBONERA', 'DH111034', 1, 1, NULL, ''),
(275, 'BOXER100,CT100', 'LLAVE DE PASO DE COMBUSTIBLE BOXER100,CT100', 'DU141095', 1, 1, NULL, ''),
(276, 'PULSAR 135', 'AMORTIGUADORES TRASEROS PULSAR 135', 'JD122003', 1, 1, NULL, ''),
(277, 'PULSAR 180,200,220', 'AMORTIGUADORES TRASEROS PULSAR 180,200,220', 'JC171003', 1, 1, NULL, ''),
(278, 'BOXER 125 PLATINA 125 BOXER 150 CT100', 'AMORTIGUADORES TRASEROS BOXER 125', 'DM171025', 1, 1, NULL, ''),
(279, 'PULSAR 135', 'TAPADERA LATERAL TANQUE DERECHA PULSAR 135', 'JD74024M', 1, 1, NULL, ''),
(280, 'PULSAR 135', 'TAPADERA LATERAL TANQUE IZQUIERDA PULSAR 135', 'JD74014M', 1, 1, NULL, ''),
(281, 'PULSAR 180', 'SPOILER RH NEGRO (CACHETES DE TANQUE) PULSAR 180 UG4', '52DJ0364', 1, 1, NULL, ''),
(282, 'PULSAR 180', 'SPOILER LH NEGRO (CACHETES DE TANQUE) PULSAR 180 UG4', '52DJ0363', 1, 1, NULL, ''),
(283, 'PULSAR 135', 'TAPA LATERAL O CACHETE DE SILVIN IZQUIERDO PULSAR 135', 'JD73014M', 1, 1, NULL, ''),
(284, 'PULSAR 135', 'TAPA LATERAL O CACHETE DE SILVIN DERECHO PULSAR 135', 'JD73024M', 1, 1, NULL, ''),
(285, 'BOXER 100 DISCOVERY 125,150', 'PATA DE CAMBIOS PARA BOXER DISCOVERY 125 Y 150', 'JZ561401', 1, 1, NULL, ''),
(286, 'PULSAR UG4 180 ,200', 'PATA DE FRENO PULSAR 180 UG4 Y 200', 'JC191001', 1, 1, NULL, ''),
(287, 'PULSAR 1535', 'PATA DE FRENO PULSAR 135', 'JD161001', 1, 1, NULL, ''),
(288, 'DISCOVERY 125,135', 'PATA DE CAMBIOS DISCOVERY 125 Y 135', 'DS101251', 1, 1, NULL, ''),
(289, 'PULSAR 150,180,200,220', 'SILVIN COMPLETO CUADRADO PULSAR 150,180,200,220', 'DJ201176', 1, 1, NULL, ''),
(290, 'PULSAR 135', 'SILVIN COMPLETO PULSAR 135', 'JD401024', 1, 1, NULL, ''),
(291, 'PULSAR 180', 'SILVIN COMPLETO PULSAR 180', 'JD201132', 1, 1, NULL, ''),
(292, 'PULSAR135', 'WIND SHIELD CON MASCARA PULSAR135', '52JD0067', 1, 1, NULL, ''),
(293, 'PULSAR 180,UG4', 'LODERA NEGRA PULSAR 180.UG4', 'DK7402X3', 1, 1, NULL, ''),
(294, 'PULSAR 180,200,220', 'ARO TRASERO PULSAR 180,200', 'JC151010', 1, 1, NULL, ''),
(295, 'PULSAR 180,150', 'MOTOR DE ARRANQUE PULSA150,180', 'DH111084', 1, 1, NULL, ''),
(296, 'PULSAR 135', 'TABLERO( RELOJ ASPIROMETRO) PULSAR 135', 'JD402404', 1, 1, NULL, ''),
(297, 'PULSAR 180,200,220', 'BOCINA LADO DERECHO PULSAR 135,180,200,220', 'DK201038', 1, 1, NULL, ''),
(298, 'PULSAR TODAS', 'BOCINA IZQUIERDA PULSAR TODAS', 'DK201037', 1, 1, NULL, ''),
(299, 'PULSAR NS200', 'PATA DE FRENO PULSAR NS', 'JL161001', 1, 1, NULL, ''),
(300, 'PULSAR 135', 'LODERA DELANTERA NEGRA PULSAR 135', 'JD72024M', 1, 1, NULL, ''),
(301, 'PULSAR 180,200,220', 'LODERA TRASERA PULSAR 180,200,220', 'DK161085', 1, 1, NULL, ''),
(302, 'PULSAR 220,200,180,150', 'WIND SHIELD PULSAR 150,200,220,180,', 'DJ181033', 1, 1, NULL, ''),
(303, 'PULSAR 220,200,180,150', 'MASCARA DE SILVIN PULSAR 150,180,200,220', 'DJ181120', 1, 1, NULL, ''),
(304, 'PULSAR 135', 'LODERA TRASERA /GUARDAFANGO PULSAR 135', 'JD181408', 1, 1, NULL, ''),
(305, 'PULSAR 180', 'MASCARA DE SILVIN PULSAR 180', 'DS181031', 1, 1, NULL, ''),
(306, 'PULSAR 135', 'COBERTOR DE TABLERO PULSAR 135', 'JD181211', 1, 1, NULL, ''),
(307, 'PULSAR 135', 'TUBO DE BASE DE LODERA TRASERA PULSAR 135', 'JD181006', 1, 1, NULL, ''),
(308, 'PULSAR 220,180', 'BASE DE SILVIN PULSAR 180,220', 'JC181024', 1, 1, NULL, ''),
(309, 'PULSAR 180,220', 'LODERA DELANATERA ROJA PULSAR UG4 180 Y 220', 'DK73042V', 1, 1, NULL, ''),
(310, 'PULSAR 135,150,180,200,220', 'BOMBA DE ACEITE PULSAR 135,150,180,200,220', '52DH0169', 1, 1, NULL, ''),
(311, 'DISCOVERI100,125,PULSAR135,PLATINA125', 'MOTOR DE ARRANQUE DISCOVERI 100,125,150,PZ135,PL125', 'JA351600', 1, 1, NULL, ''),
(312, 'BOXER,PLATINA,CT100', 'BOMBA DE ACEITE BOXER ,PLATINA,CT100', 'DF121003', 1, 1, NULL, ''),
(313, 'PULSAR 180,220', 'REGULADOR CON CAPACITOR PULSAR 180 UG4 ,PULSAR 220', 'DJ201202', 1, 1, NULL, ''),
(314, 'PULSAR 180,200,220', 'PATA LATERAL PULSAR 180,200,220', 'JC161017', 1, 1, NULL, ''),
(315, 'PULSAR PUG4,200,220', 'PATA DE VELOCIDADES SENCILLA P200,220,PUG4', 'DK101182', 1, 1, NULL, ''),
(316, 'PULSAR 135', 'PATA DE CAMBIOS PULSAR 135', 'JD561414', 1, 1, NULL, ''),
(317, 'DISCOVERI 125 ST', 'PATA DE FRENO DISCOVERI 125 ST', 'JZ161009', 1, 1, NULL, ''),
(318, 'BOXER,CT100,PLATINA', 'PATA DE CAMBIOS DOBLE ', 'DU101185', 1, 1, NULL, ''),
(319, 'D100.D100NE.XCD', 'PATA DE CAMBIOS D.100 D.100NE XCD', 'JA561400', 1, 1, NULL, ''),
(320, 'BOX.CT100.PL100.PL14', 'PALANCA DE CLUTCH BOX.CT100.PL100.PL14', 'DX101035', 1, 1, NULL, ''),
(321, 'PULSAR 180', 'KIT DE ACCESORIOS DE VARILLA DE FRENO PULSAR 180', '36JC0006', 1, 1, NULL, ''),
(323, 'PULSAR 180,220', 'SWITCH DE FRENO PULSAR 180,220', 'JC201004', 1, 1, NULL, ''),
(324, 'A220,D125,D135,P200,P180', 'BUSHING CANDELA', 'DH111012', 1, 1, NULL, ''),
(325, 'PULSAR NS200', 'BOMBA DE ACEITE PULSAR NS', 'JU571000', 1, 1, NULL, ''),
(326, 'BOXER,CT100,PLATINA', 'CDI VALROC', 'DF111017', 1, 1, NULL, ''),
(327, 'PULSAR,180UG3,200', 'CDI VALROC', 'DJ111023', 1, 1, NULL, ''),
(328, 'XCD', 'CDI VALROC', 'JA351200', 1, 1, NULL, ''),
(329, 'BOXER', 'PISTON COMPLETO BOXER', 'DU101094', 1, 1, NULL, ''),
(330, 'DISCOVERI135', 'VALVULAS ADMISION Y ESCAPE', 'DS101023', 1, 1, NULL, ''),
(331, 'D125,D135,P135,', 'FLASHER D125,D135,', 'SDS201025', 1, 1, NULL, ''),
(332, 'D135 ', 'MOTOR DE ARRANQUE VALROC', 'DS111051', 1, 1, NULL, ''),
(334, 'DISCOVERI135', 'CARBONERA', 'DS111027', 1, 1, NULL, ''),
(335, 'PULSAR 180', 'KIT DE PEDAL DE FRENO PULSAR 180', '36DK0034', 1, 1, NULL, ''),
(336, 'DISCOVERY 125', 'KIT DE GUIAS DE CADENA DE TIEMPO', '36DS1004', 1, 1, NULL, ''),
(337, 'PULSAR 135,DISCOVERY 135', 'EMPAQUE DE CULATA PULSAR 135 DISCOVERY ', 'JD511008', 1, 1, NULL, ''),
(338, 'PULSAR 135 BOXER150,DIS100,125,150', 'EMPAQUE DE TAPADERA DE VALVULAS PULSAR 135', 'JD511010', 1, 1, NULL, ''),
(339, 'PULSAR135,D125,D150,D150,BOXER125', 'EMPAQUE DE CILINDRO PULSAR 135,DIS125,DIS150,BOSXER125', 'JD521002', 1, 1, NULL, ''),
(340, 'PULSAR 150,180,200,220', 'EMPAQUE DE VOLANTE PULSAR 150,180,200,220', 'Dv101042', 1, 1, NULL, ''),
(341, 'PULSAR 135,DISCOVERY ,XCD', 'EMPAQUES DE PLANTA O MAGNETO PULSAR 135', 'JA541205', 1, 1, NULL, ''),
(342, 'PULSAR 150,200,180,220', 'EMPAQUE DE CARTER DE CLUTCH PULSAR VARIAS', 'DH101154', 1, 1, NULL, ''),
(343, 'PULSAR 150,180,220', 'EMPAQUE DE CENTRO DE MOTOR PULSAR 150,180,220', 'DH101006', 1, 1, NULL, ''),
(344, 'D100,XCD', 'EJE DE RUEDA TRASERA', 'DX151016', 1, 1, NULL, ''),
(345, 'D100,D125,D135,D150', 'EJE DE MULETA ', 'DS171013', 1, 1, NULL, ''),
(346, 'A220,BOX150,D150,P135,P200,P220,P180UG4', 'TUERCA DE CLUTCH ROSCA IZQUIERDA', 'DH101648', 1, 1, NULL, 'BAJAJ'),
(347, 'PULSAR 135 ', 'BOMBA DE ACEITE ', '52JA0023', 1, 1, NULL, 'BAJAJ'),
(348, 'TODAS LAS MOTOS BAJAJ', 'MUNICIONES DE CUNAS (BALINES) TODAS LAS MOTOS BAJAJ', '363140002', 1, 1, NULL, ''),
(349, 'PULSAR UG4,200,220', 'KIT DE CUNAS PARA PULSAR 200,220,180', '36DV0007', 1, 1, NULL, ''),
(350, 'DISCOVERI 100,125,150', 'WINDSHIEDL ', 'JN181001', 1, 1, NULL, ''),
(351, 'AMORTIGUADOR TRASERO HONDA CGL125', 'AMORTIGUADOR TRASERO HONDA CGL125', 'AM0001', 1, 1, NULL, 'SUPER JUDOLIN'),
(352, 'SUZUKI GN125 125', 'AMORTIGUADOR TRASERO', 'AM0002', 1, 1, NULL, 'THUNDER VELOCIDAD'),
(353, 'DELANTERO GY6 ITALIKA, HONDA ELITE, PASOLAS CHINAS', 'AMORTIGUADOR DELANTERO PASOLAS', 'AM0003', 1, 1, NULL, 'ITALIKA'),
(354, 'TRASERO SUZUKI AX100', 'AMORTIGUADOR TRASERO', 'AM0004', 1, 1, NULL, 'ELPRA'),
(355, 'AMORTIGUADOR TRASERO ITALIKA FT150', 'AMORTIGUADOR TRASERO FT150', 'AM0005', 1, 1, NULL, 'ELPRA'),
(356, 'AMORTIGUADOR TRASERO SUZUKI EN125', 'AMORTIGUADOR TRASERO', 'AM0006', 1, 1, NULL, 'ELPRA'),
(357, 'AMORTIGUADOR TRASERO JIALING 125, XL', 'AMORTIGUADOR TRASERA JIALING', 'AM0007', 0, 1, NULL, 'JITAKO'),
(358, 'AMORTIGUADOR TRASERO JIALING 125, XL125', 'AMORTIGUADOR TRASERO JIALING', 'AM0007', 0, 1, NULL, 'JITAKO'),
(359, 'AMORTIGUADOR TRASERO JIALING 125, XL125', 'AMORTIGUADOR TRASERO JIALING', 'AM0007', 1, 1, NULL, 'JITAKO'),
(360, 'AMORTIGUADOR TRASERO CGL125 JITAKO', 'AMORTIGUADOR TRASERO CGL', 'AM0008', 1, 1, NULL, 'JITAKO'),
(361, 'RELACION COMPLETA CGL125', 'RELACION CGL125', 'RELA001', 0, 1, NULL, 'JITAKO'),
(362, 'RALACION COMPLETA CGL125 ', 'RELACION CGL125', 'RELA0001', 1, 1, NULL, 'JITAKO'),
(363, 'RELACION COMPLETA CGL125', 'RELACION CGL125', 'RELA0002', 1, 1, NULL, 'ENDURO'),
(364, 'RELACION COMPLETA SUZUKI GN125', 'RELACION SUZUKI GN', 'RELA0003', 1, 1, NULL, 'JITAKO'),
(365, 'RELACION COMPLETA SUZUKI EN125', 'RELACION SUZUKI EN', 'RELA0004', 1, 1, NULL, 'ELPRA'),
(366, 'RELACION COMPLETA HONDA WAVE C110 SEMIAUTOMATICA', 'RELACION HONDA WAVE', 'RELA0005', 1, 1, NULL, 'ELPRA'),
(367, 'RELACION COMPLETA SUZUKI SJ110 SEMIAUTOMATICA', 'RELACION SJ110', 'RELA0006', 1, 1, NULL, 'ELPRA'),
(368, 'RELACION COMPLETA SUZUKI AX100', 'RELACION AX100', 'RELA0007', 1, 1, NULL, 'ELPRA'),
(369, 'RELACION APACHE 180 ', 'RELACION APACHE', 'RELA0008', 1, 1, NULL, 'ELPRA'),
(370, 'RELACION COMPLETA HONDA VMAN 150', 'RELACION VMEN150', 'RELA0009', 1, 1, NULL, 'ELPRA'),
(371, 'RELACION COMPLETA HONDA BROS 125,150', 'RELACION BROS125;150', 'RELA0010', 1, 1, NULL, 'ELPRA'),
(372, 'RELACION HONDA BROS 125,150', 'RELACION HONDA BROS', 'RELA0011', 1, 1, NULL, 'JITAKO'),
(373, 'RELACION COMPLETA PULSAR 220', 'RELACION PULSAR 220', 'RELA0012', 1, 1, NULL, 'JITAKO'),
(374, 'RELACION CONPLETA PULSAR 180', 'RELACION PULSAR 180', 'RELA0013', 1, 1, NULL, 'JITAKO'),
(375, 'RELACION CONPLETA  DISCOVERY BOXER 125 AGUJUJEROS4', 'RELACION   DISCOVERY ', 'RELA0014', 1, 1, NULL, 'JITAKO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `NombreEmpresa` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Nit` varchar(10) DEFAULT NULL,
  `CuentaDepoito` varchar(30) DEFAULT NULL,
  `IdDepartamento` int(11) DEFAULT NULL,
  `IdMuniciopio` int(11) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproveedor`),
  KEY `ProveedorPais_idx` (`IdPais`),
  KEY `ProveedorDepartamento_idx` (`IdDepartamento`),
  KEY `ProveedorMunicipio_idx` (`IdMuniciopio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `NombreEmpresa`, `Direccion`, `Telefono`, `Nit`, `CuentaDepoito`, `IdDepartamento`, `IdMuniciopio`, `IdPais`, `Estado`) VALUES
(1, 'PRIMSA', '1a. Avenida 14-10 Zona 6, Calzada las Palmas Retal', '77715072', '67857345', '', NULL, NULL, NULL, 1),
(2, 'PROVEEDORES VARIOS', 'CIUDAD', '0000', 'C/F', '000', NULL, NULL, NULL, 1),
(3, 'SUPER REPUESTOS KAIROS', 'GUATEMALA CIUDAD', '55161223,56374665', 'C/F', '3785012367 JAIRO ALBERTO MARRO', NULL, NULL, NULL, 1),
(4, 'Auto Partes Ilimitadas S.A.', 'GUATEMALA CIUDAD', '40171446', '5022293-7', '3586011009 Auto Partes Ilimita', NULL, NULL, NULL, 1),
(5, 'PROMOTO', 'GUATEMALA CIUDAD', '58256202', '7953036-2', 'PROMOTO S.A. 353201114-9, BANR', NULL, NULL, NULL, 1),
(6, 'MOTORAMA', 'GUATEMALA CIUDAD', '47703932', '3199494-6', '323700805-8 BANRURAL , MOTORAM', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE IF NOT EXISTS `puestos` (
  `idPuestos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPuestos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`idPuestos`, `Descripcion`) VALUES
(1, 'Jefe'),
(2, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `ModulosDefecto` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `Descripcion`, `ModulosDefecto`, `estado`) VALUES
(0, 'Soporte', '12345678', 0),
(1, 'Administrador', '12345678', 1),
(2, 'Usuario', '1456', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sueldos`
--

CREATE TABLE IF NOT EXISTS `sueldos` (
  `idSueldos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Descripcion` text,
  `monto` double DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSueldos`),
  KEY `SueldosEmpleado` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocompra`
--

CREATE TABLE IF NOT EXISTS `tipocompra` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(70) DEFAULT NULL,
  `Observacion` text,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipocompra`
--

INSERT INTO `tipocompra` (`idTipo`, `Descripcion`, `Observacion`, `estado`) VALUES
(1, 'Contado', NULL, 1),
(2, 'Credito', NULL, 1),
(3, 'Donacion', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodetallecompra`
--

CREATE TABLE IF NOT EXISTS `tipodetallecompra` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(70) DEFAULT NULL,
  `Observacion` text,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodetalleventa`
--

CREATE TABLE IF NOT EXISTS `tipodetalleventa` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(70) DEFAULT NULL,
  `Observacion` text,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoventa`
--

CREATE TABLE IF NOT EXISTS `tipoventa` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(70) DEFAULT NULL,
  `Observacion` text,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipoventa`
--

INSERT INTO `tipoventa` (`idTipo`, `Descripcion`, `Observacion`, `estado`) VALUES
(1, 'Contado', NULL, 1),
(2, 'Credito', NULL, 1),
(3, 'Donacion', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(55) DEFAULT NULL,
  `user` varchar(10) DEFAULT NULL,
  `Contra` varchar(20) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL,
  `idEmpleados` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `UsuarioEmpleado_idx` (`idEmpleados`),
  KEY `UsuarioRol_idx` (`idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `Email`, `user`, `Contra`, `estado`, `idRol`, `idEmpleados`) VALUES
(0, NULL, 'admin', '123412341234', 1, 0, NULL),
(1, 'admin@hectorrepuestos.com', 'MMM', 'MAXIMO123', 1, 1, 3),
(2, NULL, 'NESTER', 'PAQUITO12', 1, 2, 1),
(3, NULL, 'YORDI', 'OSITA1234', 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `idVentas` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` double DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoVenta` int(11) DEFAULT NULL,
  `nocomprobante` int(11) DEFAULT '1',
  `idCliente` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `ClienteVenta_idx` (`idCliente`),
  KEY `VentaTipo_idx` (`tipoVenta`),
  KEY `VentasUsuario` (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVentas`, `fecha`, `total`, `estado`, `tipoVenta`, `nocomprobante`, `idCliente`, `idUsuario`) VALUES
(1, '2016-10-11 02:47:02', 11.2, 1, 1, 1, 1, 2),
(3, '2016-10-11 03:27:30', 90, 0, 1, 2, 1, 1),
(8, '2016-10-12 19:58:54', 50, 0, 2, 2, 2, 1),
(10, '2016-10-14 15:25:17', 35, 1, 2, 2, 2, 1),
(11, '2016-10-14 15:45:43', 190, 1, 2, 3, 2, 1),
(42, '2016-10-14 17:54:08', 25, 1, 1, 4, 6, 1),
(45, '2016-10-14 20:52:36', 35, 1, 1, 5, 6, 1),
(52, '2016-10-17 21:48:11', 20, 1, 1, 6, 6, 1),
(53, '2016-10-17 21:54:54', 40, 1, 1, 7, 6, 1),
(55, '2016-10-18 17:22:00', 40, 0, 1, 8, 6, 1),
(56, '2016-10-18 17:26:08', 40, 0, 1, 9, 6, 1),
(57, '2016-10-25 17:43:25', 40, 0, 1, 10, 6, 1),
(58, '2016-10-25 17:53:25', 80, 1, 1, 8, 6, 1),
(59, '2016-10-25 18:05:49', 40, 1, 2, 9, 7, 1),
(63, '2016-10-27 17:54:21', 0, 2, 1, 10, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasdetalle`
--

CREATE TABLE IF NOT EXISTS `ventasdetalle` (
  `idVentaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `Subtotal` double DEFAULT NULL,
  `Vencimiento` date DEFAULT NULL,
  `Cantidad` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `garantia` text,
  `idVenta` int(11) DEFAULT NULL,
  `idProductos` int(11) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVentaDetalle`),
  KEY `VentaDetalleTipo_idx` (`idTipo`),
  KEY `VentaDetalle_idx` (`idVenta`),
  KEY `VentaDetalleProducto_idx` (`idProductos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `ventasdetalle`
--

INSERT INTO `ventasdetalle` (`idVentaDetalle`, `Subtotal`, `Vencimiento`, `Cantidad`, `precio`, `garantia`, `idVenta`, `idProductos`, `idTipo`, `estado`) VALUES
(1, 11.2, NULL, 1, 11.2, NULL, 1, 337, NULL, 1),
(2, 90, NULL, 2, 45, NULL, 3, 170, NULL, 0),
(3, 50, NULL, 1, 50, NULL, 8, 209, NULL, 0),
(4, 35, NULL, 1, 35, NULL, 10, 346, NULL, 1),
(5, 190, NULL, 1, 190, NULL, 11, 347, NULL, 1),
(6, 25, NULL, 1, 25, NULL, 42, 166, NULL, 1),
(7, 35, NULL, 1, 35, NULL, 45, 338, NULL, 1),
(12, 20, NULL, 1, 20, NULL, 52, 76, NULL, 1),
(13, 40, NULL, 2, 20, NULL, 53, 76, NULL, 1),
(14, 40, NULL, 1, 40, NULL, 55, 67, NULL, 0),
(15, 40, NULL, 1, 40, NULL, 56, 67, NULL, 0),
(16, 40, NULL, 2, 20, NULL, 57, 86, NULL, 0),
(17, 80, NULL, 2, 40, NULL, 58, 67, NULL, 1),
(19, 40, NULL, 2, 20, NULL, 59, 86, NULL, 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD CONSTRAINT `AccesoModulo` FOREIGN KEY (`idModulo`) REFERENCES `modulos` (`idModulos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `AccesoUsuarios` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `ClienteDepartamento` FOREIGN KEY (`Departamento`) REFERENCES `departamentos` (`idDepartamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ClienteMunicipio` FOREIGN KEY (`Municipio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ClientePais` FOREIGN KEY (`Pais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comisiones`
--
ALTER TABLE `comisiones`
  ADD CONSTRAINT `ComisionesUsuarios` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `compradetalle`
--
ALTER TABLE `compradetalle`
  ADD CONSTRAINT `DetalleCompra` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `DetalleProducto` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `DetalleTipo` FOREIGN KEY (`idTipo`) REFERENCES `tipodetallecompra` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `CompraProveedor2` FOREIGN KEY (`idDistribuidor`) REFERENCES `proveedor` (`idproveedor`),
  ADD CONSTRAINT `CompraTipo` FOREIGN KEY (`tipoCompra`) REFERENCES `tipocompra` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ComprasUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `cuentascobrar`
--
ALTER TABLE `cuentascobrar`
  ADD CONSTRAINT `CuentasVentas` FOREIGN KEY (`idVentas`) REFERENCES `ventas` (`idVentas`);

--
-- Filtros para la tabla `cuentaspagar`
--
ALTER TABLE `cuentaspagar`
  ADD CONSTRAINT `CuentasCompras` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`);

--
-- Filtros para la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD CONSTRAINT `DistribuidorProveedor` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `EmpleadoPuesto` FOREIGN KEY (`Puesto`) REFERENCES `puestos` (`idPuestos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `InventarioProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `movimientosc`
--
ALTER TABLE `movimientosc`
  ADD CONSTRAINT `MovimientoCCuentasC` FOREIGN KEY (`idCuentasC`) REFERENCES `cuentascobrar` (`idCuentasC`),
  ADD CONSTRAINT `MovimientosCUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `movimientosp`
--
ALTER TABLE `movimientosp`
  ADD CONSTRAINT `MovimientoPCuentasP` FOREIGN KEY (`idCuentasP`) REFERENCES `cuentaspagar` (`idCuentasP`),
  ADD CONSTRAINT `MovimientosPUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `ProductoMarca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `ProveedorDepartamento` FOREIGN KEY (`IdDepartamento`) REFERENCES `departamentos` (`idDepartamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ProveedorMunicipio` FOREIGN KEY (`IdMuniciopio`) REFERENCES `municipio` (`idMunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ProveedorPais` FOREIGN KEY (`IdPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD CONSTRAINT `SueldosEmpleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleados`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `UsuarioEmpleado` FOREIGN KEY (`idEmpleados`) REFERENCES `empleados` (`idEmpleados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `UsuarioRol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `VentaCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VentaTipo` FOREIGN KEY (`tipoVenta`) REFERENCES `tipoventa` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VentasUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `ventasdetalle`
--
ALTER TABLE `ventasdetalle`
  ADD CONSTRAINT `VentaDetalle` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVentas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VentaDetalleProducto` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `VentaDetalleTipo` FOREIGN KEY (`idTipo`) REFERENCES `tipodetalleventa` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
