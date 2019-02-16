-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2019 a las 23:04:54
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `md_express`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorie`
--

CREATE TABLE `categorie` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorie`
--

INSERT INTO `categorie` (`id`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'SALONES DE BELLEZA', NULL, NULL),
(2, 'SPA', NULL, NULL),
(3, 'RESTAURANTES', NULL, NULL),
(4, 'CENTROS ODONTOLOGICOS', NULL, NULL),
(5, 'VETERINARIA', NULL, NULL),
(6, 'INMOBILIARIAS', NULL, NULL),
(7, 'COLEGIOS Y UNIVERSIDADES', NULL, NULL),
(8, 'TIENDAS Y CIGARRERIAS', NULL, NULL),
(9, 'MICELANEAS Y PIÑATERIAS', NULL, NULL),
(10, 'ROPA Y ACCESORIOS', NULL, NULL),
(11, 'TATUAJES Y SEX SHOP', NULL, NULL),
(12, 'ACADEMIAS Y GIMNASIOS', NULL, NULL),
(13, 'STAMPADOOS Y PUBLICIDAD', NULL, NULL),
(14, 'CONTADORES Y ABOGADOS', NULL, NULL),
(15, 'AUTOMOVILES', NULL, NULL),
(16, 'COCINAS Y MUEBLES', NULL, NULL),
(17, 'VIAJES Y TURISMO', NULL, NULL),
(18, 'DEPOSITO Y FERRETERIAS', NULL, NULL),
(19, 'RECREACION Y EVENTOS', NULL, NULL),
(20, 'OPTICAS', NULL, NULL),
(21, 'JOYERIA Y RELOJERIA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ENGATIVÁ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_02_03_013205_create_location_table', 1),
(9, '2019_02_03_013432_create_neighborhood_table', 1),
(10, '2019_02_03_013551_create_categorie_table', 1),
(11, '2019_02_03_013812_create_shop_table', 1),
(12, '2019_02_03_013919_create_client_table', 1),
(13, '2019_02_15_163958_create_shop_categorie_table', 1),
(14, '2019_02_15_164441_create_shop_neighborhood_table', 1),
(15, '2019_02_15_165759_create_shop_img_table', 1),
(16, '2019_02_15_190748_create_neighborhood_categorie_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `neighborhood`
--

CREATE TABLE `neighborhood` (
  `id` int(10) UNSIGNED NOT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_localidad` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `neighborhood`
--

INSERT INTO `neighborhood` (`id`, `barrio`, `id_localidad`, `created_at`, `updated_at`) VALUES
(1, 'VILLA LUZ', 1, NULL, NULL),
(2, 'ALAMOS', 1, NULL, NULL),
(3, 'LA FLORIDA', 1, NULL, NULL),
(4, 'SANTA HELENITA', 1, NULL, NULL),
(5, 'SAN MARCO', 1, NULL, NULL),
(6, 'ESTRADA', 1, NULL, NULL),
(7, 'TABORA', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `neighborhood_categorie`
--

CREATE TABLE `neighborhood_categorie` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_categorie` int(10) UNSIGNED NOT NULL,
  `id_neighborhood` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop`
--

CREATE TABLE `shop` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redes_sociales` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shop`
--

INSERT INTO `shop` (`id`, `created_at`, `updated_at`, `empresa`, `nit`, `direccion`, `telefono`, `nombre`, `celular`, `descripcion`, `correo`, `redes_sociales`) VALUES
(1, NULL, NULL, 'ENGLOARTE', '900688009-3', 'AV CRA 96 No 69 b 20', '392 3422', 'IRIS RUSSI', '3183558488', 'Empresa Colombiana líder en la fabricación, venta y alquiler de todo tipo de productos Inflables, juegos de entretenimiento y publicitarios BTL.\r\nENGLOARTE Fabricamos todo tipo de INFLABLES, GLOBOS Y DUMMIES PUBLICITARIOS Fabricamos toda clase de artículos publicitarios de forma masiva para la buena promoción de su empresa y sus productos. Precios negociables, escribanos a ventas@engloarte.com , enviaremos nuestro catalogo para que haga su pedido. \r\nventa alquiler de juegos anivel nacional \r\nsomos directamente fabrica pregunte por nuestros descuentos \r\nVisítenos en nuestra web site:\r\nhttp:// www.engloarte.com\r\n', 'gerencia@engloarte.com', 'ACEBOOK@TODOENINFLABLESYEVENTOS'),
(2, NULL, NULL, 'BANQUETES DAQUIRY', '1022399572-5', '', '6831073', 'GIOVANY', '3108112819', 'Banquetes Daiquiry 👌\r\nEventos dentro y fuera de la ciudad \r\nDescubre el espacio ideal para tus eventos empresariales y fin de año.\r\nContamos con canchas, inflables, circuito tipo desafío caballos entre otros. \r\n👉Nos caracterizamos por BRINDAR Calidad, Puntualidad y Cumplimiento. Con más de 20 años de experiencia y excelencia. 👈\r\nGrados, Bautizos ,FiestasTematicas ,Catering ,Eventos,Decoracion,Bautizos.', 'banquetes_daiquiry@hotmail.com', 'FACEBOOK Banquetes Daiquiry'),
(3, NULL, NULL, 'PELUQUERIA CARLOS MARIO', '', 'CALLE 64G No 98A-24 ', '', 'FRANCIA', '3194980622', 'NUEVO PRODUCTO Peinado Capilar 50% de Descuento 4 A 5 MESES PELO LISO SIN NECESIDAD DE PLANCHA RESULTADOS GARANTIZADOS', 'FRANCIAMENECES357@HOTMAIL.COM', ''),
(4, NULL, NULL, 'PELUQUERIA ANA JUDITH PRIETO', '', 'CALLE 64B BIS 85-66', '', 'JUDITH PRIETO', '3143080158', 'LUCE SIEMBRE BELLA Y HERMOSA\r\nCon los servicios que te brindamos en:\r\n#AnaJudithPrieto ❗ 👩👩‍🦰 Belleza e Imagen\r\n', '', ''),
(5, NULL, NULL, 'BELLEZA CABELLO Y UÑAS', '', 'Calle 72 # 70-24 2do Piso', '', '', '316 8316485', 'BELLEZA CABELLO Y UÑAS ES UN NUEVO CONCEPTO PARA VERTE Y SENTIRTE BIEN', '', 'FACEBOOK@Bellezza.peluqueria01'),
(6, NULL, NULL, 'CEDECA ACADEMIA DE BELLEZA', '901000718-8', 'AVENIDA CALLE 72 No. 77A-37 2DO PISO', '2527187', 'GILMA CAPERA', '', 'Somos una Academia de Belleza con 33 años de experiencia, contamos con Programas Técnicos por Competencia Laboral en Belleza. Conócenos!Programa Técnico en Peluquería\r\nPrograma Técnico en Cuidado Estético de Manos y Pies\r\nPrograma Técnico en Maquillaje Artístico y Decorativo\r\nCursos libres en Belleza\r\n', 'INFO@CEDECA.EDU.CO', ''),
(7, NULL, NULL, 'SURTIDORA DE AVES', '1015459001-4', 'CARRERA 80 o. 69A-60', '2523490', 'JOSE LEON', '3203364124', 'Disfruta del  mejor pollo doradito y crocantico,Arroz con Pollo,Chuleta Valluna y mucho más!\r\n\r\nSURTIDORA DE AVES.👈Somos tradición, frescura y sabor Colombiano.', '', ''),
(8, NULL, NULL, 'arcades restaurante é pizzeria', '', 'cll 66a 77a 20 san marcos', '', 'daniel arturo franco', '', 'la mejor opción para pasar un rato agradable y probar las mejores pizzas y platos italianos con un servicio excelente', '', 'FACEBOOK Arcade\'s Restaurante Pizzeria'),
(9, NULL, NULL, 'ORIGENE´S LATIN & ASIAN FOOD', '', 'Carrera 77a No. 64i - 27', '5489094', 'MANUEL ALVARES', '3219313151', 'Restaurante de comida asiática fusión\r\nRestaurante con influencia peruana\r\nRestaurante vegetariano\r\nCocina preparada al wok y teppanyaki', '', 'FACEBOOK @restauranteorigenesbogota'),
(10, NULL, NULL, 'CONSULTORIO VETERINARIO INU-NEKO PETS', '1014231716-8', 'CALLE 70 A No 88A-41 BARRIO LA FLORIDA', '9244767', 'DRA ESTEFANIA TOVAR GARCIA', '3214359234', 'Consulta médica, medicina biológica, vacunación, profilaxis,cirugía Ambulatoria, peluquería, variedad en alimentos,accesorios para tu mascota y mucho mas.', 'vet.inunekopets@gmail.com', 'FACEBOOK Consultorio Veterinario Inu Neko Pets'),
(11, NULL, NULL, 'ANIMAL CITY', '900562461-8', 'AV CALLE 63 No 80 16', '251 49 05', 'LUIS LEAL', '3202227661-3132624697', 'ANIMAL CITY CLINICA VETERINARIA\r\nNuestra experiencia al servicio de tu mascota❗\r\n👉10% DESCUENTO EN BAÑO PARA TU MASCOTA SERVICIO DE URGENCIAS 24 HORAS', 'animalcity@animalcity.com.co', 'FACEBOOK Clínica Veterinaria Animal City'),
(12, NULL, NULL, 'clinica veterinaria animal heart', '1014214113-5', 'calle 64f No 99-06', '', 'carol gomez', '3228251568', '10% DE DESCUENTO EN BAÑO Y PELUQUERÍA CANINO Y FELINO  \"Tu mascota hace parte de nuestra familia\"', 'cvanimalheart@gmail.com', ''),
(13, NULL, NULL, 'VETERINARIA ENTRE PERROS Y GATOS', '1032390499', 'CALLE 65 No. 96A - 41', '9072959', 'SANDRA ABRIL', '3209679870', 'Nuestra veterinaria cuenta con el servicio medico veterinario, peluquería, accesorios y alimentos para el mejor amigo de nosotros nuestras mascota; con personas profesionales en cada área, quienes con mucho amor van a procurar servir a tu mascota como si fueran suyas. ', 'CVENTREPERROSYGATOS@GMAIL.COM', ''),
(14, NULL, NULL, 'animal help', '1022374298-5', 'CALLE 70A No 90-09 florida blanca', ' 3095413', 'erika ricaute', '3208980808', '20% de Descuento en Consulta,Veterinario · Peluquería para mascotas · Centro médico', 'animalhelpvet@hotmail.com', 'FACEBOOK @animalshelpvet'),
(15, NULL, NULL, 'estetica dental mery mendoza', '36304991', 'calle 64h nO 77 A 17 VILLA LUZ', '', 'MERY MENDOZA', '313 407 75 30-318 712 04 45', 'Una sonrisa hermosa es mucho mas que dientes blancos, una bella sonrisa es el reflejo de una boca saludable con encías y dientes sanos y estéticos.\r\nCategories', '', 'FACEBOOK@merymendozaesteticadental'),
(16, NULL, NULL, 'CLINICA ODONTOLOGICA SONRRISA IDEAL', '90111742-9', 'AV CALLE 72#69C41 SEGUNDO PISO', '2509902-7041644', 'SONIA PATRICIA CALDERON', '', 'Servicios Odontológicos en Odontología General, Ortodoncia, Endodoncia, Implantología, Rehabilitación Oral, Higiene Oral, Periodoncia, Cirugía Oral.', '', 'FACEBOOK@idealsonrisa'),
(17, NULL, NULL, 'DENTA PLUSS', '93101480-1', 'AV CALL 72 No 100b 04', '4562685', 'MILENA BONILLA', '', ' te invitamos a que nos visites y obtén nuestro descuento en Limpiezas Dentales Av. Calle 72 No. 100B-04 Álamos Norte o Agenda tu cita al 350 2933354', '', '@clinicaodontologicadentapluss'),
(18, NULL, NULL, 'AYDENT CLINICA ODONTOLOGICA', '9004344110-8', 'CRA 90 No 69A 27', '4562685', 'DIANA USME', '', 'Clinica Odontologica Aydent Lideres en servicios odontologicos', '', ''),
(19, NULL, NULL, 'CENTRO DE EDUCACIÓN LABORAL ', '19454644-0', 'AV CALLE 72 (AV CALLE 68) No. 77A-73', '5440960-5454268', 'YOLANDA CUBAQUE', '', 'Termina satisfactoriamente tu bachillerato, acércate a nuestra institución o llámanos. Tenemos una propuesta accesible para ti.', 'rectoria@cel.edu.co', 'FACEBOOK Centro De Educación Laboral Cel,'),
(20, NULL, NULL, 'CORPORACION TECNOLOGICA EMPRESARIAL', '83009890-1', 'AV CALLE 72 No 77a 30', '4908793', 'CESAR ALARCON', '317 440 15 90', 'La Corporación Tecnológica Empresarial \" Corpoempresarial\", es una organización de educación que prepara Técnicos Laborales por Competencias y Bachilleres Jovénes y Adultos para la formación de empresas con capacidad académica emprendedora, brindando programas de educación de calidad a bajos costos y en tiempos cortos', 'direccionacademicacte@corpoempresarial.edu.co', ' FACEBOOK @CorporacionTecnologicaEmpresarial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_categorie`
--

CREATE TABLE `shop_categorie` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_barrio` int(10) UNSIGNED NOT NULL,
  `id_categorie` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shop_categorie`
--

INSERT INTO `shop_categorie` (`id`, `created_at`, `updated_at`, `id_shop`, `id_barrio`, `id_categorie`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, 19),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 4, 19),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2, 1),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1, 1),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 6, 1),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 4, 12),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 4, 3),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 5, 3),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 1, 3),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 3, 5),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 1, 5),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 2, 5),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 2, 5),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 3, 5),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 1, 4),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 6, 4),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 2, 4),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 3, 4),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 4, 7),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_img`
--

CREATE TABLE `shop_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `url_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shop_img`
--

