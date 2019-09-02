-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2019 a las 16:32:19
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `olimpiada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`nombre`) VALUES
('ADOLFO BALLIVIAN 1 '),
('ADVENTISTA ELENA G. DE WHITE'),
('ALCIRA CARDONA TORRICO 2'),
('ALEMAN'),
('AMERICANO'),
('ANGLO AMERICANO'),
('ANICETO ARCE SECUNDARIA'),
('ANTOFAGASTA'),
('ANTONIO JOSE DE SAINZ'),
('ARRIETA'),
('BETHANIA'),
('BOLIVIA'),
('BOLIVIA DE VINTO SECUNDARIA'),
('CARMEN GUZMAN DE MIER 1'),
('CATOLICO SAN FRANCISCO'),
('CENTRO DE INFORMATICA SAN MIGUEL'),
('COMIBOL ORURO 2'),
('DON BOSCO'),
('DONATO VASQUEZ'),
('EJERCITO NACIONAL SECUNDARIO'),
('EVANGELICO  WILLIAM BOOTH'),
('EVANGELICO FILADELFIA'),
('FERROVIARIA SECUNDARIA'),
('FRANCISCO FAJARDO 2'),
('GENOVEVA JIMENEZ'),
('GUIDO VILLAGÓMEZ SECUNDARIO'),
('HIJOS DEL SOL 2'),
('IGNACIO LEON  2'),
('ILDEFONSO MURGUIA'),
('INSCO SECUNDARIA'),
('JESUS DE NAZARETH  2'),
('JESUS-MARIA 2'),
('JHON FITZGERALD KENNEDY 2'),
('JHON FITZGERALD KENNEDY 3'),
('JORGE OBLITAS SECUNDARIA'),
('JOSE MARIA SIERRA GALVARRO'),
('JUAN LECHIN OQUENDO'),
('JUAN MISAEL SARACHO SECUNDARIA'),
('JUAN PABLO SECUNDARIA'),
('JUANA AZURDUY DE PADILLA SECUNDARIA'),
('LA KANTUTA 3'),
('LA SALLE'),
('LA SALLE TARDE'),
('LANI'),
('LOS ANGELES DE NAZARIA IGNACIA'),
('LUIS MARIO CAREAGA 2'),
('MARCELO QUIROGA SANTA CRUZ'),
('MARCOS BELTRAN AVILA SECUNDARIA'),
('MARIA QUIROZ SECUNDARIA'),
('MARISCAL SUCRE SECUNDARIO'),
('NACIONAL BOLIVIA'),
('NACIONAL MIXTO HUAJARA'),
('NACIONAL SAN JOSE'),
('NACIONES UNIDAS'),
('NINO QUIRQUINCHO FELIZ'),
('NUESTRA SENORA DEL SOCAVON 2'),
('ORURO SECUNDARIA'),
('OSCAR UNZAGA DE LA VEGA 2'),
('PANTALEON DALENCE SECUNDARIA'),
('REEKIE'),
('ROTARIA ORURO OTTAWA'),
('SAN IGNACIO DE LOYOLA'),
('SANTA MARÍA MAGDALENA POSTEL'),
('SANTA ROSA 2'),
('SEBASTIAN PAGADOR 2'),
('SIMÓN BOLÍVAR SECUNDARIA'),
('UNIÓN  BOLIVIA  JAPÓN'),
('VIRGEN DEL MAR 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idequipo` int(11) NOT NULL,
  `colegio` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreequipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `apaterno1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `amaterno1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `ci1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `celular1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correo1` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo1` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `fechanacimiento1` date NOT NULL,
  `apaterno2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `amaterno2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `ci2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `celular2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correo2` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo2` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `fechanacimiento2` date NOT NULL,
  `apaterno3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `amaterno3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `ci3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `celular3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correo3` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo3` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `fechanacimiento3` date NOT NULL,
  `nivel` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `turno` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `apaternores` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `amaternores` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombresres` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `celularres` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correores` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idequipo`, `colegio`, `celular`, `nombreequipo`, `apaterno1`, `amaterno1`, `nombres1`, `ci1`, `celular1`, `correo1`, `sexo1`, `fechanacimiento1`, `apaterno2`, `amaterno2`, `nombres2`, `ci2`, `celular2`, `correo2`, `sexo2`, `fechanacimiento2`, `apaterno3`, `amaterno3`, `nombres3`, `ci3`, `celular3`, `correo3`, `sexo3`, `fechanacimiento3`, `nivel`, `turno`, `apaternores`, `amaternores`, `nombresres`, `celularres`, `correores`, `fecha`) VALUES
(58, 'DONATO VASQUEZ ', '5255273', 'VAX-DV', 'Choque', 'Ruiz', 'Nair Valeria', '7381793 Or.', '61825350', 'nair_ch_r@outllok.co', 'MUJER', '0000-00-00', 'Flores', 'Anave', 'Ximena', '7381808 Or.', '75402108', 'ximefloranave@gmail.', 'MUJER', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-24 17:09:29'),
(59, 'DONATO VASQUEZ ', '5255273', 'ELGIKA-DV', 'Camata', 'Choque', 'Katerin Gina', '7388096 Or.', '70425464', 'Katerin.Camata@hotma', 'MUJER', '2005-08-01', 'Galindo', 'Mancilla', 'Grissel', '7382606 Or.', '69595128', 'babosita14@gmail.com', 'MUJER', '2014-10-00', 'Lazarte ', 'Escobar', 'Geraldine', '7284359 Or.', '77154954', 'geraldinemle11@gmail', 'MUJER', '2011-11-00', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-24 18:09:09'),
(60, 'DONATO VASQUEZ ', '5255273', 'CIA-DV', 'Chávez', 'Miranda', 'Ivón Dafne', '5779969 Or.', '75429890', 'ivondafcham@gmail.co', 'MUJER', '2030-05-01', 'Huarachi', 'Aiza', 'Claudia Cristal', '5746098 Or.', '78611587', 'Cristalaiza@gmail.co', 'MUJER', '2001-10-00', 'Rocha', 'Taquimallcu', 'Abigail', '7270521 Or.', '60419632', 'Babi.art.art@gmail.c', 'MUJER', '2001-06-01', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-24 18:32:11'),
(96, 'LA SALLE ', '52-60085', 'Dix - Sep', 'Arce', 'Moya', 'Isabel Noelia', '7299739', '69590616', 'arcemoyaisabelnoelia', 'MUJER', '0000-00-00', 'Bernal', 'Condori', 'Katherine Emily', '7263984', '76130870', 'katycat7b@gmail.com', 'MUJER', '0000-00-00', 'Zarzuela', 'Orosco', 'Alondra Mariana', '5766120', '72458540', 'alondramzo@hotmail.c', 'MUJER', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan José', '73804406', 'Jotamath10@hotmail.c', '2017-08-25 16:34:16'),
(100, 'LA SALLE ', '52-60085', 'come back', 'Lero', 'Alfaro', 'Shirley Selena', '7148705', '73823268', 'selelero123@gmail.co', 'MUJER', '2000-08-21', 'Zenteno', 'Garcia', 'Marian Maira', '7324047', '72333334', 'merycoreadelsur@gmai', 'MUJER', '2001-04-09', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan Jose', '73804406', 'jotamath10@hotmail.c', '2017-08-27 15:42:06'),
(103, 'LA SALLE ', '52-60085', 'Comando MCX', 'Lero', 'Alfaro', 'Aldrin Xavier', '7148708', '75421481', 'leroxavier7@gmail.co', 'HOMBRE', '2002-04-15', 'Coria', 'Cruz', 'Marcelo Nestor', '7329221', '68333127', 'coriacruzmarcelo1232', 'HOMBRE', '2002-07-01', 'Mena', 'Peñafiel', 'Cesar', '', '78616050', 'jazzer123jz@gmail.co', 'HOMBRE', '2002-06-01', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan Jose', '73804406', 'jotamath10@hotmail.c', '2017-08-27 16:48:24'),
(108, 'LA SALLE ', '88264', 'team liquid', 'Ramos', 'Valdez', 'Juan Pablo', '7287337', '67248224', 'jbdksos@gmail.com', 'HOMBRE', '2001-04-28', 'Barco', 'Nina', 'Alvaro marcelo', '8762524', '73839344', 'barco@gmail.com', 'HOMBRE', '2005-08-22', 'Garcia', 'Tapia', 'jhail', '6971032', '67208272', 'jhailm@gmail.com', 'HOMBRE', '2001-10-09', 'NIVEL 1', 'MAÑANA', 'valverde', 'quiroz', 'juan jose', '67556485', 'juanjo@gmail.com', '2017-08-27 23:02:53'),
(110, 'LA SALLE ', '52-60085', 'Marcianito', 'Rojas', 'Marquez', 'Cristhian Victor', '7375130', '68301052', 'cristhianvrojas@hotm', 'HOMBRE', '2002-10-25', 'Tarifa', 'Felipez', 'Adal Rodrigo', '7343222', '69603585', 'tarifaadal482@gmail.', 'HOMBRE', '2002-09-21', 'Flores', 'Carpio', 'Carlos Andrés', '7370285', '73832982', 'andreszondal@hotmail', 'HOMBRE', '2002-12-31', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan Jose', '73804406', 'andreszondal@gmail.c', '2017-08-27 23:37:23'),
(114, 'LA SALLE ', '52-60085', 'Signum Fidei', 'Chavez', 'Paco', 'Madeline Adriana', '7359506', '76157757', 'made_adri@outlook.co', 'MUJER', '0000-00-00', 'Condori', 'Loayza', 'Alejandra Andrea', '14080416', '65413922', 'alejandracondoriloay', 'MUJER', '0000-00-00', 'Vasquez', 'Cortez', 'Alison Andrea', '7279413', '77140191', 'alivascor@gmail.com', 'MUJER', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan José', '73804406', 'Jotamath10@hotmail.c', '2017-08-28 09:22:04'),
(115, 'LA SALLE ', '52-60085', 'los chicos de tu her', 'ROCABADO', 'GONZALES', 'PABLO JOSUE', '7289967', '60400895', 'pablichipichi@gmail.', 'HOMBRE', '2001-05-01', 'ALAVE', 'TORREZ', 'JOSE GABRIEL', '7397710', '60410600', 'josalave@gmail.com', 'HOMBRE', '2001-02-15', 'RAMOS', 'VALDEZ', 'JUAN PABLO', '7287337', '67248228', 'jbdksos@gmail.com', 'HOMBRE', '2001-04-28', 'NIVEL 1', 'MAÑANA', 'VALVERDE', 'QUIROZ', 'JUAN JOSE', '73804406', 'Jotamath10@hotmail.c', '2017-08-28 10:36:47'),
(116, 'LA SALLE ', '5260085', 'Sentynels ', 'Ancalle', 'Oporto', 'Roberto Rodrigo', '7321020', '75418487', 'ancallerobrod444@hot', 'HOMBRE', '2001-06-27', 'Escalier', 'Rufino ', 'Sebastian Freddy', '7405915', '74154256', 'Sedas456@outlook.com', 'HOMBRE', '2001-03-17', 'Aguirre', 'Condarco', 'Ricardo', '4404256', '67206211', 'ricardoaguirre365@gm', 'HOMBRE', '2000-10-14', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan Jose', '73804466', 'Jotamath@hotmail.com', '2017-08-28 11:37:42'),
(118, 'LA SALLE ', '52 60085', 'El tridente', 'Oros', 'Arce', 'Ricardo Sergio', '7367579', '75404448', 'ricardo370oros@gmail', 'HOMBRE', '2000-05-26', 'Vasquez', 'Chuquitanga', 'Kevin Armando', '7321166', '71851820', 'akevach@gmail.com', 'HOMBRE', '1999-12-03', 'Lero', 'Rodriguez', 'Kevin Alfredo', '5757969', '69585037', 'kevin280386@gmail.co', 'HOMBRE', '1999-08-14', 'NIVEL 2', 'MAÑANA', 'Valvarde', 'Quiroz', 'Juan Jose', '73804406', 'jmad10@hotmail.com', '2017-08-28 14:42:05'),
(119, 'DONATO VASQUEZ ', '5255273', 'PC-PROGRAMADORAS-DV', 'Alanez', 'Llave', 'Carla Lorena', '7370231 Or.', '72468229', 'carlaalanez22@gmail.', 'MUJER', '2006-07-01', 'Rodriguez', 'Huanca', 'Alejandra Slavenka', '5762036 Or.', '73829915', 'alepayne14@gmail.com', 'MUJER', '2006-12-00', 'Villarroel', 'López', 'Melany Viviana', '7321742 Or.', '69581049', 'melanievillarroel0@g', 'MUJER', '2019-12-01', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 15:37:18'),
(120, 'DONATO VASQUEZ ', '5255273', 'ARGIFUL-DV', 'Pillco', 'Lincho', 'Fulvia Andrea', '7284180 Or.', '75703433', 'andy.andreyta@hotmai', 'MUJER', '0000-00-00', 'Vargas ', 'Canaviri', 'Areli', '7367582 Or.', '72313113', 'arelita_vargas@hotma', 'MUJER', '2007-07-00', 'Medrano', 'Albino', 'Giselle Alejandra', '15028838 Or.', '78606593', 'alejandra.med@hotmai', 'MUJER', '2001-06-00', 'NIVEL 2', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 15:53:34'),
(121, 'DONATO VASQUEZ ', '5255273', 'CODICE-DV', 'BUSTAMANTE', 'ROBLES', 'KARLA DENIS', '7284205', '77140825', 'karlita.denis468@gma', 'MUJER', '2025-02-00', 'CANAVIRI', 'SANCHEZ', 'JESSICA DAYANA', '7413510', '61829915', 'jessita_dayan123@hot', 'MUJER', '0000-00-00', 'VARGAS', 'HURTADO', 'DANIA', '7317582', '68357078', 'dania1512vargas@gmai', 'MUJER', '2012-12-00', 'NIVEL 2', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 17:06:49'),
(122, 'JUAN PABLO SECUNDARIA', '25262326', 'NOVA XD', 'Calani', 'Choque', 'Jhonatan Rodrigo', '7338393 ', '69599275', 'Rampagecalani@gmail.', 'HOMBRE', '0000-00-00', 'Canaviri', 'Acapa', 'Dayana', '7332686', '78603803', 'dayiscanaviri16@gmai', 'MUJER', '0000-00-00', 'Calizaya', 'Mamani', 'Melvi Pamela', '7409562', '71182438', 'melvicalizaya10@gmai', 'MUJER', '0000-00-00', 'NIVEL 1', 'TARDE', 'Zenteno', 'Condori', 'Nelly', '65403580', 'prof.nzc@gmail,com', '2017-08-28 17:20:35'),
(123, 'JUAN PABLO SECUNDARIA', '25262326', 'ALFA', 'Huarachi', 'Laime', 'Brayan', '7402752 Or.', '76156692', 'brayanhuarachilaime@', 'HOMBRE', '0000-00-00', 'Pita', 'Peréz', 'Luz Guadalupe', '7347728 Or', '76158872', 'Lucesitapp29@gmail.c', 'MUJER', '0000-00-00', 'Mamani', 'Bustillos', 'Franz Denilson', '7302824 Or.', '67207825', 'franzdenil7@gmail.co', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'TARDE', 'Zenteno', 'Condori', 'Nelly', '65403580', 'prof.nzc@gmail,com', '2017-08-28 17:39:35'),
(124, 'DONATO VASQUEZ ', '5255273', 'ELEMENTRIX-DV', 'Cardenas', 'Soria', 'Mikaela', '7381753', '65415165', 'MiKaela.Cardenassori', 'MUJER', '2007-10-00', 'Atahuichi', 'Moller', 'Yara Maite', '7381776', '78607524', 'Yaramaitte016@gmail.', 'MUJER', '2019-03-01', 'Pozo ', 'Rios', 'Jhoselin', '14147164', '75412358', 'JennieKimrapstar@gma', 'MUJER', '2017-01-01', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 17:44:19'),
(125, 'DONATO VASQUEZ ', '5255273', 'SKT-DV', 'CHOQUE', 'MOLINA', 'BANI KEYLA', '7381755', '67227273', 'baniKeylacm@hotmail.', 'MUJER', '2011-12-00', 'TAPIA', 'TORRICO', 'SHEYLA', '7364969', '65436330', 'sheylatorrico15@hotm', 'MUJER', '2009-05-01', 'GONZALES', 'GÓMEZ', 'TATIANA ABRIL', '7382940', '72311201', 'edibertogonzalesleon', 'MUJER', '2003-03-01', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 17:54:08'),
(127, 'DONATO VASQUEZ ', '5255273', 'TRINOMIO-DV', 'Aquino', 'Flores', 'Senky Wara', '4066149 Or.', '75715646', 'warita_230_@hotmail.', 'MUJER', '0000-00-00', 'Condo', 'Chuca', 'Kelly Brissa', '7381791 Or.', '65403808', 'abrissa528@gmail.com', 'MUJER', '2026-02-00', 'Vásquez', 'Delgado', 'Marifer Jazmin', '7286763 Or.', '67253288', 'mariferjazmin@gmail.', 'MUJER', '2010-02-00', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 18:02:20'),
(129, 'DONATO VASQUEZ ', '5255273', 'GROOT-DV', 'POMA', 'ESTRADA', 'KADDY SILVIA', '13858532 OR.', '69592906', 'kaddysilvia@gmail.co', 'MUJER', '0000-00-00', 'EULATE', 'AGUILAR', 'MARIA RENEE', '12399294 OR.', '75403337', 'mariasos758@gmail.co', 'MUJER', '2017-10-00', 'CONDORI', 'ALVAREZ', 'MIZIEL', '7356445 OR.', '67233953', 'condori-207@hotmail.', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 18:09:56'),
(130, 'DONATO VASQUEZ ', '5255273', 'TURING-DV', 'QUELCA', 'VALVERDE', 'LUZ MARIA', '7324776 OR.', '60404130', 'marivoly24@gmail.com', 'MUJER', '2024-01-00', 'RODRIGUEZ', 'GUTIERREZ', 'SARONH MISIEL', '7379936 OR.', '65423424', 'jmqcmrg@gmail.com', 'MUJER', '0000-00-00', 'ALARCON', 'QUISPE', 'ANDREA', '7319629 OR.', '75709513', 'pandy_alarcon@hotmai', 'MUJER', '2031-07-00', 'NIVEL 1', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 18:28:27'),
(131, 'JUAN PABLO SECUNDARIA', '25262326', 'MEGATROLS', 'Villalobos', 'Sanchez', 'Benjamin', '7356411 Or.', '', 'benjaminsanchez6942@', 'HOMBRE', '0000-00-00', '', 'Mamani', 'Sharay Mercedes', '7318063 Or,', '75710518', 'sharaymamani1002@gma', 'MUJER', '0000-00-00', 'Rafael', 'Villca', 'Oriana Sol', '7336172 Or.', '68311992', 'rafaeloriana2002@gma', '', '0000-00-00', 'NIVEL 1', 'TARDE', 'Zenteno', 'Condori', 'Nelly', '65403580', 'prof.nzc@gmail.com', '2017-08-28 18:37:19'),
(132, 'DONATO VASQUEZ ', '5255273', 'DONATISTAS DE CORAZÓ', 'SOTO', 'MIRANDA', 'CASANDRA LIZ', '12677094 OR', '60412161', 'sotomirandacasandral', 'MUJER', '2012-09-00', 'LEON', 'BARTOLOME', 'JENNYFER', '7333967 OR', '68353879', 'jennyferleon363@gmai', 'MUJER', '2024-05-00', 'VASQUEZ', 'CABEZAS', 'JHOSSELYN MARIANA', '7346828 OR', '78612471', 'marianavasquez7860@g', 'MUJER', '2006-08-00', 'NIVEL 2', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 18:38:24'),
(133, 'DONATO VASQUEZ ', '5255273', 'NETWORK-DV', 'MIRANDA', 'ESPINOZA', 'PAMELA LAURA', '12901260 OR.', '60420422', 'pame.1d.blue@gmail.c', 'MUJER', '2014-01-00', 'PLAZA', 'GARVIZU', 'MARCELA', '7306513 OR.', '76146450', 'Chelis_229@hotmail.c', 'MUJER', '0000-00-00', 'SALARZAR', 'VASQUEZ', 'YAREN ALEJANDRA', '12740838 OR.', '73961787', 'yarenalejandrasb7@ho', 'MUJER', '2007-06-00', 'NIVEL 2', 'MAÑANA', 'Jiménez', 'Irahola', 'Miguel Ángel', '79411700', 'miguel_irahola@hotma', '2017-08-28 18:45:08'),
(140, 'LA SALLE ', '52-60085', 'Info La Salle', 'Tordoya', 'Taquichiri', 'Juan Rodrigo', '7317842', '79171648', 'jrttaquichiri@gmail.', 'HOMBRE', '2001-05-27', 'Cardenas', 'Yucra', 'Vladimir Rodrigo', '7404042', '68356532', 'rodrigocardenas@gmai', 'HOMBRE', '2001-07-22', 'Aguirre', 'Velez', 'Andres Fernando', '7424047', '72351072', '', 'HOMBRE', '2001-05-16', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan José', '73804406', 'jotamath10@hotmail.c', '2017-08-29 07:31:49'),
(141, 'EVANGELICO FILADELFIA', '5249768', 'Heloim', 'Cabezas ', 'Gutiérrez ', 'Alex Abraham ', '7312280', '60433940', 'Alexincr15@gmail.com', 'HOMBRE', '1999-11-14', 'Espinosa ', 'Vargas', 'Joel ', '7360555', '72480089 ', 'joelespro01@gmail.co', 'HOMBRE', '1999-11-18', 'Gonzáles', 'Calani', 'Ever Jaime ', '7453808', '75714623 ', 'Jaimegonzales6996@gm', 'HOMBRE', '1998-08-16', 'NIVEL 2', 'MAÑANA', 'Avedaño ', 'Pérez ', 'Ramiro ', '72456532', 'ramiroinformatic@gma', '2017-08-29 09:00:09'),
(142, 'JHON FITZGERALD KENNEDY 2 DON ', '5230402', 'teclitas', 'rios', 'rebozo', 'josselin', '7351141', '68304347', '', 'MUJER', '2001-08-19', 'ruiz ', 'rocha', 'manuel enrique', '7367297', '79426273', '', 'HOMBRE', '2002-05-05', 'condori', 'ajata', 'israel javier', '12741224', '69602509', '', 'HOMBRE', '2001-11-13', 'NIVEL 1', 'TARDE', 'colquehuanca', 'callata', 'raul', '72473621', 'raulcolque21088829@g', '2017-08-29 10:44:20'),
(143, 'JHON FITZGERALD KENNEDY 2 DON ', '5230402', 'CJB.NET', 'uria', 'uria', 'carlos daniel', '13423429', '69585088', '', 'HOMBRE', '2001-07-16', 'quinteros', 'pinto', 'jonathan gonzalo', '14424953', '69593400', '', 'HOMBRE', '2000-03-30', 'soliz', 'huanca', 'brayan rene', '14461423', '79413747', '', 'HOMBRE', '1999-10-18', 'NIVEL 1', 'TARDE', 'colquehuanca', 'callata', 'raul', '72473621', 'raulcolque21088829@g', '2017-08-29 11:03:49'),
(144, 'JHON FITZGERALD KENNEDY 2 DON ', '5230402', 'KATTE.NET', 'choque', 'villan', 'katherine Magdiel', '7369405', '78602763', '', 'MUJER', '2000-05-09', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 2', 'TARDE', 'colquehuanca', 'callata', 'raul', '72473621', 'raulcolque21088829@g', '2017-08-29 11:08:42'),
(145, 'EVANGELICO FILADELFIA', '5249768', 'Triple seven', 'Mamani', 'Luque ', 'Juan Fernando ', '7320942', '77143538', 'Elvasallo2@hotmail.c', 'HOMBRE', '1998-09-25', 'Cabezas ', 'Mamani ', 'José Daniel ', '12869440', '79425890', 'Jdan777@.Gmail.com', 'HOMBRE', '1999-11-27', 'Aguilar ', 'Rodríguez ', 'Pablo Rogelio ', '7349725', '77150841', 'aguilarrodriguezpabl', 'HOMBRE', '1999-08-08', 'NIVEL 2', 'MAÑANA', 'Avedaño', 'Pérez ', 'Ramiro ', '72456532', 'Ramiroinformatic@gma', '2017-08-29 11:13:22'),
(146, 'JHON FITZGERALD KENNEDY 2 DON ', '5230402', 'bosquitos.net', 'alonzo', 'maldonado', 'joel mauricio', '5728000', '71109180', '', 'HOMBRE', '2001-10-17', 'chambi', 'ramos', 'makenda leila', '7366124', '67251477', '', 'MUJER', '2002-07-16', 'colque', 'ayala', 'osbaldo', '8297483', '67238647', '', 'HOMBRE', '2001-03-08', 'NIVEL 1', 'TARDE', 'colquehuanca', 'callata', 'raul', '72473621', 'raulcolque21088829@g', '2017-08-29 11:44:56'),
(147, 'LA SALLE ', '52 60085', 'THE JOKERS', 'MORALES', 'ALARCON', 'DYLAN CARLOS', '7450320', '61661306', 'jannethdylan@gmail.c', 'HOMBRE', '2003-06-11', 'CHALLAPA', 'CONTRERAS', 'MEYER JAIRO', '5775979', '75717927', 'meyer.com@96gmail.co', 'HOMBRE', '2003-05-28', 'VILLCA', 'CONTRERAS', 'NAHUEL ESTEBAN', '7375002', '61811004', 'nahuel123owen@gmail.', 'HOMBRE', '2002-09-14', 'NIVEL 1', 'MAÑANA', 'VALVERDE', 'QUIROZ', 'JUAN JOSE', '73804406', 'jotamath10@hotmail.c', '2017-08-29 11:58:04'),
(148, 'LA SALLE ', '5260085', 'informatic slave', 'amusquivar', 'calustro', 'jorge leo', '', '76137898', 'jleonidas2001@hotmai', 'HOMBRE', '0000-00-00', 'canqui', 'bellott', 'Cristian javier ', '', '73843029', 'chiris999chiris@gmai', 'HOMBRE', '0000-00-00', 'severich', 'echalar', 'william eduardo', '', '69594336', 'willseverich@gmail.c', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'valverde', 'quiroz', 'juan jose', '73804406', 'jotamath10@hotmail.c', '2017-08-29 12:21:32'),
(151, 'JUAN MISAEL SARACHO SECUNDARIA', '52-54194', 'SPINER CLUB', 'VASQUEZ ', 'QUISPE', 'BRYAN EDWIN', '14461135', '68281442', 'vasquibe@gmail.com', 'HOMBRE', '2003-01-21', 'CANAVIRI', 'CALLE', 'JHONNY', '12869196', '73824432', 'jccubosrubick@gmail.', 'HOMBRE', '2003-02-18', 'CANCHARI ', 'FERNANDEZ', 'FREDDY ANDRES', '7266608', '67264014', 'cancharifro@gmail.co', 'HOMBRE', '2003-03-06', 'NIVEL 1', 'MAÑANA', 'SILVESTRE ', 'HURTADO', 'FREDDY FERNANDO', '74902797', 'FFSH79@hotmail.com', '2017-08-29 16:11:53'),
(153, 'LA SALLE TARDE ', '52-60086', 'Hacking', 'Mamani', 'Quispe', 'Abril Alejandra', '7329849', '67257071', 'alejandrabril2000@gm', 'MUJER', '0000-00-00', 'Chinche', 'Huiza', 'Alvaro Jhoel', '12429739', '75408748', 'alvaro2jhoel2@hotmai', 'HOMBRE', '0000-00-00', 'Aranibar', 'Fernandez', 'Youver Kenny', '7296324', '75715212', 'ykaf2000@gmail.com', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'TARDE', 'Colque', 'LLave', 'Jose Teodoro', '72469176', 'colquellave@gmail.co', '2017-08-29 16:21:26'),
(155, 'LA SALLE TARDE ', '52-62567', 'Excelsior', 'Gonzales ', 'Condori', 'José Alejandro', '7323693', '60415659', 'alejandrojose887@gma', 'HOMBRE', '0000-00-00', 'Santos ', 'Cladera ', 'Jorge Andrés', '7360565', '75412168', 'Santoscladera@gmail.', 'HOMBRE', '0000-00-00', 'Ajhuacho', 'Cardenas', 'Axel Daniel', '7350624', '61662355', 'axelajhuacho222@gmai', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'TARDE', 'Colque ', 'Llave', 'Jose Teodoro', '72469176', 'colquellave@gmail.co', '2017-08-29 16:40:23'),
(159, 'JUAN MISAEL SARACHO SECUNDARIA', '52-54194', 'GAME OF ROYAL ', 'CRUZ', 'FELIPE', 'ADHEMAR NESTOR ', '7385444', '76159218', 'ademarcruz@gmail.com', 'HOMBRE', '2001-10-30', 'TUNQUI', 'MURIEL', 'FREDDY LENNY', '7359257', '72496591', 'ftunqui466@gmail.com', 'HOMBRE', '2001-10-21', 'VILLALOBOS', 'TERRAZAS', 'RICKELMER', '12708705', '78619461', 'rickelmervillalobost', 'HOMBRE', '2001-09-21', 'NIVEL 1', 'MAÑANA', 'SILVESTRE ', 'HURTADO', 'FREDDY FERNANDO', '74902797', 'FFSH79@gmail.com', '2017-08-29 16:52:13'),
(162, 'JUAN MISAEL SARACHO SECUNDARIA', '52-54194', 'DELTA ', 'MENDOZA', 'CHOQUETICLLA ', 'MARVIN DANIEL', '7370203', '67220659', 'elmatematicomendoza@', 'HOMBRE', '2002-12-07', 'NINA ', 'AGUAYO', 'YAMIL DANIEL', '7354760', '60431014', 'yamilninaguayo@gmail', 'HOMBRE', '2003-01-01', 'JANCO', 'BARRIGA', 'ALEX', '12738631', '65434175', 'Jancoalex37@gamil.co', 'HOMBRE', '2003-01-06', 'NIVEL 1', 'MAÑANA', 'SILVESTRE', 'HURTADO', 'FREDDY FERNANDO', '74902797', 'FFSH79@hotmail.com', '2017-08-29 17:09:26'),
(163, 'EVANGELICO FILADELFIA', '5249768', 'Shalom ', 'Mendieta ', 'Hurtado ', 'Luis Ricardo ', '7293000', '69579741', 'Mendietahurtadol@gma', 'HOMBRE', '2000-03-30', 'Vargas', 'Rodríguez ', 'Sharon Gabriela ', '7353684', '75405015', '67261375.gv@gmail.co', 'MUJER', '2000-03-16', 'Zenteno ', 'Mendoza ', 'Alan Rolando', '7402360', '75709668', 'rolosanto10@gmail.co', 'HOMBRE', '2000-08-17', 'NIVEL 2', 'MAÑANA', 'Avedaño ', 'Pérez ', 'Ramiro Abel ', '72456532', 'ramiroinformatic@gma', '2017-08-29 21:33:06'),
(164, 'JESUS-MARIA 2  ', '5241507', 'LAS BEGAS SWAG', 'Garcia', 'Escobar', 'Jose Daniel', '7351439', '75715664', 'jdgg692lo@gmail.com', 'HOMBRE', '2000-10-30', 'Ramos', 'Chila', 'Roberto Carlos', '7351440', '60413474', 'lorbettoso123@gmail.', 'HOMBRE', '2001-04-30', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Rodrigo', 'Rodrigo', 'Juan Guillermo', '70417467', 'juguiro@gmail.com', '2017-08-30 07:14:30'),
(166, 'JESUS-MARIA 2  ', '5241507', 'LAS BEGAS SWAG', 'Garcia', 'Escobar', 'Jose Daniel', '7351439', '75715664', 'jdgg692lo@gmail.com', 'HOMBRE', '2000-10-30', 'Ramos', 'Chila', 'Roberto Carlos', '7351440', '60413474', 'lorbettoso123@gmail.', 'HOMBRE', '2001-04-30', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Rodrigo', 'Rodrigo', 'Juan Guillermo', '70417467', 'juguiro@gmail.com', '2017-08-30 07:14:32'),
(173, 'JESUS-MARIA 2  ', '5241507', 'Electrobits', 'Villegas', 'Apaza', 'Josue Alberto', '7396303', '73820850', 'josuealbert3@gmail.c', 'HOMBRE', '2000-10-02', 'Misericordia', 'Cortez', 'Brian Aldo', '7274470', '72324274', 'defini2uo27@gmail.co', 'HOMBRE', '2000-10-27', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Rodrigo', 'Rodrigo', 'Juan Guillermo', '70417467', 'juguiro@gmail.com', '2017-08-30 07:27:51'),
(175, 'JESUS-MARIA 2  ', '5241507', 'Zodiaco', 'Peredo', 'Vera', 'Nicolas Jeremy', '7351457', '71846236', 'nicolasjeremyperedov', 'HOMBRE', '2001-03-31', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Rodrigo', 'Rodrigo', 'Juan Guillermo', '70417467', 'juguiro@gmail.com', '2017-08-30 07:31:52'),
(178, 'JESUS-MARIA 2  ', '5241507', 'Villazon', 'Villarroel', 'Calderon', 'Alejandro Ruben', '7344580', '68326689', 'alejitoru@gmail.com', 'HOMBRE', '2000-03-27', 'Vargas', 'Cayoja', 'Pablo Daniel', '7351494', '73834277', 'danielvargasdv@yahoo', 'HOMBRE', '2000-04-04', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Rodrigo', 'Rodrigo', 'Juan Guillermo', '70417467', 'juguiro@gmail.com', '2017-08-30 07:36:21'),
(182, 'EVANGELICO FILADELFIA', '52-49768', 'Non abbiate paura', 'Villegas', 'Antonio', 'Raziel Milka', '8957277', '69577855', 'milka.raziel@gmail.c', 'MUJER', '2001-09-09', 'Calizaya', 'Quisper', 'Ximena Sarai', '7357579', '65411777', 'ximenitascq791@gmail', 'MUJER', '2001-09-07', 'Cruz', 'Mamani', 'Jhilmar', '7314550', '67258685', 'ramirin777b@gmail.co', 'HOMBRE', '2000-10-24', 'NIVEL 1', 'MAÑANA', 'Avendaño', 'Perez', 'Ramiro Abel', '72456532', 'ramiroinformatic@gma', '2017-08-30 12:26:10'),
(183, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLAONE', 'AGOSTOPA', 'CRUZ', 'DANAIT LEYNY', '', '79915570', '', 'MUJER', '0000-00-00', 'CHOQUE', 'REQUENA', 'KATERIN IRIS', '7315010', '76144168', '', 'MUJER', '0000-00-00', 'DIAZ', 'SANCHEZ', 'JESSICA', '', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 14:50:11'),
(184, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLATWO', 'HERBAS', 'BURGOA', 'CAMILA ASHLY', '7309751', '71103925', '', 'MUJER', '0000-00-00', 'MENDIZABAL', 'TUDELA', 'STEFANI PATRICIA', '7318242', '', '', 'MUJER', '0000-00-00', '', 'LEDEZMA', 'RAZIEL DIANA', '7318198', '69572341', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 14:55:00'),
(185, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLATHREE', 'GEMIO', 'LOPEZ', 'BRAYAN RODRIGO', '7307155', '61834422', '', 'HOMBRE', '0000-00-00', 'RIVERA', 'DIAZ', 'CESAR', '7311158', '72325844', '', 'HOMBRE', '0000-00-00', 'ROCHA', 'NINA', 'JORGE SAMUEL', '7367638', '65423741', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:02:11'),
(186, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLAFOUR', 'ALCALA', 'CASTRO', 'JHON EDGAR', '72944505', '76941522', '', 'HOMBRE', '0000-00-00', 'CARRIZO', 'CHOQUE', 'IVAN PABLO ROMAN', '7339259', '', '', 'HOMBRE', '0000-00-00', 'CHALLAPA', 'HURTADO', 'SANDY SARAI', '7418480', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:05:02'),
(187, 'JESUS-MARIA 2  ', '25241507', 'C1K', 'Ibarra', 'Quintanilla ', 'Jacqueline Victoria', '7410581', '75424433', 'Jaquicncowner@gmail.', 'MUJER', '2002-10-09', 'Ureña ', 'Chumacero', 'Fernando Samuel ', '7370753', '77150131', 'Samyurenach@gmail.co', 'HOMBRE', '2003-04-30', 'Vallejos', 'Ruiz ', 'Celeste Alejandra', '7369671', '73036569', 'celestemizuki@gmail.', 'MUJER', '2003-04-06', 'NIVEL 1', 'MAÑANA', 'Carata', 'Ramos', 'Mery Irma', '76158997', 'irma_mery123@hotmail', '2017-08-30 15:08:55'),
(188, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLAFIVE', 'CRUZ', 'HUAYLLA', 'CRISTIAN', '7318115', '72987732', '', 'HOMBRE', '0000-00-00', 'LOPEZ', 'SAJAMA', 'LUIS EDSON', '7263229', '73984870', '', 'HOMBRE', '0000-00-00', 'BARRIENTOS', 'CANAVIRI', 'ALAN GIOVANI', '7318168', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:10:26'),
(189, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLASIX', 'AJHUACHO', 'CONDORI', 'CRISTIAN JONATHAN', '', '', '', 'HOMBRE', '0000-00-00', 'ARIAS', 'BUSTOS', 'GABRIELA LAVINIA', '7318124', '61819247', '', 'MUJER', '0000-00-00', 'LIMA', 'MAGNE', 'CAHIL EMILIA', '7367632', '78615705', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:13:31'),
(190, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLASEVEN', 'CHAMBI', 'CHINCHE', 'MIGUEL ANGEL', '7367663', '75417254', '', 'HOMBRE', '0000-00-00', 'PEÑAFIEL', 'GONZALES', 'KARLA MAURA', '7346495', '72354122', '', 'MUJER', '0000-00-00', 'QUISPE', 'MAMANI', 'JOSE SANTOS', '7329223', '77145079', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:16:39'),
(191, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLAEIGHT', 'COLQUE', 'TARQUI', 'SAUL', '7368212', '61811974', '', 'HOMBRE', '0000-00-00', 'CONDORI', 'GOSBEL', 'GROVER ALEJANDRO', '7318141', '', '', 'HOMBRE', '0000-00-00', 'VALDEZ', 'ADRIAN', 'RODRIGO', '7367627', '73819073', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-30 15:20:22'),
(192, 'JUAN MISAEL SARACHO SECUNDARIA', '52-54194', 'ONLY THREE', 'MEDINA ', 'COLQUE', 'ERICK ALEJANDRO', '7369887', '77142064', 'alebastia123@gmail.c', 'HOMBRE', '2000-04-12', 'GARCIA ', 'CRUZ', 'JOSE LUIS', '7452102', '67228506', 'joseforeverangel1@gm', 'HOMBRE', '2000-08-03', 'MOLLO', 'CHOQUE', 'ARIEL', '5759497', '61661053', 'Aaarielelmollochoque', 'HOMBRE', '1999-09-16', 'NIVEL 2', 'MAÑANA', 'SILVESTRE ', 'HURTADO', 'FREDDY FERNANDO', '74902797', 'FFSH79@hotmail.com', '2017-08-30 16:32:12'),
(193, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLANINE', 'MARTINEZ', 'ANTEZANA', 'DENILSON MAURICIO', '', '69596139', '', 'HOMBRE', '0000-00-00', 'HURTADO', 'MIRANDA', 'JOEL ANDRES', '', '', '', 'HOMBRE', '0000-00-00', 'FUENTES', 'MERIDA', 'SAMUEL', '', '61663754', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-31 10:24:07'),
(194, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'WARNING', 'MARCA', 'NINA', 'HAROLD', '7386452', '76148977', 'harold.marca1234@gma', 'HOMBRE', '2003-12-28', 'CASPA', 'TICONA', 'CRISTIAN', '7400868', '67220931', 'cristiancaspa@outloo', 'HOMBRE', '2002-08-17', 'FLORES', 'LUNA ', 'JEAN CARLO', '13035694', '78605601', 'floresjean587@gmail.', 'HOMBRE', '2003-07-04', 'NIVEL 1', 'TARDE', 'TITICHIOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 10:28:06'),
(195, 'SAN IGNACIO DE LOYOLA ', '5256847', 'LOYOLATEN', 'RAMOS', 'PEREZ', 'BRENDA NAYELI', '', '68298143', '', 'MUJER', '0000-00-00', 'BASILIO', 'RAFAEL', 'MELINA BELEN', '7373933', '67211999', '', 'MUJER', '0000-00-00', 'FLORES', 'VALENCIA', 'PABLO ANDRES', '', '65405713', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'TORRICO', 'CALLE', 'JOSE FAUSTINO', '76140135', 'JSTORRICO@GMAIL.COM', '2017-08-31 10:29:10'),
(196, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'POWER', 'RAMOS', 'QUISPE', 'ARIEL OSMAR', '9359527', '78613733', 'ariosmarramos2017@gm', 'HOMBRE', '2003-05-08', 'BALDERRAMA ', 'VENTURA', 'CRISTIAN', '7386226', '69585747', 'jventurabalde55@gmai', 'HOMBRE', '2002-03-23', 'QUISPE', 'MITMA', 'FELIX ROBERTO', '7453784', '75407663', 'robertomitma@gmail.c', 'HOMBRE', '2002-04-30', 'NIVEL 1', 'TARDE', 'TITICHIOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 10:36:44'),
(197, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'DANGER', 'LUNA', 'ALVAREZ', 'MELIA', '7390889', '61820535', 'melunaalva@gmail.com', 'MUJER', '2003-01-09', 'FLORES', 'ROMAN', 'VERONICA DORIS', '7352570', '67251865', 'verofloresroman@gmai', 'MUJER', '2002-04-13', 'HUANCA', 'LAURA', 'ROMINA CECILIA', '7353391', '73832026', 'rominaceciliah@gmail', 'MUJER', '2003-08-05', 'NIVEL 1', 'TARDE', 'TITICHIOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 10:50:56'),
(198, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'HACKERS', 'LEON', 'MERCADO', 'HENDRYCKS', '7647995', '79230292', 'henlemar12@gmail.com', 'HOMBRE', '2002-04-12', 'CORTEZ', 'HUARACHI ', 'RIMBER', '7353350', '60428235', 'rimbercortez12@gmail', 'HOMBRE', '2003-08-15', 'PACHECO', 'OROPEZA', 'CRISTIAN ESTIVEN', '12837318', '68354869', 'checopacris91aj@gmai', 'HOMBRE', '2001-04-28', 'NIVEL 1', 'TARDE', 'TITICHIOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 11:01:20'),
(199, 'JESUS-MARIA 2  ', '5241507', 'WILSONS', 'ALVAREZ', 'LUCAS', 'ADRIAN AUSBERTO', '7351455', '76155798', 'aalvarezlucas@gmail.', 'HOMBRE', '0000-00-00', 'LOPEZ', 'GUZMAN', 'CRISTIAN', '12773857', '78609338', 'crislupi608@gmail.co', 'HOMBRE', '0000-00-00', 'PATIÑO', 'BLANCO', 'PEDROHUASCAR', '7351462', '78615613', 'bahamutparasyte@hotm', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'CARATA', 'RAMOS', 'MERY IRMA', '76158997', 'irma_mery@hotmail.co', '2017-08-31 16:43:28'),
(200, 'JUAN PABLO SECUNDARIA', '25262326', 'ARTIES', 'Gerónimo', 'Ramirez', 'Arturo Emerson', '7261361 Or.', '77147798', 'artiescorpion@gmail.', 'HOMBRE', '2001-11-08', 'Castro', 'Chambi', 'Abigail Isela', '7344264 Or.', '60404416', '', 'MUJER', '2002-05-10', 'Veliz', 'Rojas', 'Erick Javier', '13093263 Or.', '75427921', 'veroe-02@hotmail.com', 'HOMBRE', '2002-01-14', 'NIVEL 1', 'TARDE', 'Zenteno', 'Condori', 'Nelly', '65403580', 'prof.nzc@gmail.com', '2017-08-31 17:49:13'),
(201, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'JOCKERS', 'GUTIERREZ', 'OJEDA', 'KEVIN', '7334554', '77144873', 'kevju562@gmail.com', 'HOMBRE', '2000-01-24', 'CALIZAYA', 'CHALLAPA', 'KEVIN RONALD', '7367144', '78614328', 'hackevin.1000@gmail.', 'HOMBRE', '2000-05-31', 'FERNANDEZ', 'GUTIERREZ', 'EDUARDO', '7334225', '65410530', 'edwinju879@gmail.com', 'HOMBRE', '1999-11-12', 'NIVEL 2', 'TARDE', 'TITICHOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 18:36:20'),
(202, 'JOHN FITZGERALD KENNEDY 3  ', '5240219', 'INFORMATIC', 'MAMANI', 'YUGAR', 'EDWAR ALFREDO', '13093625', '61815284', 'alfredomamaniyugar@o', 'HOMBRE', '2000-04-04', 'PATTON', 'AYMA', 'MARIEL JHOVANA', '7267851', '76150609', 'mjpattona2000@gmail.', 'MUJER', '2000-07-08', 'BALDERRAMA', 'VENTURA', 'RUBEN ALEX', '7386225', '75422541', 'rbalderramaventura@g', 'HOMBRE', '1999-10-12', 'NIVEL 2', 'TARDE', 'TITICHOCA', 'LEON', 'MAYDA', '67234039', 'maywi07407@gmail.com', '2017-08-31 18:43:28'),
(203, 'JESUS-MARIA 2  ', '5241507', 'JESUS MARIA', 'BRACAMONTE', 'SANCHEZ', 'JORGE ANDRES', '5774826', '61835763', 'jorgeandresbracamont', 'HOMBRE', '0000-00-00', 'ESPRELLA', 'VALDEZ', 'RODRIGO RAUL', '5761929', '65992891', 'hairaxelpoderoso@gma', 'HOMBRE', '0000-00-00', 'IBARRA', 'QUINTANILLA', 'MARCO ABDIAS', '7410580', '75409636', 'marquito.maiq@gmail.', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'CARATA', 'RAMOS', 'MERY IRMA', '76158997', 'irma_mery123@hotmail', '2017-08-31 21:05:10'),
(205, 'JESUS-MARIA 2  ', '5241507', 'JESUS MARIA', 'BRACAMONTE', 'SANCHEZ', 'JORGE ANDRES', '5774826', '61835763', 'jorgeandresbracamont', 'HOMBRE', '0000-00-00', 'ESPRELLA', 'VALDEZ', 'RODRIGO RAUL', '5761929', '65992891', 'hairaxelpoderoso@gma', 'HOMBRE', '0000-00-00', 'IBARRA', 'QUINTANILLA', 'MARCO ABDIAS', '7410580', '75409636', 'marquito.maiq@gmail.', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'CARATA', 'RAMOS', 'MERY IRMA', '76158997', 'irma_mery123@hotmail', '2017-08-31 21:13:02'),
(206, 'SAN IGNACIO DE LOYOLA ', '52-80949', 'The encoders', 'Gutierrez', 'Mamani', 'Alexander Juan', '7318302', '72359379', 'alexandergutierrezma', 'HOMBRE', '0000-00-00', 'Magne', 'Andia', 'Noelia Debbie', '7367718', '70434787', 'debbie70magne@gmail.', 'MUJER', '0000-00-00', 'Perez ', 'Rocha', 'Patrizia Alabahama', '7316580', '69599435', 'patitoperezrocha@gma', 'MUJER', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 22:06:54'),
(207, 'SAN IGNACIO DE LOYOLA ', '52-80949', '', 'Barrientos', 'Canaviri', 'Brian Francisco', '12901437', '69601978', '', 'HOMBRE', '0000-00-00', 'Caceres', 'Salas', 'Juan José', '7293793', '73222418', 'jetjey007@gmail.com', 'HOMBRE', '0000-00-00', 'Altamirano', 'Roque', 'Fernando José', '7359786', '61812942', 'rorazonesdf@gmail.co', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 22:25:44'),
(208, 'SAN IGNACIO DE LOYOLA ', '52-80949', '', 'Gutierrez', 'Aramayo', 'Jhisel Alejandra', '7364571', '68067583', 'jhiselara@outlook.es', 'MUJER', '0000-00-00', 'Jacinto', 'García ', 'Maria Emilia', '7316843', '61834398', 'mariagarcia301099@gm', 'MUJER', '0000-00-00', 'Hermosa', 'Villca', 'Abel Dario', '4071851', '76143065', 'abeldariohermosavill', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 22:35:47'),
(209, 'SAN IGNACIO DE LOYOLA ', '52-80949', '', 'Veliz', 'Bueno', 'Lizbeth', '7328696', '78600668', 'Lizetbueno9@gmail.co', 'MUJER', '0000-00-00', 'Alvarado', 'Argandoña', 'Victor Luis', '7318227', '65436781', 'victoralvaradoargand', 'HOMBRE', '0000-00-00', 'Mamani', 'Hurtado', 'Ricardo Alexis', '7388800', '61825249', 'ricardoalexis.rainh@', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 22:45:04'),
(210, 'JESUS-MARIA 2  ', '25241507', 'Jesús María 2', 'Quinteros ', 'Guzman', 'Dilan Armando', '7333715 ', '70423544', 'dilan321qdj@gmail.co', 'HOMBRE', '2000-06-20', 'Cardozo', 'Medina', 'Katherine ', '10410272', '73827308', 'cardozo465@hotmail.c', 'MUJER', '2000-12-12', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Carata', 'Ramos', 'Mery Irma', '76158997', 'irma_mery123@hotmail', '2017-08-31 22:48:13'),
(211, 'JESUS-MARIA 2  ', '25241507', 'Jesús María 2', 'Quinteros ', 'Guzman', 'Dilan Armando', '7333715 ', '70423544', 'dilan321qdj@gmail.co', 'HOMBRE', '2000-06-20', 'Cardozo', 'Medina', 'Katherine ', '10410272', '73827308', 'cardozo465@hotmail.c', 'MUJER', '2000-12-12', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Carata', 'Ramos', 'Mery Irma', '76158997', 'irma_mery123@hotmail', '2017-08-31 22:48:19'),
(213, 'JESUS-MARIA 2  ', '25241507', 'Jesús María 2', 'Quinteros ', 'Guzman', 'Dilan Armando', '7333715 ', '70423544', 'dilan321qdj@gmail.co', 'HOMBRE', '2000-06-20', 'Cardozo', 'Medina', 'Katherine ', '10410272', '73827308', 'cardozo465@hotmail.c', 'MUJER', '2000-12-12', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Carata', 'Ramos', 'Mery Irma', '76158997', 'irma_mery123@hotmail', '2017-08-31 22:52:36'),
(216, 'ANTONIO JOSE DE SAINZ', '5274997', 'the end', 'DELGADO', 'AYALA', 'ALEX GEDEON', '6788215', '', '', 'HOMBRE', '0000-00-00', 'ARCE', 'MAMANI', 'JUAN DANIEL', '', '73846768', '', 'HOMBRE', '0000-00-00', 'ARANIBAR', 'MAMANI', 'JUAN DANIEL', '7450298', '77148367', '', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 22:54:07'),
(231, 'ANTONIO JOSE DE SAINZ', '5274997', 'LOS CUCHILLOS DOBLAD', 'ALDANA', 'TAQUICHIRI', 'BEYMAR JORGE', '13253830', '67078956', '', 'HOMBRE', '0000-00-00', 'ONOFRE', 'CUISARA', 'ADALID ALEJANDRO', ' ', '76150297', '', 'HOMBRE', '0000-00-00', 'LOPEZ', 'MERCADO', 'PABLO AVAD', '', '77156929', '', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:00:30'),
(232, 'ANTONIO JOSE DE SAINZ', '5274997', 'NTC', 'MAMANI', '', 'JUAN MARCELO', '9367727', '61195252', '', 'HOMBRE', '0000-00-00', 'ESPINOZA', 'MALLCU', 'JOEL', '', '75717481', '', 'HOMBRE', '0000-00-00', 'VILLCA', 'ITAMARI', 'IVAN', '', '77157839', '', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:05:01'),
(233, 'ANTONIO JOSE DE SAINZ', '5274997', 'BLACK', 'LAURA', 'BARRA', 'JOEL', '', '78618589', '', 'HOMBRE', '0000-00-00', 'OTTO', 'ROQUE', 'ISRAEL', '', '76155180', '', 'HOMBRE', '0000-00-00', 'GUTIERREZ ', 'CONDORI', 'ELOY', '', '69584029', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:11:24'),
(234, 'ANTONIO JOSE DE SAINZ', '5274997', 'CREAZY CLOWS', 'CHALO', 'GRANDILLER', 'JOSUE', '', '76157377', '', 'HOMBRE', '0000-00-00', 'CALIZAYA', 'CHALLAPA', 'BRAYAN', '', '71848361', '', 'HOMBRE', '0000-00-00', 'SALGADO', 'PEÑAFIEL', 'PEDRO', '', '72310083', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:17:01'),
(235, 'JESUS-MARIA 2  ', '5241507', 'JESUS MARIA 2', 'QUINTEROS', 'GUZMAN', 'DILAN ARMANDO', '7333715', '70423544', 'dilan321qdj@gmail.co', 'HOMBRE', '0000-00-00', 'CARDOZO', 'MEDINA', 'KHATERINE', '10410272', '73827308', 'cardozo78@hotmail.co', 'MUJER', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'CARATA', 'RAMOS', 'MERY IRMA', '76158997', 'irma_mery123@hotmail', '2017-08-31 23:20:36'),
(236, 'ANTONIO JOSE DE SAINZ', '5274997', 'GAME STARDS', 'CALLE', 'CHOQUE', 'IVAN ELIAS', '7314745', '68338821', '', 'HOMBRE', '0000-00-00', 'ZEPITA', 'CHAMBI', 'RAFAEL', '', '69579876', '', 'HOMBRE', '0000-00-00', 'FLORES', 'FLORES', 'HENRY', '', '78609912', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:21:17'),
(240, 'ANTONIO JOSE DE SAINZ', '5274997', 'LOS ROMANTISIS', 'MARCA', 'COSME', 'ELMER', '', '68320873', '', 'HOMBRE', '0000-00-00', 'CONTAJA', 'MAMANI', 'GUSTAVO', '', '72337115 ', '', 'HOMBRE', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:24:45'),
(242, 'ANTONIO JOSE DE SAINZ', '5274997', 'LOS BETITOS', 'HUANCA', 'IZQUIERDO', 'SAUL', '', '77150929', '', 'HOMBRE', '0000-00-00', 'CHOQUE', 'GONZALES', 'CRISTIAN', '', '68291779', '', 'HOMBRE', '0000-00-00', 'CALLE', 'CONDORI', 'MARK ANTONY', '', '68291779', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:32:57'),
(243, 'SAN IGNACIO DE LOYOLA ', '52-80949', '', 'Mendoza', 'Ayllón', 'Ilcen Abril', '8546757', '60416828', 'ilcen6828Mendoza@gma', 'MUJER', '0000-00-00', 'Valencia', 'Viracochea', 'Erika', '7318304', '', 'Erikitavalenciavi@gm', 'MUJER', '0000-00-00', 'Lopez', 'Sajama', 'Sergio Jhobner', '', '', 'destroyerts241@gmail', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 23:34:35'),
(245, 'ARRIETA  ', '5277558', 'Arrieta 2', 'MONROY', 'DAGA', 'KELLY FABIOLA', '4062668', '69580121', 'kelly2000moda@gmail.', 'MUJER', '1999-08-17', 'ARIAS', 'MONTECINOS', 'LAURA ALEJANDRA', '7321643', '73317810', 'ariaslaam.162@gmail.', 'MUJER', '2000-06-01', 'BLACUTT', 'BEDOYA', 'FRANCISCO', '12519837', '69586942', 'panchofbb@hotmail.co', 'HOMBRE', '1999-08-17', 'NIVEL 2', 'MAÑANA', 'Cruz', 'del Callejo', 'Israel', '70437326', 'israel_cdc@hotmail.c', '2017-08-31 23:38:31'),
(246, 'ANTONIO JOSE DE SAINZ', '5274997', 'LOS AMANTES DE TU HE', 'LLAMPA', 'VIRACA', 'LIMBER', '', '', '', 'HOMBRE', '0000-00-00', 'VARGAS', '', 'JOANY ', '', '', '', 'HOMBRE', '0000-00-00', 'CHOQUE', 'VIZA', 'KEVIN', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:38:42'),
(247, 'SAN IGNACIO DE LOYOLA ', '52-80949', '', 'Gutierrez', 'Aquino', 'Romulo Alexander', '7311340', '70432697', 'RomuloGutierrez1806@', 'HOMBRE', '0000-00-00', 'Condori', 'Choque', 'Luz Angela', '7394156', '78616917', 'lucero03choque@gmail', 'MUJER', '0000-00-00', 'Alanes', 'Colque', 'Joel Esteban', '', '79427401', '', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'Lucas', 'Laura', 'Ines Ivone', '72300453', 'inesivlula@gmail.com', '2017-08-31 23:43:17'),
(248, 'ANTONIO JOSE DE SAINZ', '5274997', 'NTIC', 'GARNICA', 'VICENTE', 'JOSE', '', '', '', 'HOMBRE', '0000-00-00', 'TAQUICHIRI', '', 'BORIS', '', '', '', 'HOMBRE', '0000-00-00', 'LAURA', '', 'JOSE', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:43:57'),
(251, 'ARRIETA  ', '5277558', 'Arrieta 4', 'Oropeza', 'García', 'Anabel', '736661', '72342342', 'anioropeza.82@gmail.', 'MUJER', '2001-05-28', 'Zolá', 'Mamani', 'Rodrigo', '7367554', '76144395', 'rodrigozola@gmail.co', 'HOMBRE', '2001-03-18', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Cruz', 'del Callejo', 'Israel', '70437326', 'israel_cdc@hotmail.c', '2017-08-31 23:45:59'),
(255, 'ARRIETA  ', '5277558', 'Arrieta 3', 'Mamani', 'Altamirano', 'José', '7375072', '75406303', 'gamerjoys@gmail.com', 'HOMBRE', '2000-09-19', 'Flores', 'Camacho', 'Alexander', '7319803', '71881242', 'falex8518@gmail.com', 'HOMBRE', '2001-11-15', 'Reynaga', 'Condori', 'Kevin', '7450300', '73066870', 'kevinreycondori@hotm', 'HOMBRE', '2001-09-15', 'NIVEL 1', 'MAÑANA', 'Cruz', 'del Callejo', 'Israel', '70437326', 'israel_cdc@hotmail.c', '2017-08-31 23:51:48'),
(256, 'ANTONIO JOSE DE SAINZ', '5274997', 'SUPER TEAM', 'VILLCA', 'FELIPE', 'ALEX JHON', '', '', '', 'HOMBRE', '0000-00-00', 'ROQUE', 'CALIZAYA', 'IVER IVAN', '', '', '', 'HOMBRE', '0000-00-00', 'CHIVI', 'VENTURA', 'JONATHAN', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:52:58'),
(258, 'ARRIETA  ', '5277558', 'Arrieta 1', 'Pillco', 'Apaza', 'Maria Alejandra', '7415343', '78600986', 'pillcomaria17@gmail.', 'MUJER', '2002-05-31', 'Flores', 'Ortiz', 'Nicole Sofia', '13125987', '75424324', 'carlove245@gmail.com', 'MUJER', '2001-10-19', 'Machaca', 'Guarachi', 'Victor Alberto', '7274038', '78611825', 'delnuevo45@gmail.com', 'HOMBRE', '1998-12-11', 'NIVEL 2', 'MAÑANA', 'Cruz', 'del Callejo', 'Israel', '70437326', 'israel_cdc@hotmail.c', '2017-08-31 23:58:04'),
(259, 'ARRIETA  ', '5277558', 'Arrieta 1', 'Pillco', 'Apaza', 'Maria Alejandra', '7415343', '78600986', 'pillcomaria17@gmail.', 'MUJER', '2002-05-31', 'Flores', 'Ortiz', 'Nicole Sofia', '13125987', '75424324', 'carlove245@gmail.com', 'MUJER', '2001-10-19', 'Machaca', 'Guarachi', 'Victor Alberto', '7274038', '78611825', 'delnuevo45@gmail.com', 'HOMBRE', '1998-12-11', 'NIVEL 2', 'MAÑANA', 'Cruz', 'del Callejo', 'Israel', '70437326', 'israel_cdc@hotmail.c', '2017-08-31 23:58:04'),
(260, 'ANTONIO JOSE DE SAINZ', '5274997', 'DISKE PAPAS', 'CONDORI', 'MAMANI', 'YESMAR', '', '76157326', '', 'HOMBRE', '0000-00-00', 'CHOQUE', 'COTAÑA', 'NESTOR', '', '67179609', '', 'HOMBRE', '0000-00-00', 'COPAJIRA', 'GARCIA', 'OMAR FREDDY', '7310074', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-08-31 23:58:54'),
(261, 'ANTONIO JOSE DE SAINZ', '5274997', 'GOLDEN CLUB', 'MAMANI', 'COLQUE', 'ISAIAS ABEL', '', '', '', 'HOMBRE', '0000-00-00', 'HUARACHI', 'VILLCA', 'ETSON', '', '', '', 'HOMBRE', '0000-00-00', 'COLQUE', 'DAVALOS', 'WEYMAR DENNIS', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-09-01 00:02:27'),
(262, 'ANTONIO JOSE DE SAINZ', '5274997', 'LOS CERVERTS', 'HUALLATA', 'CHALLGA', 'CARLOS', '', '', '', 'HOMBRE', '0000-00-00', 'AJHUACHO', 'POQUECHOQUE', 'OSCAR', '', '', '', 'HOMBRE', '0000-00-00', 'ALIAGA', 'FLORES', 'EMERSON BRANDO', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-09-01 00:05:40'),
(263, 'ANTONIO JOSE DE SAINZ', '5274997', 'ANPB', 'POMA ', 'BLANCO', 'SERGIO', '', '', '', 'HOMBRE', '0000-00-00', 'VIZALLA', 'MAMANI', 'SAMUEL', '', '', '', 'HOMBRE', '0000-00-00', 'CHOQUE', '', 'CARLOS', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'VELIZ', 'QUISPE', 'JUAN CARLOS', '72318998', 'jveliz15@hotmail.com', '2017-09-01 00:08:40'),
(264, 'JESUS DE NAZARETH  2 ', '5279280', 'Nazarenos 1', 'Velasquez', 'Choquecallata', 'Rafael Herland', '7349844', '72338213', 'rafa.ru693@gmail.com', 'HOMBRE', '2000-04-07', 'Choque', 'Lopez', 'Edwin', '7352409', '69604414', 'lopezedwinch@gmail.c', 'HOMBRE', '1999-07-13', 'Lopez', 'Felipe', 'Jonathan Marcos', '7316948', '68313747', 'jlopezfelipe9@gmail.', 'HOMBRE', '1999-04-25', 'NIVEL 2', 'MAÑANA', 'Tito', 'Calderón ', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 06:50:25'),
(265, 'JESUS DE NAZARETH  2 ', '5279280', 'Nazarenos 1', 'Blanco', 'Quispe', 'jhonny', '7352320', '79401523', 'jhonny.jbq@gmail.com', 'HOMBRE', '1999-11-13', 'Zenteno', 'Colquehuanca', 'Evelyn', '7322437', '68284656', 'zentenovell@gmail.co', 'MUJER', '2000-06-01', 'Ancasi ', 'Vino', 'Daniela Silvia', '7352434', '78602055', 'dalkdss2@hotmail.com', 'MUJER', '1999-09-07', 'NIVEL 2', 'MAÑANA', 'Tito', 'Calderón ', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 06:57:12'),
(266, 'JESUS DE NAZARETH  2 ', '5279280', 'Nazarenos 2', 'Blanco', 'Quispe', 'jhonny', '7352320', '79401523', 'jhonny.jbq@gmail.com', 'HOMBRE', '1999-11-13', 'Zenteno', 'Colquehuanca', 'Evelyn', '7322437', '68284656', 'zentenovell@gmail.co', 'MUJER', '2000-06-01', 'Ancasi ', 'Vino', 'Daniela Silvia', '7352434', '78602055', 'dalkdss2@hotmail.com', 'MUJER', '1999-09-07', 'NIVEL 2', 'MAÑANA', 'Tito', 'Calderón ', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 06:58:23'),
(267, 'JESUS DE NAZARETH  2 ', '5279280', 'Nazarenos 3', 'Ledezma ', 'Flores', 'Marco Fabio', '5759674', '68310896', 'marcofabioledezmaflo', 'HOMBRE', '2002-06-03', 'Aicahuara ', 'Choque', 'Milton Jonatan', '7356778', '67223133', 'jhonatanchoque014@gm', 'HOMBRE', '2002-09-14', 'Yucra', 'Paredez', 'Juan Daniel', '7370570', '60426545', 'charizarelejuan@gmai', 'HOMBRE', '2002-03-26', 'NIVEL 1', 'MAÑANA', 'Tito', 'Calderón ', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 07:04:47'),
(268, 'LA SALLE ', '52-60085', 'come back', 'Ramos', 'Valdez', 'Juan Pablo', '7287337', '67248224', 'jbdksos@gmail.com', 'HOMBRE', '2001-04-28', 'Lero', 'Alfaro', 'shirley Selena', '7148705', '73839344', 'selelero123@gmail.co', 'MUJER', '0000-00-00', 'Zenteno', 'Garcia', 'Marian Maira', '7324047', '72333334', 'merycoreadelsur@gmai', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Valverde', 'Quiroz', 'Juan Jose', '73804406', 'jotamath10@hotmail.c', '2017-09-01 07:20:30'),
(270, 'JUAN PABLO SECUNDARIA', '25262326', 'jpstudents', 'gonzales', 'davalos', 'aelin gabriela', '7316624', '78617237', 'gaby123davalos@gmail', 'MUJER', '2000-08-31', 'lopez', 'quiroga', 'wilfran', '13345977', '65434061', 'wquiroga123@Gmail.co', 'HOMBRE', '2000-06-18', 'vasquez', 'llave', 'alex cristhian', '7354824', '70415307', '', 'HOMBRE', '2000-05-22', 'NIVEL 1', 'TARDE', 'rojas', 'vargas', 'jaime gonzalo', '75414314', 'g_rojasv@hotmail.com', '2017-09-01 08:50:28'),
(271, 'JUAN PABLO SECUNDARIA', '25262326', 'jpteam', 'apio', 'choque', 'johanna danitza', '7355000', '72305161', 'johannadanitza2@Gmai', 'MUJER', '2001-07-17', 'canaviri', 'lutino', 'mijail', '5928763', '67230692', 'mijailcanavirilutino', 'HOMBRE', '2000-04-20', 'valente', 'huaygua', 'cristhian javier', '7310555', '', '', 'HOMBRE', '2000-08-24', 'NIVEL 1', 'TARDE', 'rojas', 'vargas', 'jaime gonzalo', '75414314', 'g_rojasv@hotmail.com', '2017-09-01 08:59:00'),
(272, 'ORURO SECUNDARIA  ', '52-74002', 'LICEISTAS', 'CASTRO', 'MAMANI', 'JIMENA', '7375903', '5274002', 'jimena-sol@outlook.c', 'MUJER', '2000-08-16', 'GUTIERREZ', 'CHOQUE', 'ELBA', '13253349', '75409085', '75409085', 'MUJER', '1999-10-30', 'SANTOS', 'ROMERO', 'PAOLA GANDIVA', '7367244', '5274002', 'nekoloidmiau@gmail.c', 'MUJER', '1999-06-20', 'NIVEL 2', 'MAÑANA', 'BUSTOS', 'CISNEROS', 'MIRIAM SARA', '68333006', 'miriambuscis@hotmail', '2017-09-01 09:02:30'),
(273, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil1', 'CHAMBI', 'CONDER', 'KEVIN BEIMAR', '7318157', '5254600', 'kevin_chambi@yahoo.c', 'HOMBRE', '0000-00-00', 'HUARACHI', 'GUTIERREZ ', 'NAYRA', '7367651', '72337739', 'eduardo.marzevillca@', 'MUJER', '0000-00-00', 'TICONA', 'BOHORQUEZ', 'MIGUEL IGNACIO', '7318156', '72359477', 'mbohorquez40@yahoo.c', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 09:35:35'),
(274, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil2', 'ARIAS', 'COCA', 'JHORDY RAMIRO', '', '', 'eduardo.marzevillca@', 'HOMBRE', '0000-00-00', 'BOZO', 'COLQUE', 'ALEXIS LUIS', '7401711', '', 'eduardo.marzevillca@', 'HOMBRE', '0000-00-00', 'CHOQUE', 'ZENTENO', 'ANGEL DAVID', '7400011', '', 'eduardo.marzevillca@', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 09:41:30');
INSERT INTO `equipo` (`idequipo`, `colegio`, `celular`, `nombreequipo`, `apaterno1`, `amaterno1`, `nombres1`, `ci1`, `celular1`, `correo1`, `sexo1`, `fechanacimiento1`, `apaterno2`, `amaterno2`, `nombres2`, `ci2`, `celular2`, `correo2`, `sexo2`, `fechanacimiento2`, `apaterno3`, `amaterno3`, `nombres3`, `ci3`, `celular3`, `correo3`, `sexo3`, `fechanacimiento3`, `nivel`, `turno`, `apaternores`, `amaternores`, `nombresres`, `celularres`, `correores`, `fecha`) VALUES
(275, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil3', 'CHALLAPA', 'VARGAS', 'CARLOS ALEXANDER', '7284380', '', '', 'HOMBRE', '0000-00-00', 'FLORES', 'VARGAS', 'IVAR MOSHE', '7364526', '', '', 'HOMBRE', '0000-00-00', 'TAPIA', 'FERNANDEZ', 'SEBASTIAN SAMUEL', '7367601', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '64508101', 'eduardo.marzevillca@', '2017-09-01 09:46:35'),
(276, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil4', 'CHOQUE', 'ZENTENO', 'LAURA ISABEL', '7400010', '', '', 'MUJER', '0000-00-00', 'HERRERA', 'FLORES', 'LUCEYDA', '7318130', '', '', 'MUJER', '0000-00-00', 'RIVERA', 'FLORES', 'BRENDA VIRGINIA', '7294695', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 09:50:59'),
(277, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil5', 'CARVAJAL', 'FLORES', 'DAFNE JESSICA', '7386851', '', '', 'MUJER', '0000-00-00', 'MURIEL', 'JAMACHI', 'JHERESA MISHEL', '7370270', '', '', 'MUJER', '0000-00-00', 'RIVERA', 'DIAZ', 'RILIAN BELEN', '7364522', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 09:56:46'),
(278, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil6', 'ALANEZ ', 'AGUILAR', 'NATALY PAOLA', '7368506', '', '', 'MUJER', '0000-00-00', 'CUCHO', 'PINTO', 'VALERIA', '7337788', '', '', 'MUJER', '0000-00-00', 'GUTIERREZ', 'ARAMAYO', 'JOHANA MICHELLE', '7364372', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 10:00:28'),
(279, 'SAN IGNACIO DE LOYOLA ', '5256847', 'sil7', 'ANDRADE', 'FERNANDEZ', 'ADALIA AIDAN', '7397981', '', '', 'HOMBRE', '0000-00-00', 'VILLCA', 'MAMANI', 'SERGIO OSCAR', '7367619', '', '', 'HOMBRE', '0000-00-00', 'ZENTENO', 'GUTIERREZ', 'JAMIL WILFREDO', '7416805', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'MARZE', 'VILLCA', 'EDUARDO RAMIRO', '65408101', 'eduardo.marzevillca@', '2017-09-01 10:05:18'),
(280, 'PANTALEON DALENCE SECUNDARIA ', '5241256', 'STARS OP', 'RIOS', 'CRUZ', 'ALEXANDRA WENDY', '13983920', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'PEREZ', 'CALIZAYA', 'SARA NICOLE', '7369810', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'GUTIERREZ', 'FLORES', 'LAURA YAMEL', '7366768', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'HERBAS', 'ASTETE', 'FELIX', '74148132', 'feliquito@hotmail.co', '2017-09-01 10:13:28'),
(281, 'PANTALEON DALENCE SECUNDARIA ', '5241256', 'EQUIPO BL', 'QUISBERT', 'MARTINEZ', 'ITATI MARITZA', '7366613', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'LOPEZ', 'VILLEGAS', 'PAOLA NICOL', '7293467', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'MOSCOSO', 'VELASQUEZ', 'CARMEN KAREN', '7356794', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'HERBAS', 'ASTETE', 'FELIX', '74148132', 'feliquito@hotmail.co', '2017-09-01 10:17:45'),
(282, 'PANTALEON DALENCE SECUNDARIA ', '5241256', 'CASSIOPEIA', 'MAMANI', 'ZENTENO', 'ABIGAIL', '7396881', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'MOLLO', 'MAMANI', 'CARLA LORENA', '7363050', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'AYAVIRI', 'SALINAS', 'LIZBETH', '7287774', '74148132', 'feliquito@hotmail.co', 'MUJER', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'HERBAS', 'ASTETE', 'FELIX', '74148132', 'feliquito@hotmail.co', '2017-09-01 10:24:02'),
(283, 'SEBASTIAN PAGADOR 2 ', '5280425', 'SP2_6AD', 'CUTIÑA', 'FLORES', 'JAIME OCTAVIO', '7362962', '78618892', 'GAROLA414yahoo.es', 'HOMBRE', '1999-12-04', 'LUIS', 'LIENDRO', 'CESAR', '7328808', '76149968', 'liendroluies@gmail,c', 'HOMBRE', '2001-03-07', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'LARICO', 'ALVAREZ', 'GABY ROXANA', '71840015', 'GAROLA414@yahoo.es', '2017-09-01 11:25:29'),
(284, 'SEBASTIAN PAGADOR 2 ', '5280425', 'SP2_6AC', 'BALBOA', 'BALBOA', 'GAMANIEL FERNANDO', '7407190', '76134812', 'balboa123@hotmil.com', 'HOMBRE', '2000-07-07', 'MARCA', 'BARRETO', 'ALEX', '7361777', '71840015', 'garola414@yahoo.es', 'HOMBRE', '2000-05-24', 'LEON', 'QUIÑONES', 'ALAIN GUIDO', '7399800', '695915389', 'leonalain123@gmail.c', 'HOMBRE', '2000-11-29', 'NIVEL 2', 'MAÑANA', 'LARICO', 'ALVAREZ', 'GABY ROXANA', '71840015', 'GAROLA414@yahoo.es', '2017-09-01 11:36:53'),
(285, 'SEBASTIAN PAGADOR 2 ', '5280425', 'SP2_4A_3CD', 'ADUVIRI', 'CONDORI', 'IVAN', '7420468', '654127065', 'GAROLA414@yahoo.es', 'HOMBRE', '2001-01-28', 'MOLLO', 'ARO', 'MARIANA ISABEL', '7403695', '75408086', 'timoteomollo@gamial.', 'MUJER', '2002-11-23', 'VASQUEZ ', 'CALLE', 'BRAYAN', '7308298', '76136129', 'brayan324@gmail.com', 'HOMBRE', '2002-10-23', 'NIVEL 1', 'MAÑANA', 'LARICO', 'ALVAREZ', 'GABY ROXANA', '71840015', 'GAROLA414@yahoo.es', '2017-09-01 11:56:34'),
(286, 'SEBASTIAN PAGADOR 2 ', '5280425', 'SP2_4A_3CD', 'QUINTEROS', 'URGARTE', 'MARCELO', '7373881', '63659721', 'marcelougarte@gmail.', 'HOMBRE', '2002-08-19', 'MAMANI', 'YAPURA', 'EVER', '', '71186473', 'garola414@yahoo.es', 'HOMBRE', '2004-03-25', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'LARICO', 'ALVAREZ', 'GABY ROXANA', '71840015', 'GAROLA414@yahoo.es', '2017-09-01 12:03:16'),
(287, 'SEBASTIAN PAGADOR 2 ', '5280425', 'SP2_4C', 'GUTIERREZ', 'RIOS', 'JAVIER', '7363175', '75701742', 'XavierGutierrez@gmai', 'HOMBRE', '2001-11-20', 'MENDOZA', 'SAAVEDRA', 'ANGELO RUBEN', '7364846', '77142034', 'ams24jms@gmail.com', 'HOMBRE', '2001-09-09', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'LARICO', 'ALVAREZ', 'GABY ROXANA', '71840015', 'GAROLA414@yahoo.es', '2017-09-01 12:13:22'),
(288, 'JESUS-MARIA 2  ', '52-41507', 'ESPARTA', 'Ibarra', 'Quintanilla', 'Marco Abdias', '7410580', '75409636', 'marquito.maiq@gmail.', 'HOMBRE', '2000-06-04', 'Bracamonte', 'Sanchez', 'Jorge Andres', '5774826', '61835763', 'jorgeandresbracamont', 'HOMBRE', '2000-09-06', 'Esprella', 'Valdez', 'Rodrigo Raul', '5761929', '69592891', 'hairaxelpoderoso@gma', 'HOMBRE', '2001-02-24', 'NIVEL 1', 'MAÑANA', 'Carata', 'Ramos', 'Mery Irma', '76158997', 'irma_mery123@hotmail', '2017-09-01 12:23:35'),
(290, 'JUAN LECHIN OQUENDO ', '72327102', 'inforchin', 'TORRE', 'VASQUEZ', 'ITALO MANUEL', '9121526', '67220934', 'italotorre@gmail.com', 'HOMBRE', '2003-02-26', 'ADRIAN', 'PAQUI', 'JHENNRY', '', '74143780', 'italotorre@gmail.com', 'HOMBRE', '2002-12-03', 'TICOLLANO', 'LAIME', 'MARIELA', '', '78280498', 'jimmy_10_13@hotmail.', 'MUJER', '2001-10-26', 'NIVEL 1', 'TARDE', 'GARECA', 'IBAÑEZ', 'JIMMY', '61665305', 'jimmy_10_13@hotmail.', '2017-09-01 15:03:00'),
(291, 'JESUS DE NAZARETH  2 ', '5279280', 'Naz1', 'Choque', 'Callapa', 'Karol', '7352371', '72352533', 'karol2712001@gmail.c', 'MUJER', '2001-01-27', 'Pava', 'Flores', 'Rosalia', '7352403', '68358482', 'jamesinformatica2012', 'MUJER', '2000-09-05', 'Pocori', 'Garvisu', 'Dulce Maria', '7352487', '69594166', 'jamesinformatica2012', 'MUJER', '2000-09-12', 'NIVEL 1', 'MAÑANA', 'Tito', 'Calderón', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 16:20:29'),
(292, 'JESUS DE NAZARETH  2 ', '5279280', 'Naz2', 'Flores', 'Soliz', 'Juan Claudio', '5778403', '78833498', 'flores soliz23@gmail', 'HOMBRE', '0000-00-00', 'Quispe', 'Garcia ', 'Lizeth Gabriela', '7352383', '60425514', 'jamesinformatica2012', 'MUJER', '2000-07-31', 'July', 'Herrera', 'Fernando Junior', '7322886', '60438859', 'jamesinformatica2012', 'HOMBRE', '2000-07-05', 'NIVEL 1', 'MAÑANA', 'Tito', 'Calderón', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 16:24:14'),
(293, 'JESUS DE NAZARETH  2 ', '5279280', 'Naz3', 'Chambi', 'Guevara', 'Delia', '372664', '67205142', 'devichambi51@gmail.c', 'MUJER', '2000-08-05', 'Tola', 'Lutre', 'Alizon', '7420960', '60409017', 'alissmarkina123@gmai', 'MUJER', '2000-09-25', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Tito', 'Calderón', 'James Gustavo', '68339556', 'jamesinformatica2012', '2017-09-01 16:32:33'),
(294, 'JUANA AZURDUY DE PADILLA SECUN', '52-51805', 'PADILLA \"1\"', 'URIBE', 'DELGADO', 'MIRIAM ALEJANDRA', '7371121', '75705066', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'MARTINES', 'QUISPE', 'BRISA PAOLA', '7371102', '67227011', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'ESCUDERO ', 'VILLCA', 'REBECA HELEN', '7354486', '71105475', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'NIVEL 2', 'TARDE', 'FLORES', 'PORTILLO', 'LUIS', '77148044', 'luisfloresportillo20', '2017-09-01 17:00:50'),
(295, 'JUANA AZURDUY DE PADILLA SECUN', '52-51805', 'PADILLA \"2\"', 'APAZA', 'FLORES', 'AIDA', '7363077', '74158083', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'GUACHALLA', 'VINO', 'MARIA JOSE', '7350839', '69597257', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'LOPEZ', 'COTA', 'JESICA ESTRELLA', '5768273', '60410002', 'luisfloresportillo20', 'MUJER', '0000-00-00', 'NIVEL 1', 'TARDE', 'FLORES', 'PORTILLO', 'LUIS', '77148044', 'luisfloresportillo20', '2017-09-01 17:08:29'),
(296, 'MARISCAL SUCRE SECUNDARIO  ', '52-51736', 'SUCRE 1', 'CAYOJA', 'LIZARAZU', 'LUIS', 'SN', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'MAMANI', 'ALVARES', 'JOEL', 'SN', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'ZABALETA', 'ALCANTARA', 'RAFAEL', 'SN', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'FLORES', 'PORTILLO', 'LUIS', '77148044', 'luisfloresportillo20', '2017-09-01 17:16:10'),
(297, 'ALEMAN', '5255828', 'eins', 'CUIZAGA', 'RODRIGUEZ', 'HORACIO', '', '', '', 'HOMBRE', '0000-00-00', 'CALDERON', 'VIDAURRE', 'ALEJANDRO', '', '', '', 'HOMBRE', '0000-00-00', 'GAMARRA ', 'HUANCA', 'SERGIO', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'BUSTOS', 'SANDOVAL', 'CARLOS', '75700123', 'cebs40@msn.com', '2017-09-01 21:34:24'),
(298, 'ALEMAN', '5255828', 'zwei', 'RODRIGUEZ', 'CONDORI', 'KEILA', '', '', '', 'MUJER', '0000-00-00', 'MANCILLA', 'AGUILAR', 'JOAQUIN', '', '', '', 'HOMBRE', '0000-00-00', 'RIVERA', 'CHAVEZ', 'RENZO', '', '', '', 'HOMBRE', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'BUSTOS', 'SANDOVAL', 'CARLOS', '75700123', 'cebs40@msn.com', '2017-09-01 21:41:58'),
(299, 'ALEMAN', '5255828', 'DREI', 'CHOCAITA', 'MARZE', 'VALERIA', '', '', '', 'MUJER', '0000-00-00', 'GONZALES', 'BAPTISTA', 'VALERIA', '', '', '', 'MUJER', '0000-00-00', 'TERRAZAS', 'LOZANO', 'DANIELA', '', '', '', 'MUJER', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'BUSTOS', 'SANDOVAL', 'CARLOS', '75700123', 'cebs40@msn.com', '2017-09-01 21:51:28'),
(300, 'ALEMAN', '5255828', 'vier', 'DELGADILLO', 'CESPEDES', 'VALERIA', '', '', '', 'MUJER', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', '', 'BUSTOS', 'SANDOVAL', 'CARLOS', '75700123', 'cebs40@msn.com', '2017-09-01 21:56:25'),
(302, 'MARISCAL SUCRE SECUNDARIO  ', '51-51736', 'SUCRE \"2\"', 'QUELALE', 'CONTRERAS', 'DANIEL GUSTAVO', '7410144', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'BALTAZAR', 'RIVAS', 'ALVARO', '12464376', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'MORALES', 'FERNANDEZ', 'HECTOR', '7359076', '77148044', 'luisfloresportillo20', 'HOMBRE', '0000-00-00', 'NIVEL 2', 'MAÑANA', 'FLORES ', 'PORTILLO', 'LUIS ', '77148044', 'luisfloresportillo20', '2017-09-04 09:52:42'),
(305, 'ARRIETA  ', '77558', 'BIT', 'QUIROGA', 'CALLEJAS', 'JÉSSICA RAQUEL', '', '65418926', 'jessicaraquelquiroga', 'MUJER', '2001-03-02', 'ALVAREZ', 'GUTIERREZ', 'ERIK ALEJANDRO', '7351808', '75412821', 'gamon1917@gmail.com', 'HOMBRE', '2003-10-31', 'PABLO', 'CONDORI', 'APRIL ADRIANA', '7337429', '72472132', 'aprilpablo5@gmail.co', 'MUJER', '2004-04-03', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 18:12:03'),
(306, 'ARRIETA  ', '77558', 'PROGRAMMER GIRLS', 'COCA', 'BOHORQUEZ', 'ALEIDA SARAÍ', '7380644', '69597306', 'cocaaleida4@gmail.co', 'MUJER', '2002-10-24', 'GALLARDO', 'MORALES', 'ANDREA MIRIAM', '7286531', '68323762', 'gallardoandrea201@gm', 'MUJER', '2003-03-23', 'MONROY', 'DAGA', 'MELISA SHEILA', '5745214', '73836854', 'rosaliadagamonroy@gm', 'MUJER', '2003-04-30', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 18:25:19'),
(307, 'ARRIETA  ', '77558', 'BYTE', 'CARRASCO', 'MÉRIDA', 'KELLY', '', '69585068', 'kellycarrascomerida0', 'MUJER', '2002-09-09', 'MIRANDA', 'ARAMAYO', 'DANERY ALEJANDRA', '', '75423286', 'lourdes72mb@gmail.co', 'MUJER', '2002-08-30', 'GERÓNIMO', 'MOLLO', 'ANDREA VALERIA', '', '77154659', 'andreageromollo@gmai', 'MUJER', '2002-11-02', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 18:35:34'),
(308, 'ARRIETA  ', '77558', 'ADA', 'COCA', 'ARÉVALO', 'JACKELINE SONED', '7363164', '79409995', 'jackisitacoca@gmail.', 'MUJER', '2002-05-14', 'RIOS', 'FLORES', 'CRISTINA NICOLE', '', '69631951', 'f7359039@gmail.com', 'MUJER', '2002-03-12', 'VILLCA', 'RAFAEL', 'MAYA GERALDINE', '', '65404505', 'lizeth.mamani723050@', 'MUJER', '2003-02-10', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 19:01:03'),
(309, 'ALEMAN', '55828', 'ENIAC', 'MIRANDA', 'GONZALES', 'ALVARO JAVIER', '7371208', '72305027', 'almirgo@gmail.com', 'HOMBRE', '2003-08-30', 'RIVERA', 'ZEGARRA', 'ISMAEL', '5754493', '72314157', 'ismacho94@gmail.com', 'HOMBRE', '2002-06-12', 'RIVERA', 'ZEGARRA', 'JOAQUIN', '5754494', '75418990', 'joacoblackton8@gmail', 'HOMBRE', '2002-06-12', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 19:47:12'),
(310, 'ALEMAN', '55828', 'LISA', 'MOLLO', 'BRACAMONTE', 'ADRIANA', '7329674', '72303602', 'adri_mobra@gmail.com', 'MUJER', '2001-07-23', 'GARNICA', 'AVILA', 'GALIA', 'GUISSEL', '67244137', 'ga.gga4747@gmail.com', 'MUJER', '2002-07-04', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 20:03:04'),
(311, 'ALEMAN', '55828', 'DIDASKALOS', 'PEREZ', 'SARMIENTO', 'ZOE BELEN', '7421433', '72357236', 'zoebelenperezsar@gma', 'MUJER', '2002-07-26', 'MUÑOZ', 'CLAROS', 'TAIRIN ANDREA', '7380633', '70430950', 'tairinmunoz@gmail.co', 'MUJER', '2002-12-14', 'MURILLO', 'GARABITO', 'MONTSERRAT LUCIA', '7416017', '70415771', 'montserratlucia10060', 'MUJER', '2002-06-10', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 20:21:41'),
(312, 'ALEMAN', '55828', 'ANDRÓMEDA', 'MURILLO', 'RIVERA', 'JHOANA', '', '68547357', 'jhoanismr6@gmail.com', 'MUJER', '2002-02-25', 'CHAMBILLA', 'REYNAGA', 'NOELIA', '7417739', '78607413', 'chambillanoelia@gmai', 'MUJER', '2002-07-10', 'SAAVEDRA', 'UREÑA', 'NAYELI NORMA', '7323729', '72336229', 'nayelisaavedra1237@g', 'MUJER', '2002-03-24', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 20:34:26'),
(313, 'ALEMAN', '55828', 'MARK I', 'ENRIQUEZ', 'COPA', 'ISRAEL ENRIQUE', '7392422', '69597614', 'isra11dragon@gmail.c', 'HOMBRE', '2002-08-04', 'VIDAURRE', 'ARAOZ', 'JEAN CARLO', '7405356', '72452742', 'jeanvidaurre@gmail.c', 'HOMBRE', '2002-05-13', 'CHUMACERO', 'HURTADO', 'LUIS GUSTAVO', '7405963', '72312260', 'luischuma723@gmail.c', 'HOMBRE', '2002-12-08', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 20:44:11'),
(317, 'ALEMAN', '55828', 'TURIN', 'CARRASCO', 'NINA', 'ISABEL', '7270622', '61839309', 'isacn150915@gmail.co', 'MUJER', '2001-12-27', 'MENA', 'AVERANGA', 'ANDRES', '7404393', '72402185', 'andres712001@gmail.c', 'HOMBRE', '2001-12-07', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'PARRADO', 'SERRUDO', 'PABLO GUIDO', '60420207', 'pablogps1961@gmail.c', '2017-09-04 21:05:23'),
(318, 'ANGLO AMERICANO', '5250902', 'Aces', 'Montecinos', 'Menacho', 'Igor', '7357471', '76150012', 'igormontecinosm@gmai', 'HOMBRE', '0000-00-00', 'Arancibia', 'Zeballos', 'Rafael Alejandro', '7365845', '71854880', 'rafaelzeballos2001@g', 'HOMBRE', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', 'NIVEL 1', 'MAÑANA', 'Montecinos', 'Vargas', 'Walter Alberto', '71944200', 'albertmont@gmail.com', '2017-09-05 09:14:58'),
(319, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-09-12 19:26:34'),
(320, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-09-13 00:11:50'),
(321, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-09-19 12:08:18'),
(322, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-09-25 10:15:31'),
(323, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-10-02 10:31:53'),
(324, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-10-04 04:00:10'),
(325, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-11-03 21:12:50'),
(326, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2017-12-05 09:49:44'),
(327, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-01-05 05:54:49'),
(328, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-02-05 13:45:33'),
(329, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-02-06 15:45:21'),
(330, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-03-09 15:05:01'),
(331, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-04-09 21:44:06'),
(332, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-05-10 13:05:38'),
(333, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-06-10 03:23:18'),
(334, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-07-11 17:31:42'),
(335, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-08-12 22:21:46'),
(336, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2018-09-13 07:37:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idtutor` int(11) NOT NULL,
  `cedula` varchar(150) NOT NULL,
  `equipo` varchar(150) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idtutor`, `cedula`, `equipo`, `nivel`) VALUES
(9, ' 5774826', 'CLAUDINA THEVENTH 2', 'Nivel Avanzado'),
(9, '12645523', 'JESUS MARIA 2', 'Nivel Basico'),
(9, '13061838', 'JESUS MARIA 1', 'Nivel Basico'),
(9, '13983644', 'JESUS MARIA 1', 'Nivel Basico'),
(9, '5761929', 'JESUS MARIA 4', 'Nivel Avanzado'),
(9, '7290640', 'JESUS MARIA 3', 'Nivel Basico'),
(9, '7333715', 'JESUS MARIA 4', 'Nivel Avanzado'),
(9, '7335461', 'JESUS MARIA 3', 'Nivel Basico'),
(9, '7340445', 'JESUS MARIA 1', 'Nivel Basico'),
(9, '7369671', 'CLAUDINA THEVENTH 1', 'Nivel Avanzado'),
(9, '7370753', 'CLAUDINA THEVENTH 1', 'Nivel Avanzado'),
(9, '7383153', 'JESUS MARIA 2', 'Nivel Basico'),
(9, '7410580', 'JESUS MARIA 4', 'Nivel Avanzado'),
(9, '7418648', 'JESUS MARIA 2', 'Nivel Basico'),
(10, '5770144', 'aleman_1', 'Nivel Basico'),
(10, '580126', 'aleman_4', 'Nivel Basico'),
(10, '7268585 Or.', 'aleman_3', 'Nivel Basico'),
(10, '7284155', 'aleman_2', 'Nivel Basico'),
(10, '7337579 ', 'aleman_1', 'Nivel Basico'),
(10, '7370815', 'aleman_2', 'Nivel Basico'),
(10, '7392421 Or.', 'aleman_3', 'Nivel Basico'),
(10, '7404265', 'aleman_2', 'Nivel Basico'),
(11, '11094613', 'PROGRAMMING', 'Nivel Basico'),
(11, '12645723', 'PROGRAMMING', 'Nivel Basico'),
(11, '12741234', 'WARNING', 'Nivel Basico'),
(11, '13035694', 'DANGER', 'Nivel Basico'),
(11, '7036321', 'PROGRAMMING', 'Nivel Basico'),
(11, '7301939', 'INFORMATIC', 'Nivel Basico'),
(11, '7301979', 'HACKERS', 'Nivel Basico'),
(11, '7310622', 'COMPUTER LOGIC', 'Nivel Avanzado'),
(11, '7321835', 'COMPUTER LOGIC', 'Nivel Avanzado'),
(11, '7351734', ' ANALYSIS', 'Nivel Basico'),
(11, '7356200', 'WARNING', 'Nivel Basico'),
(11, '7356808', 'DANGER', 'Nivel Basico'),
(11, '7368132', 'JOCKERS', 'Nivel Basico'),
(11, '7370472', 'HACKERS', 'Nivel Basico'),
(11, '737265', ' PROGRAMMER', 'Nivel Basico'),
(11, '7382934', ' ANALYSIS', 'Nivel Basico'),
(11, '7383307', 'POWER', 'Nivel Basico'),
(11, '7386226', 'JOCKERS', 'Nivel Basico'),
(11, '7389772', 'INFORMATIC', 'Nivel Basico'),
(11, '7391710', ' ANALYSIS', 'Nivel Basico'),
(11, '7400868', 'DANGER', 'Nivel Basico'),
(11, '7400879', 'JOCKERS', 'Nivel Basico'),
(11, '7456262', 'HACKERS', 'Nivel Basico'),
(11, '8254217', 'POWER', 'Nivel Basico'),
(11, '8567926', ' PROGRAMMER', 'Nivel Basico'),
(11, '9359527', 'WARNING', 'Nivel Basico'),
(11, '9403366', 'POWER', 'Nivel Basico'),
(11, '9990554', 'INFORMATIC', 'Nivel Basico'),
(15, '13252559', 'LMENTRIX', 'Nivel Basico'),
(15, '7354799', 'FIREFOX', 'Nivel Basico'),
(15, '7453646', 'FIREFOX', 'Nivel Basico'),
(16, '12549104', 'MURGUIA 1', 'Nivel Basico'),
(16, '12708575', 'Guido2', 'Nivel Basico'),
(16, '13157911', 'murguia2', 'Nivel Basico'),
(16, '13934177', 'MURGUIA 3', 'Nivel Basico'),
(16, '6197483', 'MURGUIA 3', 'Nivel Basico'),
(16, '7362302', 'murguia2', 'Nivel Basico'),
(16, '7363053', 'murguia2', 'Nivel Basico'),
(16, '7363188', 'Guido2', 'Nivel Basico'),
(16, '7367406', 'guido4', 'Nivel Avanzado'),
(16, '7370833', 'MURGUIA 1', 'Nivel Basico'),
(16, '7383639', 'Guido2', 'Nivel Basico'),
(16, '7392399', 'Guido1', 'Nivel Basico'),
(16, '7397262', 'Guido 3', 'Nivel Basico'),
(16, '7399376', 'MURGUIA 1', 'Nivel Basico'),
(16, '7410555', 'Guido 3', 'Nivel Basico'),
(17, '1234567', 'DON BOSCO UNO', 'Nivel Basico'),
(17, '2345678', 'DON BOSCO UNO', 'Nivel Basico'),
(17, '2645979', 'DON BOSCO TRES', 'Nivel Avanzado'),
(17, '3456789', 'DON BOSCO UNO', 'Nivel Basico'),
(17, '4567890', 'DON BOSCO TRES', 'Nivel Avanzado'),
(17, '5678901', 'DON BOSCO TRES', 'Nivel Avanzado'),
(17, '5728000', 'DON BOSCO DOS', 'Nivel Basico'),
(17, '7351878', 'DON BOSCO DOS', 'Nivel Basico'),
(17, '7366124', 'DON BOSCO DOS', 'Nivel Basico'),
(18, '12708995', 'Los Monokumas', 'Nivel Basico'),
(18, '13157578', 'Tecno Magos', 'Nivel Basico'),
(18, '13983669', 'Pedraza', 'Nivel Basico'),
(18, '7073714', 'Duo Dinamico', 'Nivel Basico'),
(18, '7335574', 'Los Monokumas', 'Nivel Basico'),
(18, '7351435', 'Fanatic', 'Nivel Basico'),
(18, '7351439', 'Delta', 'Nivel Avanzado'),
(18, '7351451', 'Delta', 'Nivel Avanzado'),
(18, '7358951', 'Fanatic', 'Nivel Basico'),
(18, '7358953', 'Tecno Magos', 'Nivel Basico'),
(18, '7367521', 'Xy', 'Nivel Basico'),
(18, '7368127', 'Nitro', 'Nivel Basico'),
(18, '7369674', 'Hackers', 'Nivel Avanzado'),
(18, '7374757', 'Los Monokumas', 'Nivel Basico'),
(18, '7377813', 'Fanatic', 'Nivel Basico'),
(18, '7388300', 'Duo Dinamico', 'Nivel Basico'),
(18, '7410581', 'Hackers', 'Nivel Avanzado'),
(18, '7415086', 'Xy', 'Nivel Basico'),
(18, '7420726', 'Tecno Magos', 'Nivel Basico'),
(18, '7453063', 'Hackers', 'Nivel Avanzado'),
(19, '13221824', 'AJÁ', 'Nivel Basico'),
(19, '13983923', 'L&P', 'Nivel Avanzado'),
(19, '7337381', 'HASHTAG', 'Nivel Basico'),
(19, '7353373', 'RANDOM', 'Nivel Basico'),
(19, '7353397', 'AJÁ', 'Nivel Basico'),
(19, '7362084', 'RANDOM', 'Nivel Basico'),
(19, '7366104', 'NOT FOUND', 'Nivel Basico'),
(19, '7366516', 'NOT FOUND', 'Nivel Basico'),
(19, '7366768', 'L&P', 'Nivel Avanzado'),
(19, '7373959', 'HASHTAG', 'Nivel Basico'),
(19, '7412357', 'NOT FOUND', 'Nivel Basico'),
(19, '9921471', 'AJÁ', 'Nivel Basico'),
(20, '14079110', 'MBA2', 'Nivel Basico'),
(20, '14242920', 'MBA1', 'Nivel Basico'),
(20, '7285199', 'MBA1', 'Nivel Basico'),
(20, '73218912', 'MBA3', 'Nivel Basico'),
(20, '7322750', 'MBA2', 'Nivel Basico'),
(20, '7386925', 'MBA2', 'Nivel Basico'),
(20, '7421348', 'MBA1', 'Nivel Basico'),
(20, '7575204', 'MBA3', 'Nivel Basico'),
(24, '7316639', 'Virgen del Mar', 'Nivel Avanzado'),
(24, '7363473', 'Virgen del Mar', 'Nivel Avanzado'),
(24, '7407253', 'Virgen del Mar', 'Nivel Avanzado'),
(26, '13982834', 'INSCOPROG', 'Nivel Basico'),
(26, '14241127', 'INSCOPROG', 'Nivel Basico'),
(27, '5749556', 'ARRIETA 2', 'Nivel Avanzado'),
(27, '7363189', 'ARRIETA 1', 'Nivel Basico'),
(27, '7366641', 'ARRIETA 2', 'Nivel Avanzado'),
(27, '7375072', 'ARRIETA 2', 'Nivel Avanzado'),
(28, '13093263', 'the boys platinium', 'Nivel Basico'),
(28, '5722605', '5CJP', 'Nivel Basico'),
(28, '5749057', '5CJP', 'Nivel Basico'),
(28, '7261361', 'the boys platinium', 'Nivel Basico'),
(28, '7314988', 'SIMEX', 'Nivel Basico'),
(28, '7318010', 'SIMEX', 'Nivel Basico'),
(28, '7318063', '5CJP', 'Nivel Basico'),
(28, '7336172', 'INFORPRO', 'Nivel Basico'),
(28, '7344264 ', 'the boys platinium', 'Nivel Basico'),
(28, '7375080', 'INFORPRO', 'Nivel Basico'),
(28, '7386635', 'SIMEX', 'Nivel Basico'),
(30, '7275326', 'DONATO VASQUEZ', 'Nivel Basico'),
(30, '7382608', 'DONATO VASQUEZ', 'Nivel Basico'),
(32, '12519298', 'Sucre1', 'Nivel Avanzado'),
(32, '13157492', 'Sucre ', 'Nivel Avanzado'),
(32, '13857290', 'Sucre1', 'Nivel Avanzado'),
(32, '13984148', 'Sucre1', 'Nivel Avanzado'),
(32, '7271369', 'Sucre ', 'Nivel Avanzado'),
(32, '7315608', 'Sucre ', 'Nivel Avanzado'),
(33, '12580777', 'LA SALLE 2', 'Nivel Avanzado'),
(33, '7148705', 'LA SALLE 1', 'Nivel Avanzado'),
(33, '7267928', 'LA SALLE 1', 'Nivel Avanzado'),
(33, '7340519', 'LA SALLE 2', 'Nivel Avanzado'),
(33, '7404256', 'LA SALLE 1', 'Nivel Avanzado'),
(35, '12869373', 'ENIAC', 'Nivel Basico'),
(35, '13858926', 'LISA', 'Nivel Basico'),
(35, '14143590', 'ADA', 'Nivel Basico'),
(35, '5745214', 'QUIPUS', 'Nivel Basico'),
(35, '5754494', 'UNIVAC', 'Nivel Basico'),
(35, '5772973', 'EDVAC', 'Nivel Basico'),
(35, '7263284', 'ADA', 'Nivel Basico'),
(35, '7286531', 'LISA', 'Nivel Basico'),
(35, '7356131', 'ENIAC', 'Nivel Basico'),
(35, '7363164', 'NEXT', 'Nivel Basico'),
(35, '7380644', 'QUIPUS', 'Nivel Basico'),
(35, '7392422', 'UNIVAC', 'Nivel Basico'),
(35, '7401664', 'NEXT', 'Nivel Basico'),
(35, '7405356', 'EDVAC', 'Nivel Basico'),
(35, '7405963', 'EDVAC', 'Nivel Basico'),
(35, '7415342', 'QUIPUS', 'Nivel Basico'),
(35, '7416721', 'NEXT', 'Nivel Basico'),
(39, '12581247', 'LA SALLE A', 'Nivel Avanzado'),
(39, '7148708', 'LA SALLE B', 'Nivel Basico'),
(39, '7404228', 'LA SALLE B', 'Nivel Basico'),
(40, '7357471', 'ANGLO AMERICANO', 'Nivel Avanzado'),
(40, '7422523', 'ANGLO AMERICANO', 'Nivel Basico'),
(43, '7356789', 'Bless', 'Nivel Basico'),
(43, '7404283', 'Bless', 'Nivel Basico'),
(43, '7404326', 'El Shaddai', 'Nivel Basico'),
(43, '7404803', 'El Shaddai', 'Nivel Basico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `nombret` int(11) DEFAULT NULL,
  `correot` varchar(100) DEFAULT NULL,
  `colegio` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `celulart` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro2`
