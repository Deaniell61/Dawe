-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2016 a las 06:07:59
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `softronic`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`idAccesos`, `Agrega`, `Modifica`, `Mostrar`, `Elimina`, `idUsuarios`, `idModulo`) VALUES
(15, 1, 1, 1, 1, 33, 3),
(16, 1, 1, 1, 1, 33, 2),
(18, 1, 1, 1, 1, 33, 4),
(19, 1, 1, 1, 1, 33, 5),
(20, 1, 1, 1, 1, 33, 6),
(21, 1, 1, 1, 1, 33, 7),
(22, 1, 1, 1, 1, 33, 8),
(46, 1, 1, NULL, 1, 33, 1),
(47, 0, 0, NULL, 0, 35, 3),
(48, 0, 0, NULL, 0, 35, 4),
(49, 0, 0, NULL, 0, 35, 7),
(53, 1, 1, NULL, 1, 35, 6),
(54, 0, 0, NULL, 0, 35, 2),
(55, 0, 0, NULL, 0, 35, 1),
(56, 0, 0, NULL, 0, 35, 5),
(57, 0, 0, NULL, 0, 35, 8);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Apellido`, `Nit`, `Departamento`, `Municipio`, `Pais`, `estado`, `direccion`, `telefono`) VALUES
(1, '564', '654', '564', NULL, NULL, NULL, 1, '654', '654'),
(2, 'Daniel', 'Rodriguez', '7031734', NULL, NULL, NULL, 1, 'Mazate', '54646431');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Volcado de datos para la tabla `compradetalle`
--

INSERT INTO `compradetalle` (`idCompraDetalle`, `subtotal`, `vencimiento`, `cantidad`, `costo`, `precio`, `precioE`, `precioM`, `descuentos`, `garantia`, `estado`, `idCompras`, `idProductos`, `idTipo`) VALUES
(3, 200, NULL, 10, NULL, 20, NULL, NULL, NULL, NULL, 1, 3, 4, NULL),
(4, 1, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 7, 6, NULL),
(5, 2, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL, 1, 8, 6, NULL),
(8, 1, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 9, 11, NULL),
(9, 12, NULL, 3, NULL, 4, NULL, NULL, NULL, NULL, 1, 9, 13, NULL),
(15, 1, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 19, 2, NULL),
(16, 4, NULL, 2, NULL, 2, NULL, NULL, NULL, NULL, 1, 19, 14, NULL),
(17, 2, NULL, 1, NULL, 2, NULL, NULL, NULL, NULL, 0, 21, 4, NULL),
(18, 230, NULL, 5, NULL, 46, NULL, NULL, NULL, NULL, 1, 23, 6, NULL),
(19, 270, NULL, 54, NULL, 5, NULL, NULL, NULL, NULL, 1, 23, 10, NULL),
(20, 120, NULL, 5, NULL, 24, NULL, NULL, NULL, NULL, 1, 23, 15, NULL),
(21, 5, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, 1, 23, 14, NULL),
(22, 707.875, NULL, 56, NULL, 12.640625, NULL, NULL, NULL, NULL, 1, 24, 4, NULL),
(23, 1188, NULL, 99, NULL, 12, NULL, NULL, NULL, NULL, 1, 32, 15, NULL),
(24, 2025, NULL, 45, NULL, 45, NULL, NULL, NULL, NULL, 1, 34, 32, NULL),
(25, 568.828125, NULL, 45, NULL, 12.640625, NULL, NULL, NULL, NULL, 1, 34, 4, NULL),
(27, 5, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, 1, 34, 14, NULL),
(28, 2925, NULL, 45, NULL, 65, NULL, NULL, NULL, NULL, 1, 35, 26, NULL),
(29, 3136, NULL, 56, NULL, 56, NULL, NULL, NULL, NULL, 1, 35, 23, NULL),
(30, 568.828125, NULL, 45, NULL, 12.640625, NULL, NULL, NULL, NULL, 1, 39, 4, NULL),
(31, 1462, NULL, 43, NULL, 34, NULL, NULL, NULL, NULL, 1, 40, 8, NULL),
(32, 0, NULL, 15, NULL, 0, NULL, NULL, NULL, NULL, 1, 51, 34, NULL),
(33, 12.375, NULL, 3, NULL, 4.125, NULL, NULL, NULL, NULL, 1, 53, 5, NULL),
(34, 0, NULL, 234, NULL, 0, NULL, NULL, NULL, NULL, 1, 53, 35, NULL),
(35, 145411.454436, NULL, 4234, NULL, 34.343754, NULL, NULL, NULL, NULL, 1, 55, 3, NULL),
(36, 541.9375, NULL, 23, NULL, 23.5625, NULL, NULL, NULL, NULL, 1, 55, 6, NULL),
(37, 2898.1875, NULL, 123, NULL, 23.5625, NULL, NULL, NULL, NULL, 1, 59, 6, NULL),
(38, 67, NULL, 4, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 60, 1, NULL),
(40, 0, NULL, 56, NULL, 0, NULL, NULL, NULL, NULL, 1, 66, 37, NULL),
(41, 1691.75, NULL, 101, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 67, 1, NULL),
(42, 167.5, NULL, 10, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 68, 1, NULL),
(45, 568.828125, NULL, 45, NULL, 12.640625, NULL, NULL, NULL, NULL, 1, 69, 4, NULL),
(46, 0, NULL, 22, NULL, 0, NULL, NULL, NULL, NULL, 1, 69, 35, NULL),
(48, 6.005126953125, NULL, 6, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 71, 2, NULL),
(61, 112, NULL, 4, NULL, 28, NULL, NULL, NULL, NULL, 1, 79, 23, NULL),
(65, 140, NULL, 5, NULL, 28, NULL, NULL, NULL, NULL, 1, 79, 23, NULL),
(66, 0, NULL, 4, NULL, 0, NULL, NULL, NULL, NULL, 1, 79, 36, NULL),
(67, 4.00341796875, NULL, 4, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 80, 2, NULL),
(68, 0, NULL, 34, NULL, 0, NULL, NULL, NULL, NULL, 1, 80, 24, NULL),
(69, 0, NULL, 45, NULL, 0, NULL, NULL, NULL, NULL, 1, 87, 36, NULL),
(70, 20.625, NULL, 5, NULL, 4.125, NULL, NULL, NULL, NULL, 1, 87, 5, NULL),
(71, 0, NULL, 5, NULL, 0, NULL, NULL, NULL, NULL, 1, 87, 21, NULL),
(72, 67, NULL, 4, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 88, 1, NULL),
(73, 0, NULL, 32, NULL, 0, NULL, NULL, NULL, NULL, 1, 89, 18, NULL),
(74, 83.75, NULL, 5, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 90, 1, NULL),
(75, 50.25, NULL, 3, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 91, 1, NULL),
(76, 938, NULL, 56, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 92, 1, NULL),
(77, 134, NULL, 8, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 92, 1, NULL),
(78, 100.5, NULL, 6, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 92, 1, NULL),
(79, 20.625, NULL, 5, NULL, 4.125, NULL, NULL, NULL, NULL, 1, 92, 5, NULL),
(80, 12.375, NULL, 3, NULL, 4.125, NULL, NULL, NULL, NULL, 1, 92, 5, NULL),
(81, 0, NULL, 55, NULL, 0, NULL, NULL, NULL, NULL, 1, 92, 19, NULL),
(82, 5.0042724609375, NULL, 5, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 93, 2, NULL),
(83, 45.038452148438, NULL, 45, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 94, 2, NULL),
(84, 140, NULL, 5, NULL, 28, NULL, NULL, NULL, NULL, 1, 94, 23, NULL),
(85, 20.625, NULL, 5, NULL, 4.125, NULL, NULL, NULL, NULL, 1, 95, 5, NULL),
(86, 5.0042724609375, NULL, 5, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 97, 2, NULL),
(87, 83.75, NULL, 5, NULL, 16.75, NULL, NULL, NULL, NULL, 1, 98, 1, NULL),
(88, 5.0042724609375, NULL, 5, NULL, 1.0008544921875, NULL, NULL, NULL, NULL, 1, 99, 2, NULL),
(91, 60, NULL, 5, NULL, 12, NULL, NULL, NULL, NULL, 1, 100, 4, NULL),
(92, 150, NULL, 10, NULL, 15, NULL, NULL, NULL, NULL, 1, 101, 1, NULL),
(94, 150, NULL, 10, NULL, 15, NULL, NULL, NULL, NULL, 1, 102, 1, NULL),
(95, 150, NULL, 10, NULL, 15, NULL, NULL, NULL, NULL, 1, 104, 1, NULL),
(96, 45, NULL, 3, NULL, 15, NULL, NULL, NULL, NULL, 1, 105, 4, NULL),
(97, 300, NULL, 20, NULL, 15, NULL, NULL, NULL, NULL, 1, 106, 4, NULL),
(98, 0, NULL, 0, NULL, 10, NULL, NULL, NULL, NULL, 1, 107, 4, NULL),
(99, 200, NULL, 1, NULL, 200, NULL, NULL, NULL, NULL, 1, 110, 5, NULL),
(100, 600, NULL, 50, NULL, 12, NULL, NULL, NULL, NULL, 1, 141, 15, NULL),
(102, 0, NULL, 45, NULL, 0, NULL, NULL, NULL, NULL, 1, 144, 17, NULL),
(103, 0, NULL, 45, NULL, 0, NULL, NULL, NULL, NULL, 1, 145, 17, NULL),
(104, 0, NULL, 5, NULL, 0, NULL, NULL, NULL, NULL, 1, 145, 17, NULL),
(108, 400, NULL, 20, 20, 50, 45, 42.5, NULL, NULL, 1, 150, 1, NULL),
(115, 120, NULL, 10, 12, 24, 24, 24, NULL, NULL, 1, 156, 15, NULL),
(116, 200, NULL, 10, 20, 50, 45, 42.5, NULL, NULL, 1, 157, 1, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `fecha`, `total`, `estado`, `tipoCompra`, `NoComprobante`, `idDistribuidor`, `idUsuario`) VALUES
(3, '2016-09-22 06:20:38', 0, 1, 1, NULL, NULL, NULL),
(7, '2016-09-22 07:10:58', 0, 1, 1, NULL, NULL, NULL),
(8, '2016-09-22 07:17:32', 0, 1, 1, NULL, NULL, NULL),
(9, '2016-09-22 07:20:24', 0, 1, 1, NULL, NULL, NULL),
(19, '2016-09-23 02:03:29', 5, 0, 1, NULL, 1, NULL),
(21, '2016-09-23 19:09:10', 2, 0, 1, NULL, 6, NULL),
(23, '2016-09-23 20:15:06', 625, 1, 1, NULL, 7, NULL),
(24, '2016-09-23 20:34:32', 707.875, 1, 1, NULL, 2, NULL),
(32, '2016-09-24 01:54:47', 1188, 1, 1, NULL, 1, NULL),
(34, '2016-09-24 06:06:14', 2598.828125, 1, 1, NULL, 8, NULL),
(35, '2016-09-24 06:12:06', 6061, 1, 1, NULL, 7, NULL),
(39, '2016-09-24 07:08:08', 568.828125, 1, 1, NULL, 1, NULL),
(40, '2016-09-24 07:09:38', 1462, 1, 1, NULL, 1, NULL),
(51, '2016-09-24 07:56:39', 0, 1, 1, NULL, 1, NULL),
(53, '2016-09-24 08:01:37', 12.375, 1, 1, NULL, 1, NULL),
(55, '2016-09-24 08:40:53', 145953.391936, 1, 1, '789798', 1, NULL),
(59, '2016-09-24 08:50:19', 2898.1875, 1, 1, '2345', 1, NULL),
(60, '2016-09-24 08:55:27', 67, 1, 1, '85858', 3, NULL),
(66, '2016-09-24 18:49:19', 0, 1, 1, NULL, 1, NULL),
(67, '2016-09-24 19:51:05', 1691.75, 1, 1, NULL, 3, NULL),
(68, '2016-09-24 19:53:06', 167.5, 1, 1, NULL, 2, NULL),
(69, '2016-09-26 04:21:03', 568.828125, 1, 1, NULL, 1, NULL),
(71, '2016-09-26 05:48:58', 6.005126953125, 1, 2, NULL, 1, NULL),
(79, '2016-09-26 06:32:56', 252, 1, 1, NULL, 8, NULL),
(80, '2016-09-26 06:42:30', 4.00341796875, 1, 1, NULL, 1, NULL),
(87, '2016-09-26 07:29:44', 20.625, 1, 1, NULL, 1, NULL),
(88, '2016-09-26 07:35:09', 67, 1, 1, NULL, 1, NULL),
(89, '2016-09-26 07:57:31', 0, 1, 1, NULL, 1, NULL),
(90, '2016-09-26 07:58:54', 83.75, 1, 1, NULL, 1, NULL),
(91, '2016-09-26 08:00:02', 50.25, 1, 1, NULL, 1, NULL),
(92, '2016-09-26 08:01:38', 1205.5, 1, 2, NULL, 1, NULL),
(93, '2016-09-26 08:07:13', 5.0042724609375, 1, 1, NULL, 1, NULL),
(94, '2016-09-26 08:08:45', 185.038452148438, 1, 2, NULL, 1, NULL),
(95, '2016-09-26 08:18:22', 20.625, 1, 2, NULL, 1, NULL),
(97, '2016-09-26 19:15:49', 5.0042724609375, 1, 1, NULL, 1, NULL),
(98, '2016-09-27 07:50:20', 83.75, 1, 2, NULL, 2, NULL),
(99, '2016-09-27 07:57:49', 5.0042724609375, 1, 2, NULL, 1, NULL),
(100, '2016-09-27 19:54:00', 60, 1, 1, NULL, 1, NULL),
(101, '2016-09-27 23:55:45', 150, 1, 1, NULL, 1, NULL),
(102, '2016-09-27 23:58:08', 150, 1, 1, NULL, 1, NULL),
(104, '2016-09-28 00:02:31', 150, 1, 1, NULL, 2, NULL),
(105, '2016-09-28 04:23:06', 45, 1, 1, NULL, 3, NULL),
(106, '2016-09-28 06:27:14', 300, 1, 1, NULL, 1, NULL),
(107, '2016-09-28 06:48:50', 0, 1, 1, NULL, 2, NULL),
(110, '2016-09-29 02:53:50', 200, 1, 1, NULL, 1, NULL),
(141, '2016-09-30 07:47:42', 600, 1, 1, '1234s', 1, 33),
(144, '2016-10-01 06:49:52', 0, 1, 1, NULL, 1, 33),
(145, '2016-10-01 06:52:45', 0, 1, 1, NULL, 1, 33),
(150, '2016-10-01 07:17:52', 400, 1, 1, NULL, 1, 33),
(156, '2016-10-02 03:43:52', 120, 1, 2, NULL, 1, 33),
(157, '2016-10-02 03:46:34', 200, 1, 2, NULL, 1, 33);

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
  `idCliente` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `CreditoDado` double DEFAULT NULL,
  PRIMARY KEY (`idCuentasC`),
  UNIQUE KEY `idCompras` (`idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `cuentascobrar`
