-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2025 a las 03:14:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panaderia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coberturas`
--

CREATE TABLE `coberturas` (
  `id_Cobertura` int(11) NOT NULL,
  `Cobertura` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coberturas`
--

INSERT INTO `coberturas` (`id_Cobertura`, `Cobertura`) VALUES
(1, 'Chocolate amargo'),
(2, 'Glaseado'),
(3, 'Fondant'),
(4, '0'),
(5, '0'),
(6, '0'),
(7, '0'),
(8, '0'),
(9, '0'),
(10, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleproducto`
--

CREATE TABLE `detalleproducto` (
  `id_DetProd` int(11) NOT NULL,
  `id_Sabor` int(11) DEFAULT NULL,
  `id_Cobertura` int(11) DEFAULT NULL,
  `id_Relleno` int(11) DEFAULT NULL,
  `id_Producto` int(11) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleproducto`
--

INSERT INTO `detalleproducto` (`id_DetProd`, `id_Sabor`, `id_Cobertura`, `id_Relleno`, `id_Producto`, `Precio`) VALUES
(1, 8, 7, 3, 3, 7.25),
(2, 1, 7, 7, 1, 12.18),
(3, 2, 9, 4, 2, 11.87),
(4, 7, 5, 9, 4, 14.78),
(5, 5, 6, 9, 5, 9.85),
(6, 9, 4, 8, 7, 19.52),
(7, 7, 7, 9, 6, 13.69),
(8, 10, 9, 5, 10, 29.47),
(9, 9, 8, 6, 8, 101.37),
(10, 8, 4, 5, 9, 25.49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id_DetVenta` int(11) NOT NULL,
  `FolioVenta` int(11) DEFAULT NULL,
  `id_DetProd` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id_DetVenta`, `FolioVenta`, `id_DetProd`, `Cantidad`, `Subtotal`) VALUES
(1, 8, 4, 2, 259),
(2, 3, 1, 4, 157),
(3, 5, 3, 5, 293),
(4, 2, 5, 1, 411),
(5, 3, 8, 5, 128),
(6, 9, 1, 4, 200),
(7, 5, 4, 5, 354),
(8, 4, 1, 3, 298),
(9, 4, 6, 4, 362),
(10, 4, 3, 4, 299);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invproductos`
--

CREATE TABLE `invproductos` (
  `id_InvProd` int(11) NOT NULL,
  `id_DetProd` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `invproductos`
--

INSERT INTO `invproductos` (`id_InvProd`, `id_DetProd`, `Cantidad`) VALUES
(1, 1, 37),
(2, 2, 31),
(3, 3, 69),
(4, 4, 91),
(5, 5, 10),
(6, 6, 69),
(7, 7, 56),
(8, 8, 55),
(9, 9, 90),
(10, 10, 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Producto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Producto`, `Nombre`) VALUES
(1, 'Trenza'),
(2, 'Concha'),
(3, 'Cuernito'),
(4, 'Oreja'),
(5, 'Polvoron'),
(6, 'Dona'),
(7, 'Dona de Moca'),
(8, 'Empanadas'),
(9, 'Brownies'),
(10, 'Tarta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rellenos`
--

CREATE TABLE `rellenos` (
  `id_Relleno` int(11) NOT NULL,
  `Relleno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rellenos`
--

INSERT INTO `rellenos` (`id_Relleno`, `Relleno`) VALUES
(1, 'Nutella'),
(2, 'Dulce de leche'),
(3, 'Crema pastelera'),
(4, 'Mermelada'),
(5, 'Chocolate'),
(6, 'Frutas'),
(7, 'Cajeta'),
(8, 'Queso crema'),
(9, 'Manzana'),
(10, 'Zarzamora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sabores`
--

CREATE TABLE `sabores` (
  `id_Sabor` int(11) NOT NULL,
  `Sabor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sabores`
--

INSERT INTO `sabores` (`id_Sabor`, `Sabor`) VALUES
(1, 'Chocolate'),
(2, 'Vainilla'),
(3, 'Fresa'),
(4, 'Moka'),
(5, 'Coco'),
(6, 'Limón'),
(7, 'Caramelo'),
(8, 'Nuez'),
(9, 'Café'),
(10, 'Queso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `FolioVenta` int(11) NOT NULL,
  `FechaVenta` date DEFAULT NULL,
  `TotalVenta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`FolioVenta`, `FechaVenta`, `TotalVenta`) VALUES
(1, '2025-07-15', 461),
(2, '2025-07-14', 432),
(3, '2025-07-13', 303),
(4, '2025-07-12', 561),
(5, '2025-07-11', 794),
(6, '2025-07-10', 937),
(7, '2025-07-09', 898),
(8, '2025-07-08', 477),
(9, '2025-07-07', 997),
(10, '2025-07-06', 422),
(11, '2025-07-15', 1),
(12, '2025-07-15', 1),
(13, '2025-07-15', 5),
(14, '2025-07-15', 12),
(15, '2025-07-15', 1),
(16, '2025-07-15', 14),
(17, '2025-07-15', 1),
(18, '2025-07-15', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coberturas`
--
ALTER TABLE `coberturas`
  ADD PRIMARY KEY (`id_Cobertura`);

--
-- Indices de la tabla `detalleproducto`
--
ALTER TABLE `detalleproducto`
  ADD PRIMARY KEY (`id_DetProd`),
  ADD KEY `id_Sabor` (`id_Sabor`),
  ADD KEY `id_Cobertura` (`id_Cobertura`),
  ADD KEY `id_Relleno` (`id_Relleno`),
  ADD KEY `id_Producto` (`id_Producto`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id_DetVenta`),
  ADD KEY `FolioVenta` (`FolioVenta`),
  ADD KEY `id_DetProd` (`id_DetProd`);

--
-- Indices de la tabla `invproductos`
--
ALTER TABLE `invproductos`
  ADD PRIMARY KEY (`id_InvProd`),
  ADD KEY `id_DetProd` (`id_DetProd`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Producto`);

--
-- Indices de la tabla `rellenos`
--
ALTER TABLE `rellenos`
  ADD PRIMARY KEY (`id_Relleno`);

--
-- Indices de la tabla `sabores`
--
ALTER TABLE `sabores`
  ADD PRIMARY KEY (`id_Sabor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`FolioVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coberturas`
--
ALTER TABLE `coberturas`
  MODIFY `id_Cobertura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalleproducto`
--
ALTER TABLE `detalleproducto`
  MODIFY `id_DetProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id_DetVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `invproductos`
--
ALTER TABLE `invproductos`
  MODIFY `id_InvProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rellenos`
--
ALTER TABLE `rellenos`
  MODIFY `id_Relleno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sabores`
--
ALTER TABLE `sabores`
  MODIFY `id_Sabor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `FolioVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleproducto`
--
ALTER TABLE `detalleproducto`
  ADD CONSTRAINT `detalleproducto_ibfk_1` FOREIGN KEY (`id_Sabor`) REFERENCES `sabores` (`id_Sabor`),
  ADD CONSTRAINT `detalleproducto_ibfk_2` FOREIGN KEY (`id_Cobertura`) REFERENCES `coberturas` (`id_Cobertura`),
  ADD CONSTRAINT `detalleproducto_ibfk_3` FOREIGN KEY (`id_Relleno`) REFERENCES `rellenos` (`id_Relleno`),
  ADD CONSTRAINT `detalleproducto_ibfk_4` FOREIGN KEY (`id_Producto`) REFERENCES `productos` (`id_Producto`);

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`FolioVenta`) REFERENCES `ventas` (`FolioVenta`),
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`id_DetProd`) REFERENCES `detalleproducto` (`id_DetProd`);

--
-- Filtros para la tabla `invproductos`
--
ALTER TABLE `invproductos`
  ADD CONSTRAINT `invproductos_ibfk_1` FOREIGN KEY (`id_DetProd`) REFERENCES `detalleproducto` (`id_DetProd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
