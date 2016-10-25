
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2016 a las 19:25:12
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
(1, 'Soporte', '12345678', 0),
(2, 'Administrador', '12345678', 1),
(3, 'Usuario', '1456', 1);

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
(0, NULL, 'admin', '123412341234', 1, 1, NULL),
(2, NULL, 'demo', 'demo', 1, 2, NULL);

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`idAccesos`, `Agrega`, `Modifica`, `Mostrar`, `Elimina`, `idUsuarios`, `idModulo`) VALUES
(1, 1, 1, 1, 1, 0, 1),
(2, 1, 1, 1, 1, 0, 2),
(3, 1, 1, 1, 1, 0, 3),
(4, 1, 1, 1, 1, 0, 4),
(5, 1, 1, 1, 1, 0, 5),
(6, 1, 1, 1, 1, 0, 6),
(7, 1, 1, 1, 1, 0, 7),
(8, 1, 1, 1, 1, 0, 8);