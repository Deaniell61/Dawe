-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2016 a las 02:51:03
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hectorrepuestos`
--

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

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`idPuestos`, `Descripcion`) VALUES
(1, 'Jefe'),
(2, 'Vendedor');

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `Descripcion`, `ModulosDefecto`, `estado`) VALUES
(1, 'Administrador', '12345678', 1),
(2, 'Usuario', '1456', 1);

--
-- Volcado de datos para la tabla `tipocompra`
--

INSERT INTO `tipocompra` (`idTipo`, `Descripcion`, `Observacion`, `estado`) VALUES
(1, 'Contado', NULL, 1),
(2, 'Credito', NULL, 1),
(3, 'Donacion', NULL, 1);

--
-- Volcado de datos para la tabla `tipoventa`
--

INSERT INTO `tipoventa` (`idTipo`, `Descripcion`, `Observacion`, `estado`) VALUES
(1, 'Contado', NULL, 1),
(2, 'Credito', NULL, 1),
(3, 'Donacion', NULL, 1);

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `Email`, `user`, `Contra`, `estado`, `idRol`, `idEmpleados`) VALUES
(1, 'admin@hectorrepuestos.com', 'admin', '123412341234', 1, 1, NULL);

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
(23, 1, 1, NULL, 1, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
