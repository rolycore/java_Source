-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-09-2013 a las 19:30:53
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tienda`
--
/*create database tienda;*/
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE IF NOT EXISTS `boleta` (
  `num_bol` varchar(8) NOT NULL,
  `cod_cli` varchar(6) NOT NULL,
  `pre_tot` varchar(10) NOT NULL,
  `fecha` varchar(15) NOT NULL,
  PRIMARY KEY (`num_bol`),
  KEY `cod_cli` (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `boleta`
--

INSERT INTO `boleta` (`num_bol`, `cod_cli`, `pre_tot`, `fecha`) VALUES
('00000001', 'CC0001', '20.4', '04/05/2013'),
('00000002', 'CC0002', '17.0', '04/05/2013'),
('00000003', 'CC0002', '10.0', '06/05/2013'),
('00000004', 'CC0003', '83.2', '10/05/2013'),
('00000005', 'CC0004', '15.5', '11/05/2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cod_cli` varchar(6) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `ape_cli` varchar(30) NOT NULL,
  `sexo_cli` varchar(1) NOT NULL,
  `dni_cli` varchar(8) NOT NULL,
  `tel_cli` varchar(9) NOT NULL,
  `ruc_cli` varchar(11) NOT NULL,
  `email_cli` varchar(30) NOT NULL,
  `dir_cli` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cli`, `nom_cli`, `ape_cli`, `sexo_cli`, `dni_cli`, `tel_cli`, `ruc_cli`, `email_cli`, `dir_cli`) VALUES
('CC0002', 'manuel', 'gonzales prada', 'M', '46789822', '956844787', '1040502030', 'manuelgp@hotmail.com', 'pampa '),
('CC0003', 'jorge carlo', 'vaca antay', 'M', '45987896', '99485765', '10203040501', 'jorge_vaca@hotmail.com', 'miramar e- 25 parte prima'),
('CC0004', 'jesus ricardo', 'romero lopez', 'M', '47464748', '053457690', '102030404', 'jesusrrl@hotmail.com', 'ciudad nueva j-4'),
('CC0005', 'luis carlos', 'sanchez peralta', 'M', '46788998', '053481804', '20202020202', 'luis@hotmail.com', 'nuevo ilo'),
('CC0007', 'luis', 'roque paredes', 'M', '46768990', '053788990', '20200100100', 'luis@hotmail.com', 'miramar e-18 parte prima'),
('CC0008', 'maria', 'rosales ginez', 'F', '47778902', '488990', '20100100030', 'maria@hotmail.com', 'villa del mar ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleboleta`
--

CREATE TABLE IF NOT EXISTS `detalleboleta` (
  `num_bol` varchar(10) NOT NULL,
  `cod_pro` varchar(6) NOT NULL,
  `des_pro` varchar(30) NOT NULL,
  `cant_pro` varchar(3) NOT NULL,
  `pre_unit` varchar(10) NOT NULL,
  `pre_venta` varchar(10) NOT NULL,
  KEY `num_bol` (`num_bol`),
  KEY `cod_pro` (`cod_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE IF NOT EXISTS `detallefactura` (
  `num_fac` varchar(10) NOT NULL,
  `cod_pro` varchar(6) NOT NULL,
  `des_pro` varchar(30) NOT NULL,
  `cant_pro` varchar(3) NOT NULL,
  `pre_unit` varchar(10) NOT NULL,
  `pre_tot` varchar(10) NOT NULL,
  KEY `num_fac` (`num_fac`),
  KEY `cod_pro` (`cod_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallefactura`
--

INSERT INTO `detallefactura` (`num_fac`, `cod_pro`, `des_pro`, `cant_pro`, `pre_unit`, `pre_tot`) VALUES
('00000008', 'CP0002', 'ron', '4', '15.00', '60.0'),
('00000008', 'CP0003', 'ariel', '5', '7.00', '35.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `num_fac` varchar(8) NOT NULL,
  `cod_cli` varchar(6) NOT NULL,
  `ruc_cli` varchar(11) NOT NULL,
  `subtotal` varchar(10) NOT NULL,
  `igv` varchar(40) NOT NULL,
  `total` varchar(20) NOT NULL,
  `fec_fac` varchar(20) NOT NULL,
  PRIMARY KEY (`num_fac`),
  KEY `cod_cli` (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_fac`, `cod_cli`, `ruc_cli`, `subtotal`, `igv`, `total`, `fec_fac`) VALUES
('00000001', 'CC0002', '1040502030', '67.0', '12.06', '79.06', '04/05/2013'),
('00000003', 'CC0004', '102030404', '66.0', '11.88', '77.88', '06/05/2013'),
('00000004', 'CC0003', '10203040501', '68.0', '12.24', '80.24', '08/05/2013'),
('00000005', 'CC0002', '1040502030', '45.5', '8.19', '53.69', '10/05/2013'),
('00000006', 'CC0004', '102030404', '24.0', '4.32', '28.32', '11/05/2013'),
('00000007', 'CC0005', '20202020202', '19.5', '3.51', '23.01', '11/05/2013'),
('00000008', 'CC0004', '102030404', '95.0', '17.1', '112.1', '14/09/2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `cod_pro` varchar(6) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `Stock` varchar(10) NOT NULL,
  `idtip` int(11) NOT NULL,
  PRIMARY KEY (`cod_pro`,`descripcion`),
  KEY `idtip` (`idtip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_pro`, `descripcion`, `precio`, `Stock`, `idtip`) VALUES
('CP0001', 'cocacola', '2.00', '20', 1),
('CP0002', 'ron', '15.00', '16', 3),
('CP0003', 'ariel', '7.00', '10', 3),
('CP0004', 'atun', '3.00', '20', 5),
('CP0005', '', '', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE IF NOT EXISTS `tipoproducto` (
  `idtip` int(11) NOT NULL AUTO_INCREMENT,
  `descrip` varchar(30) NOT NULL,
  PRIMARY KEY (`idtip`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idtip`, `descrip`) VALUES
(1, 'bebidas'),
(2, 'lacteos'),
(3, 'limpieza'),
(4, 'tragos'),
(5, 'abarrotes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tipousuario` varchar(30) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nick`, `password`, `tipousuario`) VALUES
(1, 'juan', 'juancho17', 'Administrador'),
(2, 'maria', 'peru', 'Invitado');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleboleta`
--
ALTER TABLE `detalleboleta`
  ADD CONSTRAINT `detalleboleta_ibfk_1` FOREIGN KEY (`num_bol`) REFERENCES `boleta` (`num_bol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleboleta_ibfk_2` FOREIGN KEY (`cod_pro`) REFERENCES `producto` (`cod_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`num_fac`) REFERENCES `factura` (`num_fac`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`cod_pro`) REFERENCES `producto` (`cod_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cod_cli`) REFERENCES `cliente` (`cod_cli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idtip`) REFERENCES `tipoproducto` (`idtip`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