INSERT INTO `shop_img` (`id`, `created_at`, `updated_at`, `id_shop`, `url_imagen`, `url_logo`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 'ANA_JUDITH_PRIETO/PELUQUERIA_JUDIT_PRIETO.jpg', 'ANA_JUDITH_PRIETO/PELUQUERIA_JUDIT_PRIETO_LOGO.jpg'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 'ANIMAL_CITY/Animal_City_Grupal_FINAL.tif', 'ANIMAL_CITY/logo_animal_city.jpg'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 'animal_heart/estudiar_veterinaria.jpg', ''),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 'ARCADES/imagen_1.png', 'ARCADES/logo.png'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'BANQUETES_DAIQUIRY/imagen_1.png', 'BANQUETES_DAIQUIRY/logo.png'),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 'BELLEZA_CABELLO _U', 'BELLEZA_CABELLO _U'),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 'CDECA/LOGO_CEDECA.png', ''),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 'CORPORACION_TECNOLOGICA_EMPRESARIAL/las_universidades.jpg', 'CORPORACION_TECNOLOGICA_EMPRESARIAL/logo.png'),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'ENGLOARTE/imagen_1.jpg', 'ENGLOARTE/logo.jpg'),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 'entre_perros_y_gatos/imagen_1.jpg', 'entre_perros_y_gatos/VETERINARIA_ENTRE_PERROS_Y_GATOS.jpg'),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 'INU_NEKO_PETS/consulta_veterinaria.jpg', 'INU_NEKO_PETS/logo.jpg'),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 'ORIGENES/ORIGENE', 'ORIGENES/logo.png'),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, '', 'peluqueria_carlos_mario/logo.jpg'),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 'SONRISA_IDEAL/imagen_1.jpg', 'SONRISA_IDEAL/logo.png'),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 'SURTIDORA_DE_AVES/imagen_1.jpg', 'SURTIDORA_DE_AVES/SURTIDORA_DE_AVES.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_neighborhood`
--

