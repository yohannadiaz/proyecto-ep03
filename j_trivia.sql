-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2015 a las 09:05:41
-- Versión del servidor: 5.1.30
-- Versión de PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `j_trivia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpregunta` int(11) NOT NULL DEFAULT '0',
  `numpregunta` int(5) DEFAULT NULL,
  `pregunta` varchar(200) DEFAULT NULL,
  `opcion1` varchar(100) DEFAULT NULL,
  `opcion2` varchar(100) DEFAULT NULL,
  `opcion3` varchar(100) DEFAULT NULL,
  `opcion4` varchar(100) DEFAULT NULL,
  `correcta` int(5) DEFAULT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `numpregunta`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, 1, '¿Cuántas caras tiene un icosaedro?', '20', '16', '8', '24', 1),
(2, 2, '¿Qué contiene el cactus llamado peyote?', 'LSD', 'MDMA', 'Salvia', 'Mescalina', 4),
(3, 3, '¿Cuál es la sustancia deficiente en los diabéticos?', 'Insulina', 'Glucagon', 'Incretina', 'Bilirrunina', 1),
(4, 4, '¿Cómo llamamos a la inflamación de la piel?', 'Urticaria', 'Dermatitis', 'Psoriasis', 'Acné', 2),
(5, 5, '¿Cuál de estos NO es un musculo del cuerpo?', 'Gemelos', 'Espinal', 'Sartorio', 'Cruzado', 4),
(6, 6, '¿A qué tienes miedo si sufres de aracnofobia?', 'Arañas', 'Elefantes', 'Hormigas', 'Mirlos ', 1),
(7, 7, '¿Qué significan las siglas USB?', 'Universal Serial Button', 'Uniform Serial Bus', 'Universal Serial Bus', 'Uniform Sonic Boom', 3),
(8, 8, '¿Qué es el colesterol?', 'Una proteína', 'Un glúcido', 'Un ácido nucleico', 'Un lipido ', 4),
(9, 9, '¿Qué significan las siglas "www"?', 'World Wide Web', 'World Wild West', 'Wikipedia World Web', 'Todas son correctas', 1),
(10, 10, '¿Qué es la queratina?', 'Un lípido ', 'Un ácido nucleico', 'Una proteína', 'Veneno', 3);
