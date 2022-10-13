-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla herramientas_rental.alquiler
CREATE TABLE IF NOT EXISTS `alquiler` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`,`username`,`fecha`) USING BTREE,
  KEY `FK_usuario` (`username`),
  CONSTRAINT `FK_herramienta` FOREIGN KEY (`id`) REFERENCES `herramienta` (`id`),
  CONSTRAINT `FK_usuario` FOREIGN KEY (`username`) REFERENCES `usuario` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla herramientas_rental.alquiler: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
INSERT INTO `alquiler` (`id`, `username`, `fecha`) VALUES
	(1, 'meyer', '2022-10-07 12:26:02'),
	(1, 'meyer', '2022-10-07 12:26:04');
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;

-- Volcando estructura para tabla herramientas_rental.herramienta
CREATE TABLE IF NOT EXISTS `herramienta` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `copias` int(11) DEFAULT NULL,
  `novedad` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla herramientas_rental.herramienta: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `herramienta` DISABLE KEYS */;
INSERT INTO `herramienta` (`id`, `titulo`, `genero`, `autor`, `copias`, `novedad`) VALUES
	(1, 'Taladro', 'Electrico', 'Luis Cepeda', 3, 0),
	(2, 'llave inglesa', 'Manual', 'Andres Estupiñan', 6, 1),
	(3, 'Radial', 'Electrico', 'Breimer Paipa', 7, 0),
	(4, 'Sierra', 'Electrico', 'Cristian Diaz', 2, 0),
	(5, 'Estornilladores', 'Manual', 'Nicolas Triana', 10, 1),
	(6, 'Martillo', 'Manual', 'Luis Cepeda', 6, 0),
	(7, 'Serrucho', 'Manual', 'Luis Cepeda', 10, 0),
	(8, 'Alicate', 'Manual', 'Nicolas Triana', 4, 0),
	(9, 'Hacha', 'Manual', 'Nicolas Triana', 8, 1),
	(10, 'Mezcladora', 'Mecanico/Electrico', 'Juan Fuentes', 4, 1),
	(11, 'Espatulas', 'Manual', 'Nicolas Ortiz', 4, 1),
	(12, 'Carretilla', 'Manual', 'William Baez', 5, 0),
	(13, 'Pala', 'Manual', 'David Baez', 8, 0),
	(14, 'Escalera', 'Manual', 'Ana Garzon', 6, 0),
	(15, 'Motobomba', 'Mecanico', 'Juan Fuentes', 3, 0);
/*!40000 ALTER TABLE `herramienta` ENABLE KEYS */;

-- Volcando estructura para tabla herramientas_rental.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `contrasena` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `saldo` double(22,2) DEFAULT NULL,
  `premium` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla herramientas_rental.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`username`, `contrasena`, `nombre`, `apellidos`, `email`, `saldo`, `premium`) VALUES
	('meyer', '1234', 'meyer', 'triana', 'meyer@gmail.com', 884.10, 1),
	('meyer10', '102001', 'meyer', 'triana', 'meyer@correo.com', 100.00, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
