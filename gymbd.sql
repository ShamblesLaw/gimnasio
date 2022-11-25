-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 23:17:23
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gymbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `clientes_id` int(11) NOT NULL,
  `clientes_DNI` varchar(12) NOT NULL,
  `clientes_nombre` varchar(45) NOT NULL,
  `clientes_apellido` varchar(45) NOT NULL,
  `clientes_tel` varchar(15) NOT NULL,
  `clientes_fecnac` date DEFAULT NULL,
  `clientes_peso` double(10,0) NOT NULL,
  `clientes_altura` double(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`clientes_id`, `clientes_DNI`, `clientes_nombre`, `clientes_apellido`, `clientes_tel`, `clientes_fecnac`, `clientes_peso`, `clientes_altura`) VALUES
(1, '12345678', 'Juan Roberto', 'Perez', '091 234 567', '2006-11-15', 23, 34),
(3, '57914612', 'Leandro', 'Gomez Moreira', '091 066 507', '2006-02-09', 40, 170),
(5, '11223344', 'Mateo', 'Silveira', '099999999', '2022-11-03', 1, 270);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `especialidad_id` int(11) NOT NULL,
  `especialidad_nombre` varchar(45) NOT NULL,
  `especialidad_detalle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `profe_id` int(11) NOT NULL,
  `profe_DNI` varchar(12) NOT NULL,
  `profe_nombre` varchar(45) NOT NULL,
  `profe_apellido` varchar(45) NOT NULL,
  `profe_tel` varchar(15) NOT NULL,
  `profe_especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`profe_id`, `profe_DNI`, `profe_nombre`, `profe_apellido`, `profe_tel`, `profe_especialidad`) VALUES
(1, '11111111', 'Juan Ricardo', 'Rivera Ferreira', '091233244', 'Dietista'),
(2, '11111112', 'Roberto ', 'Perez', '091344355', 'Preparador Fisico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `rutinas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarios_id` int(11) NOT NULL,
  `usuarios_nickname` varchar(40) NOT NULL,
  `usuarios_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarios_id`, `usuarios_nickname`, `usuarios_password`) VALUES
(1, 'Admin', '1234'),
(2, 'Jaja', 'JREITARADo'),
(3, 'Mateo', '123456789o'),
(4, 'A', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`clientes_id`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`especialidad_id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`profe_id`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`rutinas_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarios_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `clientes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `especialidad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `profe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `rutinas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarios_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