--

INSERT INTO `cuentascobrar` (`idCuentasC`, `fecha`, `plazo`, `tipoPlazo`, `total`, `idCliente`, `estado`, `CreditoDado`) VALUES
(29, '2016-10-02 03:03:40', 2, '2', 9, 1, 2, 9),
(38, '2016-10-02 03:14:11', 2, '2', 200, 2, 1, 218);

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
  `idProveedor` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `CreditoDado` double DEFAULT NULL,
  PRIMARY KEY (`idCuentasP`),
  UNIQUE KEY `idVentas` (`idProveedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `cuentaspagar`
--

INSERT INTO `cuentaspagar` (`idCuentasP`, `fecha`, `plazo`, `tipoPlazo`, `total`, `idProveedor`, `estado`, `CreditoDado`) VALUES
(27, '2016-10-02 03:41:09', 2, '2', 200, 1, 1, 320);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleados`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Puesto`, `estado`, `sueldo`) VALUES
(12, 'JosÃ© Daniel', 'RodrÃ­guez RodrÃ­guez', '54646431', 'Mazatenango', 1, 1, NULL),
(14, 'sdfa', 'sdfa', '12312', 'sad', 2, 1, 2345);

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
  PRIMARY KEY (`idInventario`),
  KEY `InventarioProducto_idx` (`idProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idProducto`, `precioCosto`, `precioVenta`, `precioClienteEs`, `precioDistribuidor`, `cantidad`) VALUES
(1, 1, 20, 50, 45, 42.5, 60),
(2, 2, 1.0008544921875, 1, 1, 1, 60),
(4, 3, 34.343751999999995, 1, 1, 1, 4430),
(5, 4, 10, 30, 27, 25.5, 206),
(6, 5, 200, 500, 450, 425, 10),
(7, 6, 23.5625, 48, 24, 21, 100),
(9, 8, 17, 3, 43, 34, 0),
(10, 9, 0, 0, 0, 0, -5),
(11, 10, 2.5, 5, 5, 5, 0),
(12, 11, 0.5, 1, 1, 1, 1),
(13, 12, 0, 0, 0, 0, 0),
(14, 13, 2, 5, 6, 6, 3),
(15, 14, 1, 2, 2, 2, 10),
(16, 15, 12, 24, 24, 24, 60),
(18, 17, 0, 0, 0, 0, 50),
(19, 18, 0, 0, 0, 0, 30),
(20, 19, 0, 0, 0, 0, 50),
(21, 20, 0, 0, 0, 0, 0),
(22, 21, 0, 0, 0, 0, 5),
(23, 22, 0, 0, 0, 0, 0),
(24, 23, 28, 65, 65, 5, 10),
(25, 24, 0, 0, 0, 0, 34),
(26, 25, 0, 0, 0, 0, 0),
(27, 26, 32.5, 0, 0, 0, 45),
(28, 27, 0, 0, 0, 0, 0),
(29, 28, 0, 0, 0, 0, 0),
(30, 29, 0, 0, 0, 0, 0),
(31, 30, 0, 0, 0, 0, -5),
(32, 31, 0, 0, 0, 0, 0),
(33, 32, 22.5, 68, 64, 64, 45),
(34, 33, 0, 0, 0, 0, 0),
(35, 34, 0, 0, 0, 0, 15),
(36, 35, 0, 0, 0, 0, 256),
(37, 36, 0, 0, 0, 0, 49),
(38, 37, 0, 0, 0, 0, 56);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
(8, 'Pagos', '../app/img/pagos.png', 1, 'pagos');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `movimientosc`
--

INSERT INTO `movimientosc` (`idMovimientoC`, `credito`, `abono`, `saldo`, `fecha`, `descripcion`, `idCuentasC`, `idUsuario`) VALUES
(14, 78, 8, 70, '2016-10-02 06:00:00', 'abono', 38, 33),
(15, 218, 10, 200, '2016-10-02 06:00:00', 'abono 2', 38, 33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `movimientosp`
--

INSERT INTO `movimientosp` (`idMovimientoP`, `credito`, `abono`, `saldo`, `fecha`, `descripcion`, `idCuentasP`, `idUsuario`) VALUES
(4, 120, 20, 100, '2016-10-02 06:00:00', 'abono', 27, 33),
(5, 320, 100, 200, '2016-10-02 06:00:00', 'abono2', 27, 33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `Descripcion`, `Nombre`, `CodigoProducto`, `estado`, `tipoRepuesto`, `idMarca`, `marca2`) VALUES
(1, 'Esto es 1', 'Prod1', NULL, 1, NULL, NULL, NULL),
(2, 'Esto es 2', 'Prod2', NULL, 1, NULL, NULL, NULL),
(3, 'Pariente', 'Fierro', '', 1, NULL, NULL, NULL),
(4, 'Objeto de manos para proteger las mismas', 'Guantes', '0001', 1, NULL, NULL, NULL),
(5, 'sflkmasdf', 'perros', '123', 1, NULL, NULL, NULL),
(6, 'esto es otro guante', 'otro guante', '12142', 1, NULL, NULL, NULL),
(8, 'esto es para el pariente', 'pariente', '00214', 1, NULL, NULL, NULL),
(9, 'esto es para el pariente', 'pariente', '00214', 1, NULL, NULL, NULL),
(10, 'asfsa', 'este', '000541', 1, NULL, NULL, NULL),
(11, 'asfsa', 'este', '000541', 1, NULL, NULL, NULL),
(12, 'asfsa', 'este', '000541', 1, NULL, NULL, NULL),
(13, 'fsadf', 'estee es otra', '5525', 1, NULL, NULL, NULL),
(14, 'esto es una compu', 'compu', '123123', 1, NULL, NULL, NULL),
(15, 'Esto es un producto', 'Producto', '56', 1, 1, NULL, NULL),
(17, 'esto es producto4', 'producto4', '12345', 1, 1, NULL, NULL),
(18, 'sd', 'prod5', '12993', 1, 1, NULL, NULL),
(19, 'esfad', 'prod50', '00293', 1, 1, NULL, NULL),
(20, 'asdf', 'paosp', '494949', 1, 1, NULL, NULL),
(21, 'sadf', 'lkalskdf', '99304', 1, 2, NULL, NULL),
(22, 'afssadf', 'afsa', '5646', 1, 1, NULL, NULL),
(23, 'adsfsaf', 'dsadsa', '5568', 1, 1, NULL, NULL),
(24, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(25, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(26, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(27, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(28, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(29, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(30, 'asfdsadf', 'asdf', '243', 1, 1, NULL, NULL),
(31, 'asfd', 'asdf', '543', 1, 1, NULL, NULL),
(32, 'asfasd', 'otrp', '5676', 1, 1, NULL, NULL),
(33, 'asdfsa', 'asdfas', '2423', 1, 0, NULL, NULL),
(34, 'asdfsa', 'prod', '555', 1, 1, NULL, 'mi marca'),
(35, 'sdfas', 'prodnuevo', '1234', 1, 2, NULL, 'nuevo'),
(36, 'Repuesto moto', 'ProductoNuevo', '8989', 1, 1, NULL, '1'),
(37, 'telefono', 'samsung', '039894', 1, 1, NULL, 'samsung');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `NombreEmpresa`, `Direccion`, `Telefono`, `Nit`, `CuentaDepoito`, `IdDepartamento`, `IdMuniciopio`, `IdPais`, `Estado`) VALUES
(1, 'Campero', 'Mazatenango', '54646431', '7031734', NULL, NULL, NULL, NULL, NULL),
(2, 'asas', '654', '654', '654', '654', NULL, NULL, NULL, 1),
(3, 'asdf', 'asfd', 'asf', 'asf', 'safsa', NULL, NULL, NULL, 1),
(4, 'Mac', 'asfd', '654', '654', '654', NULL, NULL, NULL, 1),
(5, 'Electronica', 'Reu', '1234', '1234123412', 'aasaf', NULL, NULL, NULL, 1),
(6, 'Proveedor1', 'Mazate', '54646431', '456456456', '456456456', NULL, NULL, NULL, 1),
(7, 'xx', 'Mazate', 'x', '77492', '', NULL, NULL, NULL, 1),
(8, 'otro', 'reu', '54646', '98979', '', NULL, NULL, NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `Descripcion`, `ModulosDefecto`, `estado`) VALUES
(1, 'Administrador', NULL, NULL),
(2, 'Vendedor', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `Email`, `user`, `Contra`, `estado`, `idRol`, `idEmpleados`) VALUES
(33, NULL, 'Admin', '123412341234', 1, 1, NULL),
(35, NULL, 'Daniel', '123412341234', 1, 2, NULL);

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
  `nocomprobante` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `ClienteVenta_idx` (`idCliente`),
  KEY `VentaTipo_idx` (`tipoVenta`),
  KEY `VentasUsuario` (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVentas`, `fecha`, `total`, `estado`, `tipoVenta`, `nocomprobante`, `idCliente`, `idUsuario`) VALUES
