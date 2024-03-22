-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Mar 22, 2024 at 08:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisg`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `dpi` char(13) NOT NULL,
  `nombre` char(50) NOT NULL,
  `edad` int(2) NOT NULL,
  `sexo` char(1) NOT NULL,
  `email` char(50) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `dpi`, `nombre`, `edad`, `sexo`, `email`, `activo`) VALUES
(1, '123', 'jsjs', 43, 'M', 'jdjdj', 0),
(2, '12345656', 'lester Mendez', 25, 'M', 'ggg', 1),
(3, '182828', 'Lester', 35, 'M', 'lmendez@gmail.com', 0),
(5, '1234', 'Reyes', 18, 'F', 'reyes@gmail.com', 1),
(6, '1620632100101', 'Lester Mendez', 45, 'M', 'ivanmendez@gmail.com', 1),
(7, '123454656', 'Reyes Miguel El Mas Gay', 25, 'F', 'reyesgay@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `dpi` varchar(13) NOT NULL,
  `Primer Nombre` varchar(50) NOT NULL,
  `Segundo Nombre` varchar(50) NOT NULL,
  `Apellido Paterno` varchar(50) NOT NULL,
  `Apellido Materno` varchar(50) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Fecha de Nacimiento` date NOT NULL,
  `Correo Electronico` varchar(100) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Alergias` varchar(255) NOT NULL,
  `Enfermedades previas` varchar(255) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `dpi`, `Primer Nombre`, `Segundo Nombre`, `Apellido Paterno`, `Apellido Materno`, `Edad`, `Sexo`, `Fecha de Nacimiento`, `Correo Electronico`, `Telefono`, `Direccion`, `Alergias`, `Enfermedades previas`, `activo`) VALUES
(1, '1234567891012', 'Juan', 'Antonio', 'González', 'López', 35, 'M', '1989-05-15', 'juan@example.com', 123456789, 'Calle 123, Ciudad', 'Ninguna', 'Hipertensión', 1),
(2, '2345678910123', 'María', 'Isabel', 'Martínez', 'García', 28, 'F', '1996-10-25', 'maria@example.com', 987654321, 'Avenida Principal, Pueblo', 'Polen', 'Asma', 1),
(3, '3456789101234', 'Luis', 'Alberto', 'Hernández', 'Pérez', 42, 'M', '1982-02-08', 'luis@example.com', 654321987, 'Calle Central, Villa', 'Penicilina', 'Diabetes', 1),
(4, '4567891012345', 'Ana', 'María', 'López', 'Rodríguez', 50, 'F', '1974-07-12', 'ana@example.com', 123789456, 'Avenida Principal, Aldea', 'Frutos secos', 'Ninguna', 1),
(5, '5678910123456', 'Javier', 'Alejandro', 'Sánchez', 'Gómez', 31, 'M', '1991-11-30', 'javier@example.com', 789456123, 'Calle Secundaria, Pueblo', 'Ninguna', 'Asma', 1),
(6, '1222222222', 'axel', 'alvarado', 'alvarado', 'arana', 12, 'M', '2002-06-26', 'achel@gmail.com', 2222222, 'mi casa', 'unicornios', 'voces', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL,
  `apellido_materno` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `pregunta_secreta` varchar(50) NOT NULL,
  `respuesta_pregunta` varchar(50) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `telefono`, `pregunta_secreta`, `respuesta_pregunta`, `estado`, `usuario`, `contrasena`) VALUES
(1, 'prueba', 'prueba', 'prueba', '12341234', 'prueba', 'prueba', 1, 'prueba1', 'BI+gkGj7igA='),
(2, 'prueba1', 'prueba1', 'prueba1', '12345678', 'prueba1', 'prueba1', 1, 'prueba1', 'BI+gkGj7igA='),
(3, 'prueba2', 'prueba2', 'prueba', '12345678', 'prueba', 'prueba', 1, 'prueba2', 'BI+gkGj7igA=');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilegio` varchar(50) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `privilegio`, `activo`) VALUES
(1, 'ivan', '1234', 'admin', 1),
(2, 'lester', '1234', 'empleado', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