--

CREATE TABLE `registro2` (
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `nombret` int(11) DEFAULT NULL,
  `correot` varchar(100) DEFAULT NULL,
  `colegio` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `celulart` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro2`
--

INSERT INTO `registro2` (`cedula`, `nombre`, `celular`, `correo`, `curso`, `categoria`, `nivel`, `nombret`, `correot`, `colegio`, `telefono`, `horario`, `celulart`) VALUES
(' 5774826', 'BRACAMONTE SANCHEZ JORGE ANDRES', '61835763', 'jorgeandresbracamonte@outlook.com', '6to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('10679284', 'GOMEZ VILLCA CLAUDIO ANDRE', '69581771', 'chickenpotatoc@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '5277558', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '70437326'),
('11094613', 'ALEX ROCHA CONDORI', '73815903', 'rochacondori764@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('1234567', 'FUENTES VILLCA REGINA GABRIELA', '78310602', '', '4to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '72342717'),
('12428969', 'SALAZAR FERNANDEZ LUZ BELEN PAULINA', '72392769', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('12519298', 'GONZALES ALCON BOB BRUSTER', '65407161', 'gonzalesalconbob@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('12549104', 'BARRIOS AJHUACHO EDITH', '72481519', 'jgposoft@hotmail.com', '5to de Secundaria', '', 'Nivel Basico', 16, 'jgposoft@hotmail.com', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('12580777', 'MENDIETA GOYONAGA ANDRES MANUEL ALEJANDRO', '67219077', 'atuanortsa@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 33, 'hernan_oruro@hotmail.com', 'LA SALLE', '5260085', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70432801'),
('12581247', 'ENRIQUE DANIEL PEÑAFIEL MEJIA', '75417655', 'delmamau@hotmail.com', '5to de Secundaria', '', 'Nivel Avanzado', 39, '', 'LA SALLE', '', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', ''),
('12645523', 'RAFAEL FERNANDO ARGOTE ZEBALLOS ', '72496651', 'rafix_zz@yahoo.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('12645723', 'IONE MARICEL BARRENOSO BALDERRAMA', '60428416', 'barrenosoione@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', NULL),
('12708575', 'ACHACOLLO LUIS EDWIN ', '61827842', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('12708995', 'MENESES CORRALES CINTHIA DAYANNA', '74303512', 'girldyanna307@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('12741234', 'INDIRA NATTY RAMIREZ', '75426418', 'nattyindira2018@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('12869373', 'CANQUI MONTOYA JAIRO MARCELO', '60414931', 'jairocanqui1gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('13035694', 'JEAN CARLO FLORES LUNA', '61846043', 'jeanluna882@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('13061838', 'CARLA CAMILA VARGAS CAYOJA ', '68329889', 'carlixascarla615@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('13093263', 'ERICK JAVIER VELIZ ROJAS', '75427921', 'veroe-02@hotmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '75414314'),
('13157492', 'SANTIESTEVEZ RUIZ EDUARDO PAUL ', '65704473', 'santyruiz@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('13157578', 'CONDE VASQUEZ ADRIAN', '75711154', 'leon.777.ac7@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('13157911', 'CONDORI VACAFLOR BRAYAN', '70428112', 'Jgposoft@hotmail.com ', '3ro de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('13221824', 'LEDO MORALES ANGELICA LINNETH', '69595641', 'feliquito@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('13252559', 'MARCO ANTONIO SOLIZ ROQUE', '75400971', 'marcosoliz528@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 15, 'profnzc@gmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '65403580'),
('13857290', 'BRAYAN ALEX FLORES CAYO', '67238116', 'brayan_cayo_f@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('13858926', 'ROJAS RODRIGUEZ ALEJANDRA CAROLA', '75713089', 'rojas.rodriguez.ale@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('13859236', 'HENRY MANUEL QUISPE MAMANI', '69583273', '', '3ro de Secundaria', '', 'Nivel Basico', 41, 'mijaelitolobito@hotmail.com', 'IGNACIO LEON  2', '', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '65404192'),
('13933836', 'MAMANI ROCHA EDWIN', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('13934177', 'QUISPE INCA JOSUé GLODY', '74044130', 'Jgposoft@hotmail.com ', '5to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('13982834', 'CORDOVA CHALLA CARLOS HEBER', '68283025', 'jaqui.plf@gmai.com', '5to de Secundaria', '', 'Nivel Basico', 26, 'jaqui.plf@gmail.com', 'INSCO SECUNDARIA', '25272288', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '70414704'),
('13983644', 'MIGUEL SANTIAGO PEDRAZA CRESPO ', '76142859', 'mitiagopedraza@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('13983669', 'PEDRAZA CRESPO MICHELLE FABIOLA', '76147714', 'mifapredrazacrespo@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('13983923', 'VASQUEZ MAMANI PAOLA ANDREA', '74109235', 'feliquito@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '74148132'),
('13984148', 'RAMIREZ CRUZ JESUS SAMUEL', '75417531', 'luisfloresportillo2015@gemail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('14079110', 'LUZMILA CHAMBI FULGUERA', '78602662', 'solcolque3@gmailcom', '4to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '79405419'),
('14143590', 'HURTADO FLORES VALERIA FERNANDA', '68321167', 'valefhf04@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('14241127', 'APAZA ZALLES MAYDELIN IRAN', '63637872', '', '5to de Secundaria', '', 'Nivel Basico', 26, 'jaqui.plf@gmail.com', 'INSCO SECUNDARIA', '', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '70414704'),
('14242920', 'RODRIGO EVERT ALVAREZ MAGNE', '67238780', 'sackgarciasack@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '79405419'),
('2345678', 'ESCOBAR HERRERA NELSON MAURICIO', '75423995', '', '4to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '72342717'),
('2645979', 'MAMANI JAITA DANIEL', '75419414', '', '6to de Secundaria', '', 'Nivel Avanzado', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '72342717'),
('3456789', 'QUISPE BELTRAN DENZEL JOSE', '61828862', '', '4to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '72342717'),
('4567890', 'PEREZ GUTIERREZ RODRIGO SAMUEL', '72328082', '', '6to de Secundaria', '', 'Nivel Avanzado', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '72342717'),
('5678901', 'URIA CARLOS DANIEL', '69585088', '', '6to de Secundaria', '', 'Nivel Avanzado', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '72342717'),
('5722605', 'JHILMAR JAZIEL FERNANDEZ ATORA', '69585418', 'jhilmarjaziel@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75414314'),
('5728000', 'ALONZO MALDONADO JOEL MAURICIO', '71109180', '', '5to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72342717'),
('5745214', 'MONROY DAGAMELISA SHEILA', '69596930', 'sheilamelisa1234@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('5745785', 'CAMILA GABRIELA AGREDA BERDEJA ', '73833341', 'Renzorivera1234561@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('5749057', 'NAHIR MELINA ARCE VELIZ', '', '', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75414314'),
('5749556', 'BENITEZ BALLESTEROS CARLOS HUMBERTO', '75418929', 'carlosbenitez689@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '5277558', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70437326'),
('5754493', 'RIVERA ZEGARRA ISMAEL', '74466654', 'ismacho94@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('5754494', 'RIVERA ZEGARRA JOAQUIN', '75418990', 'joaquinriverazegarra@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('5761929', 'RODRIGO RAUL ESPRELLA VALDEZ ', '68592891', 'hairaxelpoderoso@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('5770144', 'VILLANUEVA AIME CAMILA AGUILAR ', '70417667', 'Renzorivera1234561@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('5772973', 'MIRANDA PANIAGUA JOSUE SAID', '68333152', 'jossa141102@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('580126', 'LUCANA CHURA MAYERLY FANNY', '60403425', 'Mayerly123@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('6197483', 'LIZARAZU CAHUANA JOSE ESTEBAN RAFAEL ', '65401841', 'Jgposoft@hotmail.com ', '3ro de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '72476257'),
('7036321', 'RONY JUNIOR MACHACA FELIPE', '63638686', 'ronyjunior66@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('7073714', 'PALTO AGUILAR JOSE GABRIEL', '70759499', 'gabrielpalto98@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7123023', 'LEDEZMA FLORES MARCO FABIO', '60426545', 'miltonchoque014@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '68339556'),
('7123045', 'MAMANI TORREZ ALVARO KEVIN', '78619170', 'avrkvn21230@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '68339556'),
('7148705', 'LERO ALFARO SHIRLEY SELENA', '73823268', '', '6to de Secundaria', '', 'Nivel Avanzado', 33, 'hernan_oruro@hotmail.com', 'LA SALLE', '', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70432801'),
('7148708', 'LERO ALFARO ALDRIN', '75421481', '', '5to de Secundaria', '', 'Nivel Basico', 39, '', 'LA SALLE', '', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', ''),
('7260451', 'GADIEL MARCELINO SANTOS ROMERO', '72054101', 'beltrin@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 15, 'profnzc@gmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '65403580'),
('7261361', 'ARTURO EMERSON GERONIMO RAMIREZ', '77147798', 'artiescorpion@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '75414314'),
('7263284', 'TANGARA ALARCÓN ANDREA MARLENE', '68341655', 'andreatangara@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7267928', 'COLQUE ARAVIRI KEVIN MOISES', '61810456', 'colquekevin@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 33, 'hernan_oruro@hotmail.com', 'LA SALLE', '5260085', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70432801'),
('7268585 Or.', 'CLAURE MALDONADO SOFIA BELEN', '72313180', 'soclaurem@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 10, 'cebs40@msm.com', 'ALEMAN', '75700123', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', NULL),
('7271369', 'CORANI  MONTALVO  ALEJANDRO', '75425915', 'luisfloresportillo2015@gemail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('7275326', 'PATRICIA MARCA QUISPE', '72475980', '02pattmarc@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 30, 'miguel_irahola@hotmail.com', 'DONATO VASQUEZ', '5255273', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '79411700'),
('7284155', 'JOAQUIN ALFREDO MANCILLA AGUILAR', '75881835', 'manjoaquin_03@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7285199', 'ROCHA ZUBIETA WALTER DANIEL', '77149015', '', '4to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '79405419'),
('7286531', 'GALLARDO MORALES ANDREA', '68323762', 'andygallardo060@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7290640', 'MARCO GABRIEL BELTRAN VEGA', '60410984', 'Gabymarc2115@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('7299099', 'GUILLERMO SEBASTIáN RODO CUEVAS', '72333912', 'Renzorivera123451@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7299957', 'VEGA OROS LUIS FERNANDO', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('7301939', 'JUAN JOSE NINA MARZA', '77158207', 'juanjosenina045@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('7301979', 'GLADYS CONDORI VIVALO', '71183641', 'convilalo0102@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7310228', 'PORCO MENA LUIS ALBERTO', '75700310', '', '6to de Secundaria', '', 'Nivel Avanzado', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '72342717'),
('7310622', 'MARIBEL PEREZ VIRACA', '67220257', 'maribelperezjhp@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', NULL),
('7314988', 'MIGUEL ÁNGEL FERNáNDEZ RíOS', '77143309', '', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', '75414314'),
('7315608', 'RUBEN YUCRA ALVAREZ', '61660581', 'locorex12@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('7316639', 'MAMANI CHOQUE MERY LADY', '72462296', 'merymamanichoque@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 24, 'edsonguzmanruiz@hotmail.com', 'VIRGEN DEL MAR 3', '5254454', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '72485497'),
('7318010', 'GABRIELA LIZARAZU ÁLVAREZ ', '60402043', 'gabilisalva03@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', '75414314'),
('7318063', 'SHARAY MERCEDE MAMANI', '', '', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75414314'),
('7321835', 'STEFANIA MINERVA RADA HUANCA', '63665072', 'fanirada76@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', NULL),
('73218912', 'GUADALUPE DAYSI FLORES CALIZAYA', '73814361', '', '5to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '79405419'),
('7322750', 'JOEL ADRIAN PARDO LOPEZ', '65404109', 'joeladrianyjh7@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '79405419'),
('7333715', 'DILAN ARMANDO QUINTEROS GUZMAN ', '69586354', 'Dilanqdj321@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('7335461', 'FATIMA MICHELLE VASQUEZ BUENO', '67208800', 'fatimavasquezbueno@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('7335574', 'ARROYO MOYA JOSé MANUEL', '74400257', 'superrjoshh775@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7336172', 'ORIANA SOL RAFAEL VILLCA', '68311992', 'rafaeloriana2002@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75414314'),
('7337381', 'HURTADO PEREZ NAYELI MARCIA', '72305424', 'feliquito@hotmail.com', '5to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7337579 ', 'RIVERA CHáVEZ RENZO IGNACIO ', '79406100', 'Renzorivera1231@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7339632', 'MONTERO CANAVIRI GENESIS ABRIL ', '60401468', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7340445', 'ANDREA RANDELL LóPEZ VILLANUEVA', '65437383', 'ARLVloboprotector@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '52-41507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', '76158997'),
('7340519', 'ESCALIER RUFINO SEBASTIAN FREDDY', '74154256', 'sedas456@outlook.com', '6to de Secundaria', '', 'Nivel Avanzado', 33, 'hernan_oruro@hotmail.com', 'LA SALLE', '5260085', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70432801'),
('7344264 ', 'ABIGAIL ISELA CASTRO CHAMBI   ', '60404416', 'abiicastrochambi@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '75414314'),
('7350839', 'MARIA JOSE GUACHALLA VINO', '69597257', 'luisfloresportillo2015@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gmail.com', 'JUANA AZURDUY DE PADILLA SECUNDARIA', '52-51805', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '77148044'),
('7351435', 'DE LA BARRA ESTUPIñON LUIS RODOLFO', '70425273', 'z.feickxd@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5841507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7351439', 'GARCíA ESCOBAR JOSé DANIEL', '75715664', 'jdgg6921@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70417467'),
('7351451', 'PEREDO VERA NICOLáS JEREMY', '71846236', 'nicolásjeremyperedovera@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70417467'),
('7351734', 'ALEJANDRO GODOY VALERO', '74124710', 'alejandrogodoy404@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', NULL),
('7351878', 'VILLARROEL MIRANDA JOSE ALEJANDRO', '75418824', '', '4to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72342717'),
('7352359', 'HUARACHI LAIME ', '79416831', 'armansh827@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '68339556'),
('7353115', 'ROJAS PADILLA ROBERTO DIEGO', '75701942', 'miltonchoque014@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '68339556'),
('7353373', 'TAQUICHIRI BARCO LITZI ODALIS', '72774209', 'feliquito@hotmail.com', '3ro de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7353397', 'GUTIERREZ VILLCA JHOSELINE ALEXANDRA', '73832820', 'feliquito@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7354799', 'RUBEN JHENRY COLQUE COLQUE', '61847070', 'rubercolque@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 15, 'profnzc@gmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '4066278'),
('7356131', 'BARRON LANDAETA GUILLERMO SANTIAGO', '76134539', 'santiman0308qgmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7356200', 'JOEL CRISTIAN CANAVIRI CHALLAPA', '60411063', 'jcanaviri388@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7356778', 'AICAHUARA CHOQUE MILTON JONATAN', '67223133', 'miltonchoque014@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '68339556'),
('7356789', 'RAMOS COLQUE DANIEL', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('7356808', 'JOSIAS GABRIEL VARGAS MERIDA', '71855383', 'jos123lim@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7357471', 'IGOR MONTECINOS MENACHO', '76150012', 'igoritobond@hotmail.com', '5to de Secundaria', '', 'Nivel Avanzado', 40, 'farellanoponce@gmail.com', 'ANGLO AMERICANO', '5250901', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '72342451'),
('7358951', 'ALCANTARA AGUILAR ANTHONY', '68309480', 'tucopepe2@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7358953', 'ALEJO IBARBE NEYTHAM VLADIMIR', '75715616', 'cuentabrawl838@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7362084', 'HUANCA COLQUE YESICA JHOSELIN', '61839616', 'feliquito@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7362302', 'PEREZ AGUILAR PATRICIA ANGELA', '70429148', 'Jgposoft@hotmail.com ', '3ro de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('7363053', 'MENDOZA CHOQUE JOSE LUIS', '72332174', 'Jgposoft@hotmail.com ', '3ro de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('7363077', 'AIDA APAZA FLORES', '74158083', 'luisfloresportillo2015@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gmail.com', 'JUANA AZURDUY DE PADILLA SECUNDARIA', '52-51805', 'Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)', '77148044'),
('7363164', 'COCA AREVALO JACKELINE SONED', '79409995', 'perjack188@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7363188', 'MONTAñO CRUZ IYO BRAYAN ', '79423164', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7363189', 'APAZA LINO ALVARO BRANDON', '75719705', 'alvarobrandon757@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '5277558', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '70437326'),
('7363473', 'MALDONADO SOZA RODRIGO GREINS', '77770771', 'rodrigomaldonadosoza@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 24, 'edsonguzmanruiz@hotmail.com', 'VIRGEN DEL MAR 3', '5254454', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '72485497'),
('7366104', 'MAMANI INCA BELEN', '75402634', 'feliquito@hotmail.com', '5to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7366124', 'CHAMBI RAMOS MAKENDA LEILA', '67251477', '', '5to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72342717'),
('7366516', 'AJHUACHO COCA MAJHERLY EDNA', '75401223', 'feliquito@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7366641', 'OROPEZA GARCIA ANABEL', '72342342', 'anioropeza.82@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '5277558', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70437326'),
('7366768', 'GUTIERREZ FLORES LAURA YAMEL', '68293885', 'feliquito@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '74148132'),
('7367406', 'FERNáNDEZ MAIGUA FRANKLIN', '77140108', 'Jgposoft@hotmail.com ', '6to de Secundaria', '', 'Nivel Avanzado', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '72476257'),
('7367521', 'BLANCO SUAREZ ALAN AUGUSTO', '75419088', 'augusto.blanco.967@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7368127', 'RODRIGO MAREñO JAROTT GUILLERMO', '75702422', 'jarottxd@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'VIRGEN DEL MAR 3', '5254474', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '70417467'),
('7368132', 'JUAN ARIEL TORREZ CABRERA', '61828539', 'juanaritorr0303@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7369671', 'CELESTE ALEJANDRA VALLEJOS RUIZ', '73036569', 'celestemizuki@gmail.com', '4to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '52-41507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('7369674', 'ZABALETA MOYA ANTONY', '76158190', '', '4to de Secundaria', '', 'Nivel Avanzado', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70417467'),
('7370085', 'TORREZ CALLAPA ANGELICA', '65411207', '', '4to de Secundaria', '', 'Nivel Basico', 17, 'andresvy@gmail.com', 'DON BOSCO', '5230402', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '72342717'),
('7370472', 'OSCAR CANAZA CANAVIRI', '77155684', 'oscarcanaviri008@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7370570', 'YUCRA PAREDEZ JUAN DANIEL ', '60426545', 'paredesdaniel591@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '68339556'),
('7370753', 'FERNANDO SAMUEL UREÑA CHUMACERO', '77150131', 'samyurenach@hotmail.com', '4to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('7370815', 'GERALDINE PAOLA VELIZ RODRíGUEZ ', '70420516', 'Renzorivera12341@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7370833', 'MAMANI CABEZAS ABIGAIL', '68287921', 'Jgposoft@hotmail.com ', '3ro de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('7371126', 'CHOQUE VALENZUELA ABIGAIL ANGELINA ', '61818161', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('737265', 'JUAN CARLOS CUCUNA COCA', '67218416', 'cucunacocaj@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '76131529'),
('7373959', 'GONZALES AGUILAR LEYDI TIRSA', '70434908', 'feliquito@hotmail.com', '5to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7374757', 'QUIROZ GUEVARA ALEJANDRA', '72323990', 'aleao106@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7375072', 'MAMANI ALTAMIRANO JOSE', '75406303', 'gamersjoys@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '5277558', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70437326'),
('7375080', 'CAROL VICTORIA BAPTISTA TORREZ', '70556933', '', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75414314'),
('7375245', 'MOLLO VARGAS LUZ JASMIN ', '75414018', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7377813', 'RAMIREZ QUISPE JONATHAN MICHAEL', '67230280', 'jonyramirez135@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7380644', 'COCA BOHORQUEZ ALEIDA SARAI', '69597306', 'aleidacoca123@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7381383', 'QUISPE CHOQUE SAHID', '69584992', '', '5to de Secundaria', '', 'Nivel Basico', 16, '', 'ILDEFONSO MURGUIA', '', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7382608', 'JESSICA DANOVI MAMANI MIRANDA', '69575250', 'mamanimirandajessica@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 30, 'miguel_irahola@hotmail.com', 'DONATO VASQUEZ', '5255273', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '79411700'),
('7382751', 'QUISPE CARACARA JUAN DANIEL ', '62814199', 'Jgposoft@hotmail.com ', '5to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7382934', 'SAMUEL FLORES RAMOS', '71109593', 'samsamyfloresramos935@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', NULL),
('7383148', 'CRISTOPHER GUZMAN ARANCIBIA', '72484836', '', '3ro de Secundaria', '', 'Nivel Basico', 41, 'mijaelitolobito@hotmail.com', 'IGNACIO LEON  2', '', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '65404192'),
('7383153', 'LUIS ANGEL ALEJO ANDRADE ', '7383153', 'bulbasarr4@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('7383307', 'FREDDY ROJAS VERA', '72456874', 'freddyroasvera123456@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7383639', 'FERNANDEZ OSSIO IVAN', '63645165', 'jgposoft@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 16, 'jgposoft@hotmail.com', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7383656', 'COLQUE CANAVIRI EMILI HELEN ', '65418973', 'Jgposoft@hotmail.com de ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7386226', 'CRISTIAN BALDERRAMA VENTURA', '69585747', 'jbalderrama775@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7386635', 'SARAY CECILIA LUCANA MAMANI', '65405309', 'cecilialucanamamani@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 28, 'g_rojasv@hotmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', '75414314'),
('7386925', 'ARIEL ZEBALLOS CARACILA', '67228505', 'arielzeballos2002@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '79405419'),
('7388300', 'LEóN ARANCIBIA EILAN JOSE', '72333901', 'eilanleon10@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7389772', 'JONATHAN GUILLERMO GOMEZ GABRIEL', '72324593', 'gomezgabrieljonathanguillermo@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('7391710', 'LUIS VIDAL FERNANDEZ CHOQUE', '74131154', 'fernandezluisvidal0101@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('7392399', 'CHOQUETUPA TOLA ZORAIDA ', '70651362', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7392421 Or.', 'ENRIQUEZ COPA SARIEL ELENA', '74477948', 'sarielenriquez@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 10, 'cebs40@msm.com', 'ALEMAN', '5255828', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7392422', 'ENRIQUEZ COPA ISRAEL ENRIQUE', '69597614', 'isra11dragon@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7393789', 'CALANI ROQUE JHOEL', '60439023', 'jgposoft@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 16, 'jgposoft@hotmail.com', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7397262', 'POMA CANAZA SEBASTIAN ', '75411893', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '72476257'),
('7398758', 'SALVATIERRA SAMUR CAMILA', '5283596', 'borisago@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 10, 'cebs40@msn.com', 'ALEMAN', '5255828', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75700123'),
('7399376', 'CRUZ CALLE GROBER', '75702620', 'Jgposoft@hotmail.com ', '5to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'ILDEFONSO MURGUIA', '5280025', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '72476257'),
('7400868', 'CRISTIAN CASPA TICONA', '69723422', 'kris44065@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7400879', 'CRISTIAN BARRIOS MAMANI', '78613645', 'crisbar0202@gmil.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7401664', 'QUIROGA CALLEJAS JESSICA RAQUEL', '65418926', 'jessicaraquelquirogacallejas@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7401951', 'DARWIN CESAR HERRERA CHAMBI', '69598177', 'luisfloresportillo2015@gemail.com', '6to de Secundaria', '', 'Nivel Avanzado', 32, 'luisfloresportillo2015@gemail.com', 'MARISCAL SUCRE SECUNDARIO', '51736', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '77148044'),
('7404228', 'CHOQUE GUTIERREZ ALEJANDRA PATRICIA', '', '', '5to de Secundaria', '', 'Nivel Basico', 39, '', 'LA SALLE', '', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)', ''),
('7404256', 'AGUIRRE CONDARCO RICARDO', '67206211', 'ricardoaguirre362@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 33, 'hernan_oruro@hotmail.com', 'LA SALLE', '5260085', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70432801'),
('7404265', 'VALERIA DANA CHOCAITA MARZE ', '67220236', 'Renzorivera2000@gmail.com ', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7404283', 'SOLIZ AIMA ASAF BENJAMIN', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('7404326', 'ALVAREZ LEYVA JENNIFER RERNANDA', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('7404803', 'GOMEZ RODRíGUEZ MAURICIO GERARDO', '72456532', 'Ramirin777b@gmail.com ', '5to de Secundaria', '', 'Nivel Basico', 43, 'Ramirin777b@gmail.com', 'EVANGELICO FILADELFIA', '25249768', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72456532'),
('7405356', 'VIDAURRE ARAOZ JEAN CARLO', '72452742', 'jeanvidaurre@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7405362', 'MALDONADO  RIOS DENISSE  TERESA', '75426624', 'niss.maldonado24@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 10, '', 'ALEMAN', '', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', ''),
('7405963', 'CHUMACERO HURTADO LUIS GUSTAVO', '74467567', 'luischuma723@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7406571', 'LAZARTE ESCOBAR ANTHONY JHEREMY', '79424151', 'anthonyajl91@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 27, 'israel_cdc@hotmail.com', 'ARRIETA', '', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '70437326'),
('7407253', 'CHOQUE MAMANI FERNANDO', '73810639', 'fernandochoquemamani@hotmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 24, 'edsonguzmanruiz@hotmail.com', 'VIRGEN DEL MAR 3', '5254454', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '72485497'),
('7410555', 'ACERO CHAMBI JUAN CARLOS ', '75412955', 'Jgposoft@hotmail.com ', '5to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('7410580', 'MARCO ABDIAS IBARRA QUINTANILLA ', '75409636', 'marquito.maiq@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '76158997'),
('7410581', 'IBARRA QUINTANILLA JACQUELINE VICTORIA', '75424433', 'ibarrajacqueline081@gmail.com', '4to de Secundaria', '', 'Nivel Avanzado', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70417467'),
('7410822', 'MENDOZA HERRERA ANGEL GABRIEL', '68351536', 'gabo123gabin@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ALEMAN', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7412357', 'MAMANI HUARACHI LIZBETH VAYOLA', '72493300', 'feliquito@hotmail.com', '3ro de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('7412370', 'GONZALES BAPTISTA VALERIA LYNN', '65431905', 'pibaptista@hotmail.com', '3ro de Secundaria', '', 'Nivel Basico', 10, 'cebs40@msn.com', 'ALEMAN', '5255828', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '75700123'),
('7415086', 'ANDRADE PARRA ALESSANDRA', '70422447', 'andicoleparra.alessandra@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7415342', 'PILLCO APAZA MARIAN ALEXANDRA', '78601029', 'marianalexandrapillcoapaza@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207');
INSERT INTO `registro2` (`cedula`, `nombre`, `celular`, `correo`, `curso`, `categoria`, `nivel`, `nombret`, `correot`, `colegio`, `telefono`, `horario`, `celulart`) VALUES
('7416721', 'FLORES GARCIA JEREMY STANLI', '72477233', 'wifacu76@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 35, 'pablogps1961@gmail.com', 'ARRIETA', '5257974', 'Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)', '60420207'),
('7418648', 'JUAN ALBERTO MENDOZA GARCIA', '68304824', 'juanalbertomendozagarcia@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 9, 'irma_mery123@hotmail.com', 'JESUS-MARIA 2', '5241507', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '76158997'),
('7420726', 'BARRIONUEVO PANOZO NATALY', '72347016', 'naty.3.y@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '70417467'),
('7421348', 'LUIS KEVIN COCA AGUILAR', '68302713', 'cocaaguilarluiskevin@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '79405419'),
('7422523', 'ELIANA MONTECINOS MENACHO', '61830911', 'elianitis55555@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 40, 'farellanoponce@gmail.com', 'ANGLO AMERICANO', '5250901', 'Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)', '72342451'),
('7453063', 'ZUBIETA ORTIZ BEYDA MARIANA', '67209163', 'beydazuor@gmail.com', '4to de Secundaria', '', 'Nivel Avanzado', 18, 'juguiro@gmail.com', 'JESUS-MARIA 2', '5241507', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '70417467'),
('7453646', 'JAIRO JESÚS FLORES PEREYRA', '65428906', 'jairofpereyra@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 15, 'profnzc@gmail.com', 'JUAN PABLO SECUNDARIA', '25262326', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '65403580'),
('7456262', 'MARIANELA HILARIO VIÑAYA', '60429364', 'hilariovinam123@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('7575204', 'ESMERALDA SERRATO TAPIA', '75416945', 'esmeraldaserratotapia@gmail.com', '5to de Secundaria', '', 'Nivel Basico', 20, 'jacky_pa22@hotmail.com', 'MARCOS BELTRAN AVILA SECUNDARIA', '5261109', 'Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)', '79405419'),
('8254217', 'JOEL FREDDY CALLE MANCILLA', '61810867', 'dragon3force@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('8567926', 'ROY CRISTHIAN LLANQUE CORDOVA', '67936749', 'royllanque0201@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '76131529'),
('8614926', 'COLQUE LAYME MOISES', '74147532', 'colquemoises567@gmail.com', '6to de Secundaria', '', 'Nivel Avanzado', 25, 'jamesinformatica2012@gmail.com', 'JESUS DE NAZARETH  2', '5279280', 'Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)', '68339556'),
('9359527', 'ARIEL RAMOS QUISPE', '62611992', 'ariosmarramos2017@gmail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('9403366', 'ISRAEL JOSUE CALLAHURA CONDORI', '76139077', 'edwinju879@gmail.com', '3ro de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'JHON FITZGERALD KENNEDY 3', '5240219', 'Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)', '76131529'),
('9911176', 'QUISPE MARIA MAYTE', '68015987', 'Jgposoft@hotmail.com ', '4to de Secundaria', '', 'Nivel Basico', 16, 'Jgposoft@hotmail.com ', 'GUIDO VILLAGÓMEZ SECUNDARIO', '5230103', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', '72476257'),
('9921471', 'MAMANI CHOQUEHUANCA ABIGAIL NOEMI', '75706400', 'feliquito@hotmail.com', '4to de Secundaria', '', 'Nivel Basico', 19, 'feliquito@hotmail.com', 'PANTALEON DALENCE SECUNDARIA', '5241256', 'Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)', '74148132'),
('9990554', 'MARIA MAGDALENA MAMANI FLORES ', '72760821', 'alex1.zurd90@mail.com', '4to de Secundaria', '', 'Nivel Basico', 11, 'maywi07407@gmail.com', 'MARCELO QUIROGA SANTA CRUZ', '5211764', 'Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `idtutor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`idtutor`, `nombre`) VALUES
(1, 'CHAMBI AJATA ADIMER PAUL'),
(9, 'CARATA RAMOS MERY IRMA'),
(10, 'BUSTOS SANDOVAL  CARLOS'),
(11, 'TITICHOCA LEON MAYDA'),
(15, 'ZENTENO CONDORI NELLY'),
(16, 'PEREZ ORTEGA JUAN GABRIEL'),
(17, 'VICENTE YAPARI ANDRES'),
(18, 'RODRIGO RODRIGO JUAN GUILLERMO'),
(19, 'HERBAS ASTETE FELIX'),
(20, 'JACKELINE CASILDA PADILLA AGUIRRE'),
(21, 'ROSSEMARY JULIETA CHALLA CHIRILLA'),
(22, 'LOAYZA FLORES JAQUELINE PAMELA'),
(23, 'CARATA RAMOS MERY IRMA'),
(24, 'EDSON RICARDO GUZMAN RUIZ'),
(25, 'TITO CALDERON JAMES GUSTAVO'),
(26, 'LOAYZA FLORES JAQUELINE PAMELA '),
(27, 'CRUZ DEL CALLEJO ISRAEL'),
(28, 'JAIME GONZALO ROJAS VARGAS'),
(29, 'MIGUEL áNGEL JIMéNEZ IRAHOLA'),
(30, 'MIGUEL áNGEL JIMéNEZ IRAHOLA'),
(31, 'LUIS FLORES PORTILLO'),
(32, 'LUIS FELIX FLORES PORTILLO'),
(33, 'CONDORI TAQUICHIRI HERNAN'),
(34, 'MERY IRMA CARATA RAMOS'),
(35, 'PARRADO SERRUDO PABLO'),
(36, 'VELIZ QUISPE JUAN CARLOS'),
(37, 'VELIZ QUISPE JUAN CARLOS'),
(38, 'VELIZ QUISPE JUAN CARLOS'),
(39, 'OMAR GREGORIO CORAITE CALIZAYA'),
(40, 'ARELLANO PONCE FERNANDO GERMAN'),
(41, 'GUEMBERT MIJAEL LOBO QUISPE'),
(42, 'GUEMBERT MIJAEL LOBO QUISPE'),
(43, 'AVENDAÑO PÉREZ RAMIRO ABEL ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idequipo`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idtutor`,`cedula`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `colegio` (`colegio`),
  ADD KEY `nombret` (`nombret`);

--
-- Indices de la tabla `registro2`
--
ALTER TABLE `registro2`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `colegio` (`colegio`),
  ADD KEY `nombret` (`nombret`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`idtutor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idequipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `idtutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
