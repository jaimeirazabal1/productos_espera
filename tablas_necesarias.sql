
-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2016 a las 12:16:18
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
-- Estructura de tabla para la tabla `estado_productos`
--

CREATE TABLE `estado_productos` (
  `id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `productos_espera_id` int(11) NOT NULL,
  `creado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_productos`
--

INSERT INTO `estado_productos` (`id`, `estado_id`, `productos_espera_id`, `creado`) VALUES
(1, 1, 1, '2016-04-03 05:17:57'),
(2, 1, 2, '2016-04-03 05:18:29'),
(3, 2, 2, '2016-04-03 06:13:43'),
(4, 4, 2, '2016-04-03 06:13:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado_productos`
--
ALTER TABLE `estado_productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado_productos`
--
ALTER TABLE `estado_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2016 a las 12:16:59
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
-- Estructura de tabla para la tabla `productos_espera`
--

CREATE TABLE `productos_espera` (
  `id` int(11) NOT NULL,
  `producto` varchar(10) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `sucursal` varchar(10) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `estado_producto_id` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `observacion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_espera`
--



--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos_espera`
--
ALTER TABLE `productos_espera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos_espera`
--
ALTER TABLE `productos_espera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