(25, '2016-09-24 19:34:27', 285, 0, 1, 0, 2, NULL),
(26, '2016-09-24 19:36:06', 2100, 1, 1, 0, 2, NULL),
(27, '2016-09-24 19:39:46', 231, 1, 1, 0, 2, NULL),
(28, '2016-09-24 19:51:21', 2205, 1, 1, 0, 1, NULL),
(32, '2016-09-24 20:59:16', 226, 1, 1, 2, 2, NULL),
(49, '2016-09-26 04:45:50', 55, 1, 1, 3, 1, NULL),
(50, '2016-09-26 04:46:40', 3120, 1, 1, 4, 2, NULL),
(54, '2016-09-26 04:53:23', 245, 1, 1, 5, 2, NULL),
(56, '2016-09-26 05:14:32', 1320, 1, 1, 6, 2, NULL),
(59, '2016-09-26 05:27:27', 0, 1, 1, 8, 2, NULL),
(60, '2016-09-26 05:28:05', 1176, 1, 1, 9, 1, NULL),
(63, '2016-09-26 08:17:21', 15, 1, 1, 10, 1, NULL),
(65, '2016-09-26 18:57:20', 110, 1, 2, 11, 2, NULL),
(66, '2016-09-26 19:38:39', 15, 1, 2, 12, 1, NULL),
(67, '2016-09-26 19:43:01', 105, 1, 2, 13, 2, NULL),
(68, '2016-09-27 07:59:35', 7, 1, 2, 14, 2, NULL),
(69, '2016-09-27 08:00:54', 105, 1, 2, 15, 2, NULL),
(70, '2016-09-28 04:23:44', 63, 1, 1, 16, 2, NULL),
(73, '2016-09-28 06:38:16', 100, 1, 1, 17, 2, NULL),
(74, '2016-09-28 06:52:02', 120, 1, 1, 18, 2, NULL),
(75, '2016-09-28 19:45:08', 1480, 1, 1, 19, 2, NULL),
(76, '2016-09-28 20:01:13', 385, 1, 1, 20, 2, NULL),
(77, '2016-09-28 20:02:41', 750, 1, 1, 21, 2, NULL),
(78, '2016-09-28 20:07:57', 80, 1, 1, 22, 2, NULL),
(79, '2016-09-28 20:09:33', 200, 1, 1, 23, 2, NULL),
(80, '2016-09-28 20:12:23', 200, 1, 1, 24, 2, NULL),
(81, '2016-09-28 20:14:46', 200, 1, 1, 25, 1, NULL),
(82, '2016-09-28 20:15:38', 100, 1, 1, 26, 2, NULL),
(83, '2016-09-28 20:16:30', 100, 1, 1, 27, 2, NULL),
(84, '2016-09-28 20:22:07', 1800, 1, 1, 28, 1, NULL),
(85, '2016-09-28 20:24:56', 1800, 1, 1, 29, 2, NULL),
(87, '2016-09-28 20:28:24', 8, 1, 1, 30, 1, NULL),
(88, '2016-09-28 20:30:28', 106, 1, 1, 31, 2, NULL),
(91, '2016-09-28 20:34:54', 0, 1, 2, 32, 2, NULL),
(92, '2016-09-29 02:54:38', 1000, 1, 1, 33, 2, NULL),
(124, '2016-09-30 07:47:08', 0, 1, 1, 34, 2, 33),
(130, '2016-10-02 03:11:23', 9, 2, 2, 35, 1, 33),
(131, '2016-10-02 03:14:07', 69, 2, 2, 35, 2, 33),
(132, '2016-10-02 03:17:04', 9, 1, 2, 35, 2, 33),
(133, '2016-10-02 03:28:41', 140, 1, 2, 36, 2, 33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Volcado de datos para la tabla `ventasdetalle`
--

INSERT INTO `ventasdetalle` (`idVentaDetalle`, `Subtotal`, `Vencimiento`, `Cantidad`, `precio`, `garantia`, `idVenta`, `idProductos`, `idTipo`, `estado`) VALUES
(12, 15, NULL, 5, 3, NULL, 25, 4, NULL, 0),
(13, 30, NULL, 6, 5, NULL, 25, 13, NULL, 0),
(14, 240, NULL, 5, 48, NULL, 25, 6, NULL, 0),
(15, 2100, NULL, 100, 21, NULL, 26, 1, NULL, 1),
(18, 231, NULL, 11, 21, NULL, 27, 1, NULL, 1),
(19, 2205, NULL, 105, 21, NULL, 28, 1, NULL, 1),
(21, 97, NULL, 96, 1, NULL, 32, 5, NULL, 1),
(22, 129, NULL, 43, 3, NULL, 32, 8, NULL, 1),
(23, 55, NULL, 55, 1, NULL, 49, 2, NULL, 1),
(24, 3120, NULL, 65, 48, NULL, 50, 6, NULL, 1),
(25, 245, NULL, 49, 5, NULL, 54, 10, NULL, 1),
(26, 1320, NULL, 55, 24, NULL, 56, 15, NULL, 1),
(28, 0, NULL, 55, 0, NULL, 59, 23, NULL, 1),
(29, 1176, NULL, 49, 24, NULL, 60, 15, NULL, 1),
(31, 15, NULL, 5, 3, NULL, 63, 4, NULL, 1),
(32, 5, NULL, 5, 1, NULL, 65, 2, NULL, 1),
(33, 0, NULL, 3, 0, NULL, 65, 19, NULL, 1),
(34, 105, NULL, 5, 21, NULL, 65, 1, NULL, 1),
(35, 15, NULL, 5, 3, NULL, 66, 4, NULL, 1),
(36, 105, NULL, 5, 21, NULL, 67, 1, NULL, 1),
(37, 7, NULL, 7, 1, NULL, 68, 5, NULL, 1),
(38, 105, NULL, 5, 21, NULL, 69, 1, NULL, 1),
(39, 63, NULL, 3, 21, NULL, 70, 4, NULL, 1),
(40, 100, NULL, 5, 20, NULL, 73, 1, NULL, 1),
(41, 120, NULL, 4, 30, NULL, 74, 4, NULL, 1),
(42, 400, NULL, 20, 20, NULL, 75, 1, NULL, 1),
(43, 60, NULL, 3, 20, NULL, 75, 1, NULL, 1),
(44, 1020, NULL, 34, 30, NULL, 75, 4, NULL, 1),
(45, 360, NULL, 12, 30, NULL, 76, 4, NULL, 1),
(46, 25, NULL, 25, 1, NULL, 76, 2, NULL, 1),
(47, 0, NULL, 2, 0, NULL, 76, 26, NULL, 1),
(48, 690, NULL, 23, 30, NULL, 77, 4, NULL, 1),
(49, 60, NULL, 3, 20, NULL, 77, 1, NULL, 1),
(50, 80, NULL, 4, 20, NULL, 78, 1, NULL, 1),
(51, 200, NULL, 10, 20, NULL, 79, 1, NULL, 1),
(52, 200, NULL, 10, 20, NULL, 80, 1, NULL, 1),
(53, 200, NULL, 10, 20, NULL, 81, 1, NULL, 1),
(54, 100, NULL, 5, 20, NULL, 82, 1, NULL, 1),
(55, 100, NULL, 5, 20, NULL, 83, 1, NULL, 1),
(56, 1800, NULL, 60, 30, NULL, 84, 4, NULL, 1),
(57, 1800, NULL, 60, 30, NULL, 85, 4, NULL, 1),
(60, 4, NULL, 4, 1, NULL, 87, 2, NULL, 1),
(61, 4, NULL, 4, 1, NULL, 87, 2, NULL, 1),
(63, 6, NULL, 6, 1, NULL, 88, 2, NULL, 1),
(66, 0, NULL, 2, 0, NULL, 91, 18, NULL, 1),
(67, 1000, NULL, 2, 500, NULL, 92, 5, NULL, 1),
(72, 0, NULL, 2, 0, NULL, 124, 19, NULL, 1),
(74, 9, NULL, 9, 1, NULL, 130, 2, NULL, 2),
(75, 69, NULL, 69, 1, NULL, 131, 2, NULL, 2),
(77, 9, NULL, 9, 1, NULL, 132, 2, NULL, 1),
(78, 140, NULL, 5, 28, NULL, 133, 23, NULL, 1);

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
  ADD CONSTRAINT `ComprasUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`),
  ADD CONSTRAINT `CompraTipo` FOREIGN KEY (`tipoCompra`) REFERENCES `tipocompra` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuentascobrar`
--
ALTER TABLE `cuentascobrar`
  ADD CONSTRAINT `CuentasClientes` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `cuentaspagar`
--
ALTER TABLE `cuentaspagar`
  ADD CONSTRAINT `CuentasProveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idproveedor`);

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
  ADD CONSTRAINT `VentasUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`),
  ADD CONSTRAINT `VentaTipo` FOREIGN KEY (`tipoVenta`) REFERENCES `tipoventa` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
