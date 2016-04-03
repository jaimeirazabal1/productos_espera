
CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Estado 1'),
(2, 'Estado 2'),
(3, 'Estado 3');


CREATE TABLE `productos_espera` (
  `id` int(11) NOT NULL,
  `producto` varchar(10) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `sucursal` varchar(10) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `observacion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `productos_espera`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_espera`
--
ALTER TABLE `productos_espera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;