CREATE TABLE `shop_neighborhood` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_barrio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `neighborhood_id_localidad_foreign` (`id_localidad`);

--
-- Indices de la tabla `neighborhood_categorie`
--
ALTER TABLE `neighborhood_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `neighborhood_categorie_id_categorie_foreign` (`id_categorie`),
  ADD KEY `neighborhood_categorie_id_neighborhood_foreign` (`id_neighborhood`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shop_categorie`
--
ALTER TABLE `shop_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categorie_id_shop_foreign` (`id_shop`),
  ADD KEY `shop_categorie_id_categorie_foreign` (`id_categorie`),
  ADD KEY `shop_categorie_id_barrio_foreign` (`id_barrio`);

--
-- Indices de la tabla `shop_img`
--
ALTER TABLE `shop_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_img_id_shop_foreign` (`id_shop`);

--
-- Indices de la tabla `shop_neighborhood`
--
ALTER TABLE `shop_neighborhood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_neighborhood_id_shop_foreign` (`id_shop`),
  ADD KEY `shop_neighborhood_id_barrio_foreign` (`id_barrio`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `neighborhood_categorie`
--
ALTER TABLE `neighborhood_categorie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `shop_categorie`
--
ALTER TABLE `shop_categorie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `shop_img`
--
ALTER TABLE `shop_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `shop_neighborhood`
--
ALTER TABLE `shop_neighborhood`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD CONSTRAINT `neighborhood_id_localidad_foreign` FOREIGN KEY (`id_localidad`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `neighborhood_categorie`
--
ALTER TABLE `neighborhood_categorie`
  ADD CONSTRAINT `neighborhood_categorie_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `neighborhood_categorie_id_neighborhood_foreign` FOREIGN KEY (`id_neighborhood`) REFERENCES `neighborhood` (`id`);

--
-- Filtros para la tabla `shop_categorie`
--
ALTER TABLE `shop_categorie`
  ADD CONSTRAINT `shop_categorie_id_barrio_foreign` FOREIGN KEY (`id_barrio`) REFERENCES `neighborhood` (`id`),
  ADD CONSTRAINT `shop_categorie_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `shop_categorie_id_shop_foreign` FOREIGN KEY (`id_shop`) REFERENCES `shop` (`id`);

--
-- Filtros para la tabla `shop_img`
--
ALTER TABLE `shop_img`
  ADD CONSTRAINT `shop_img_id_shop_foreign` FOREIGN KEY (`id_shop`) REFERENCES `shop` (`id`);

--
-- Filtros para la tabla `shop_neighborhood`
--
ALTER TABLE `shop_neighborhood`
  ADD CONSTRAINT `shop_neighborhood_id_barrio_foreign` FOREIGN KEY (`id_barrio`) REFERENCES `neighborhood` (`id`),
  ADD CONSTRAINT `shop_neighborhood_id_shop_foreign` FOREIGN KEY (`id_shop`) REFERENCES `shop` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
