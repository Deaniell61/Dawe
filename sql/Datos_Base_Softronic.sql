
--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`idModulos`, `Nombre`, `Dir`, `estado`, `RefId`) VALUES
(1, 'Inicio', '../app/img/inicio.png', 1, 'inicio'),
(2, 'Usuarios', '../app/img/usuariotab.png', 1, 'usuario'),
(3, 'Inventario', '../app/img/notas.png', 1, 'inventario'),
(4, 'Cuentas', '../app/img/etiqueta-del-precio.png', 1, 'cuentas'),
(5, 'Compras', '../app/img/carro-de-la-compra.png', 1, 'compras'),
(6, 'Ventas', '../app/img/diagrama.png', 1, 'ventas'),
(7, 'Pagos', '../app/img/pagos.png', 1, 'pagos'),
(8, 'Estadistica', '../app/img/reparacion-mecanismo.png', 1, 'estadistica');

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
(0, 'Soporte', '12345678', 0),
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
(0, 'admin@hectorrepuestos.com', 'admin', '123412341234', 1, 0, NULL);

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


