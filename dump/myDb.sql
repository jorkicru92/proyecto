-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2018 a las 20:22:57
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1
create database myDb;
use myDb;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `PersonaCodigo` int(11) NOT NULL,
  `PersonaNombres` varchar(50) NOT NULL,
  `PersonaApellidos` varchar(50) NOT NULL,
  `PersonaDireccion` varchar(100) NOT NULL,
  `PersonaEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`PersonaCodigo`, `PersonaNombres`, `PersonaApellidos`, `PersonaDireccion`, `PersonaEstado`) VALUES
(1, 'Jose Luis', 'Garcia Anticona', 'Riva Aguero 1054', 1),
(2, 'Ana Maria', 'Gonzales Medina', 'Peru 273', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `UsuarioCodigo` int(11) NOT NULL,
  `PersonaCodigo` int(11) NOT NULL,
  `UsuarioLogin` varchar(40) NOT NULL,
  `UsuarioPassword` text NOT NULL,
  `UsuarioEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`UsuarioCodigo`, `PersonaCodigo`, `UsuarioLogin`, `UsuarioPassword`, `UsuarioEstado`) VALUES
(1, 1, 'pepe', '123456', 1),
(2, 2, 'ana', '654321', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`PersonaCodigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UsuarioCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `PersonaCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UsuarioCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

CREATE USER 'user'@'localhost' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
