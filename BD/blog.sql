-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2021 a las 00:51:08
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `ID_Categoria` int(30) NOT NULL,
  `Categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_Usuario` int(30) NOT NULL,
  `Nombre_Usuario` varchar(60) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Contrasena` varchar(30) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Deporte` varchar(30) DEFAULT NULL,
  `ID_Tipo_Usuario` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_blog`
--

CREATE TABLE `registro_blog` (
  `ID_Blog` int(30) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Categoria` int(11) NOT NULL,
  `Titulo` int(11) NOT NULL,
  `Slug` int(11) NOT NULL,
  `Texto_Corto` int(11) NOT NULL,
  `Texto_Largo` int(11) NOT NULL,
  `Imagen` int(11) NOT NULL,
  `Fecha_Creacion` int(11) NOT NULL,
  `Fecha_Actualizacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `ID_Tipo_usuario` int(30) NOT NULL,
  `Tipo_Usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `ID_Tipo_Usuario` (`ID_Tipo_Usuario`);

--
-- Indices de la tabla `registro_blog`
--
ALTER TABLE `registro_blog`
  ADD PRIMARY KEY (`ID_Blog`),
  ADD UNIQUE KEY `ID_Usuario` (`ID_Usuario`,`ID_Categoria`),
  ADD KEY `ID_Categoria` (`ID_Categoria`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`ID_Tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_Categoria` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_Usuario` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_blog`
--
ALTER TABLE `registro_blog`
  MODIFY `ID_Blog` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `ID_Tipo_usuario` int(30) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Tipo_Usuario`) REFERENCES `tipo_usuario` (`ID_Tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registro_blog`
--
ALTER TABLE `registro_blog`
  ADD CONSTRAINT `registro_blog_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `persona` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_blog_ibfk_2` FOREIGN KEY (`ID_Categoria`) REFERENCES `categoria` (`ID_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
