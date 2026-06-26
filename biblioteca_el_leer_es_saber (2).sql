-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:28:46
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
-- Base de datos: `biblioteca_el_leer_es_saber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_autor`, `nombre`, `apellido`, `fecha_nacimiento`, `nacionalidad`, `biografia`, `creado_en`) VALUES
(3, 'Gabriel', 'García Márquez', '1927-03-06', 'Colombiana', NULL, '2026-06-26 04:19:30'),
(4, 'J.K.', 'Rowling', '1965-07-31', 'Británica', NULL, '2026-06-26 04:19:30'),
(5, 'Stephen', 'King', '1947-09-21', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(6, 'Isabel', 'Allende', '1942-08-02', 'Chilena', NULL, '2026-06-26 04:19:30'),
(7, 'Haruki', 'Murakami', '1949-01-12', 'Japonesa', NULL, '2026-06-26 04:19:30'),
(8, 'George', 'Orwell', '1903-06-25', 'Británica', NULL, '2026-06-26 04:19:30'),
(9, 'Jane', 'Austen', '1775-12-16', 'Británica', NULL, '2026-06-26 04:19:30'),
(10, 'Miguel', 'de Cervantes', '1547-09-29', 'Española', NULL, '2026-06-26 04:19:30'),
(11, 'Jorge Luis', 'Borges', '1899-08-24', 'Argentina', NULL, '2026-06-26 04:19:30'),
(12, 'Mario', 'Vargas Llosa', '1936-03-28', 'Peruana', NULL, '2026-06-26 04:19:30'),
(13, 'Agatha', 'Christie', '1890-09-15', 'Británica', NULL, '2026-06-26 04:19:30'),
(14, 'Paulo', 'Coelho', '1947-08-24', 'Brasileña', NULL, '2026-06-26 04:19:30'),
(15, 'Julio', 'Cortázar', '1914-08-26', 'Argentina', NULL, '2026-06-26 04:19:30'),
(16, 'Ernest', 'Hemingway', '1899-07-21', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(17, 'Laura', 'Esquivel', '1950-09-30', 'Mexicana', NULL, '2026-06-26 04:19:30'),
(18, 'Carlos', 'Ruiz Zafón', '1964-09-25', 'Española', NULL, '2026-06-26 04:19:30'),
(19, 'Neil', 'Gaiman', '1960-11-10', 'Británica', NULL, '2026-06-26 04:19:30'),
(20, 'Brandon', 'Sanderson', '1975-12-19', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(21, 'Ursula K.', 'Le Guin', '1929-10-21', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(22, 'Ray', 'Bradbury', '1920-08-22', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(23, 'Octavia', 'Butler', '1947-06-22', 'Estadounidense', NULL, '2026-06-26 04:19:30'),
(24, 'Chimamanda', 'Ngozi Adichie', '1977-09-15', 'Nigeriana', NULL, '2026-06-26 04:19:30'),
(25, 'Yuval Noah', 'Harari', '1976-02-24', 'Israelí', NULL, '2026-06-26 04:19:30'),
(26, 'Elena', 'Ferrante', NULL, 'Italiana', NULL, '2026-06-26 04:19:30'),
(27, 'Ken', 'Follett', '1949-06-05', 'Británica', NULL, '2026-06-26 04:19:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `id_editorial` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id_editorial`, `nombre`, `pais`, `sitio_web`, `creado_en`) VALUES
(3, 'Editorial Planeta 1', 'Estados Unidos', NULL, '2026-06-26 04:22:42'),
(4, 'Editorial Santillana 2', 'Colombia', NULL, '2026-06-26 04:22:42'),
(5, 'Editorial SM 3', 'Reino Unido', NULL, '2026-06-26 04:22:42'),
(6, 'Editorial Planeta 4', 'Perú', NULL, '2026-06-26 04:22:42'),
(7, 'Editorial Santillana 5', 'Colombia', NULL, '2026-06-26 04:22:42'),
(8, 'Editorial Seix Barral 6', 'España', NULL, '2026-06-26 04:22:42'),
(9, 'Editorial Destino 7', 'Venezuela', NULL, '2026-06-26 04:22:42'),
(10, 'Editorial Anagrama 8', 'Colombia', NULL, '2026-06-26 04:22:42'),
(11, 'Editorial Destino 9', 'España', NULL, '2026-06-26 04:22:42'),
(12, 'Editorial Anagrama 10', 'Perú', NULL, '2026-06-26 04:22:42'),
(13, 'Editorial Seix Barral 11', 'Colombia', NULL, '2026-06-26 04:22:42'),
(14, 'Editorial Destino 12', 'Perú', NULL, '2026-06-26 04:22:42'),
(15, 'Editorial Seix Barral 13', 'Ecuador', NULL, '2026-06-26 04:22:42'),
(16, 'Editorial Alfaguara 14', 'Chile', NULL, '2026-06-26 04:22:42'),
(17, 'Editorial Alfaguara 15', 'Perú', NULL, '2026-06-26 04:22:42'),
(18, 'Lumen', 'España', NULL, '2026-06-26 13:09:43'),
(19, 'Debate', 'España', NULL, '2026-06-26 13:09:43'),
(20, 'HarperCollins', 'Estados Unidos', NULL, '2026-06-26 13:09:43'),
(21, 'Vintage Books', 'Estados Unidos', NULL, '2026-06-26 13:09:43'),
(22, 'Editorial Océano', 'México', NULL, '2026-06-26 13:09:43'),
(23, 'Ediciones B', 'España', NULL, '2026-06-26 13:09:43'),
(24, 'SM Ediciones', 'España', NULL, '2026-06-26 13:09:43'),
(25, 'Editorial Ariel', 'España', NULL, '2026-06-26 13:09:43'),
(26, 'Editorial Taurus', 'España', NULL, '2026-06-26 13:09:43'),
(27, 'Editorial Crítica', 'España', NULL, '2026-06-26 13:09:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre`, `descripcion`) VALUES
(6, 'Ficción', 'Novelas y literatura imaginativa'),
(7, 'Ciencia Ficción', 'Historias futuristas y tecnológicas'),
(8, 'Fantasía', 'Mundos mágicos e imaginarios'),
(9, 'Misterio', 'Novelas de detectives y suspense'),
(10, 'Romance', 'Historias de amor'),
(11, 'Historia', 'Libros históricos y biografías'),
(12, 'Ciencia', 'Divulgación científica'),
(13, 'Terror', 'Literatura de miedo y horror'),
(14, 'Aventura', 'Historias de exploración y acción'),
(15, 'Infantil', 'Libros para niños'),
(16, 'Juvenil', 'Literatura para adolescentes'),
(17, 'Autoayuda', 'Desarrollo personal'),
(18, 'Poesía', 'Obras poéticas'),
(19, 'Ensayo', 'Textos de opinión y análisis'),
(20, 'Biografía', 'Vidas de personajes importantes'),
(40, 'Religion', 'Historias sobre religion'),
(41, 'Novela Negra', 'Crimen y detectives'),
(42, 'Distopía', 'Sociedades futuristas negativas'),
(43, 'Realismo Mágico', 'Mezcla de realidad y fantasía'),
(44, 'Literatura Latinoamericana', 'Autores de Latinoamérica'),
(45, 'Filosofía', 'Pensamiento filosófico'),
(46, 'Psicología', 'Estudios sobre la salud psicologica'),
(47, 'Economía', 'Libros de economía'),
(48, 'Arte', 'Libros sobre arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `titulo` varchar(200) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_editorial` int(11) DEFAULT NULL,
  `ano_publicacion` year(4) DEFAULT NULL,
  `numero_paginas` int(11) DEFAULT NULL,
  `cantidad_disponible` int(11) NOT NULL DEFAULT 1,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_generos`
--

CREATE TABLE `libros_generos` (
  `id_libro` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_socio` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL DEFAULT curdate(),
  `fecha_devolucion_esperada` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL,
  `estado` enum('Activo','Devuelto','Atrasado','Perdido') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id_socio` int(11) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT curdate(),
  `estado` enum('Activo','inactivo','bloqueado') DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id_socio`, `dni`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `telefono`, `email`, `fecha_registro`, `estado`) VALUES
(1, '12345678', 'Carlos', 'Rodríguez', '1995-04-12', 'Av. Principal 123', '987654321', 'carlos@email.com', '2026-06-26', 'Activo'),
(2, '23456789', 'Ana', 'López', '1998-07-23', 'Calle 45 #67', '912345678', 'ana@email.com', '2026-06-26', 'Activo'),
(3, '34567890', 'Luis', 'García', '1993-11-05', 'Jr. Los Pinos 89', '945678901', 'luis@email.com', '2026-06-26', 'Activo'),
(4, '45678901', 'María', 'Torres', '2000-02-18', 'Av. Libertad 234', '956789012', 'maria@email.com', '2026-06-26', 'Activo'),
(5, '56789012', 'Pedro', 'Sánchez', '1996-09-30', 'Calle Real 56', '967890123', 'pedro@email.com', '2026-06-26', 'Activo'),
(6, '67890123', 'Laura', 'Martínez', '1997-05-15', 'Av. Bolívar 789', '978901234', 'laura@email.com', '2026-06-26', 'Activo'),
(7, '78901234', 'Diego', 'Hernández', '1994-12-22', 'Jr. Independencia 12', '989012345', 'diego@email.com', '2026-06-26', 'Activo'),
(8, '89012345', 'Sofía', 'Ramírez', '1999-03-08', 'Calle 78 #90', '990123456', 'sofia@email.com', '2026-06-26', 'Activo'),
(9, '90123456', 'Andrés', 'Flores', '1992-08-17', 'Av. Sucre 345', '901234567', 'andres@email.com', '2026-06-26', 'Activo'),
(10, '01234567', 'Valentina', 'Cruz', '2001-06-25', 'Jr. Las Flores 67', '912345678', 'valentina@email.com', '2026-06-26', 'Activo'),
(11, '11234567', 'Jorge', 'Vargas', '1995-10-11', 'Calle 23 #45', '923456789', 'jorge@email.com', '2026-06-26', 'Activo'),
(12, '21234567', 'Camila', 'Morales', '1998-01-30', 'Av. Central 890', '934567890', 'camila@email.com', '2026-06-26', 'Activo'),
(13, '31234567', 'Mateo', 'Ortiz', '1997-04-14', 'Jr. San Martín 123', '945678901', 'mateo@email.com', '2026-06-26', 'Activo'),
(14, '41234567', 'Isabella', 'Gómez', '1999-11-27', 'Calle 12 #34', '956789012', 'isabella@email.com', '2026-06-26', 'Activo'),
(15, '51234567', 'Sebastián', 'Ramos', '1996-07-19', 'Av. España 567', '967890123', 'sebastian@email.com', '2026-06-26', 'Activo'),
(16, '61234567', 'Lucía', 'Díaz', '2000-05-03', 'Jr. Bolívar 89', '978901234', 'lucia@email.com', '2026-06-26', 'Activo'),
(17, '71234567', 'Emiliano', 'Silva', '1993-09-21', 'Calle 67 #89', '989012345', 'emiliano@email.com', '2026-06-26', 'Activo'),
(18, '81234567', 'Mía', 'Navarro', '1998-12-08', 'Av. Libertador 234', '990123456', 'mia@email.com', '2026-06-26', 'Activo'),
(19, '91234567', 'Benjamín', 'Mendoza', '1995-02-16', 'Jr. 28 de Julio 45', '901234567', 'benjamin@email.com', '2026-06-26', 'Activo'),
(20, '10123456', 'Olivia', 'Castro', '1997-06-29', 'Calle Principal 12', '912345678', 'olivia@email.com', '2026-06-26', 'Activo'),
(21, '11123456', 'Lucas', 'Vega', '1999-10-05', 'Av. 28 de Julio 678', '923456789', 'lucas@email.com', '2026-06-26', 'Activo'),
(22, '12123456', 'Emma', 'Rojas', '1994-03-18', 'Jr. Comercio 90', '934567890', 'emma@email.com', '2026-06-26', 'Activo'),
(23, '13123456', 'Daniel', 'Herrera', '1996-08-22', 'Calle 45 #67', '945678901', 'daniel@email.com', '2026-06-26', 'Activo'),
(24, '14123456', 'Victoria', 'Medina', '2001-01-14', 'Av. Grau 123', '956789012', 'victoria@email.com', '2026-06-26', 'Activo'),
(25, '15123456', 'Samuel', 'Castillo', '1998-04-27', 'Jr. Lima 456', '967890123', 'samuel@email.com', '2026-06-26', 'Activo');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_libros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_libros` (
`id_libro` int(11)
,`titulo` varchar(200)
,`isbn` varchar(20)
,`autor` varchar(201)
,`editorial` varchar(100)
,`ano_publicacion` year(4)
,`cantidad_disponible` int(11)
,`generos` mediumtext
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_prestamos_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_prestamos_activos` (
`id_prestamo` int(11)
,`socio` varchar(201)
,`dni` varchar(20)
,`titulo` varchar(200)
,`fecha_prestamo` date
,`fecha_devolucion_esperada` date
,`dias_restantes` int(7)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_libros`
--
DROP TABLE IF EXISTS `vista_libros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_libros`  AS SELECT `l`.`id_libro` AS `id_libro`, `l`.`titulo` AS `titulo`, `l`.`isbn` AS `isbn`, concat(`a`.`nombre`,' ',`a`.`apellido`) AS `autor`, `e`.`nombre` AS `editorial`, `l`.`ano_publicacion` AS `ano_publicacion`, `l`.`cantidad_disponible` AS `cantidad_disponible`, group_concat(`g`.`nombre` separator ', ') AS `generos` FROM ((((`libros` `l` left join `autores` `a` on(`l`.`id_autor` = `a`.`id_autor`)) left join `editoriales` `e` on(`l`.`id_editorial` = `e`.`id_editorial`)) left join `libros_generos` `lg` on(`l`.`id_libro` = `lg`.`id_libro`)) left join `generos` `g` on(`lg`.`id_genero` = `g`.`id_genero`)) GROUP BY `l`.`id_libro` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_prestamos_activos`
--
DROP TABLE IF EXISTS `vista_prestamos_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_prestamos_activos`  AS SELECT `p`.`id_prestamo` AS `id_prestamo`, concat(`s`.`nombre`,' ',`s`.`apellido`) AS `socio`, `s`.`dni` AS `dni`, `l`.`titulo` AS `titulo`, `p`.`fecha_prestamo` AS `fecha_prestamo`, `p`.`fecha_devolucion_esperada` AS `fecha_devolucion_esperada`, to_days(`p`.`fecha_devolucion_esperada`) - to_days(curdate()) AS `dias_restantes` FROM ((`prestamos` `p` join `socios` `s` on(`p`.`id_socio` = `s`.`id_socio`)) join `libros` `l` on(`p`.`id_libro` = `l`.`id_libro`)) WHERE `p`.`estado` = 'Activo' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`id_editorial`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_editorial` (`id_editorial`),
  ADD KEY `idx_libros_titulo` (`titulo`),
  ADD KEY `idx_libros_isbn` (`isbn`);

--
-- Indices de la tabla `libros_generos`
--
ALTER TABLE `libros_generos`
  ADD PRIMARY KEY (`id_libro`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_socio` (`id_socio`),
  ADD KEY `idx_prestamos_fecha` (`fecha_prestamo`),
  ADD KEY `idx_prestamos_estado` (`estado`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socio`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_socios_dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id_socio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_editorial`) REFERENCES `editoriales` (`id_editorial`) ON DELETE SET NULL;

--
-- Filtros para la tabla `libros_generos`
--
ALTER TABLE `libros_generos`
  ADD CONSTRAINT `libros_generos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_generos_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_socio`) REFERENCES `socios` (`id_socio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
