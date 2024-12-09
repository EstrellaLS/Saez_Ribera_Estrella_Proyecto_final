-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2024 a las 19:21:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE `campos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `activo` set('0','1') NOT NULL,
  `logotipo` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campos`
--

INSERT INTO `campos` (`id`, `nombre`, `activo`, `logotipo`) VALUES
(1, 'Retrato', '1', '45.jpg'),
(2, 'Naturaleza', '1', '6.jpg'),
(3, 'Macro', '1', '27.jpg'),
(4, 'Street photography', '1', '41.jpg'),
(5, 'Fisiogramas', '1', '14.jpg'),
(6, 'Bodegones', '1', '32.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `socio` bigint(20) UNSIGNED NOT NULL,
  `proyecto` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `texto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`socio`, `proyecto`, `fecha`, `texto`) VALUES
(1, 2, '2022-03-21', 'Este proyecto está muy bn.'),
(5, 3, '2022-02-20', 'Increible!!'),
(5, 5, '2022-02-20', 'Este proyecto siempre sorprende...'),
(6, 1, '2022-02-20', 'Mi foto fav'),
(6, 5, '2022-02-20', 'Demasiado amarillos...'),
(6, 7, '2014-11-10', 'No está ni mal :))'),
(7, 7, '2024-02-04', 'Me encanta!!!'),
(7, 23, '2024-12-09', 'Precioso!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muestras`
--

CREATE TABLE `muestras` (
  `proyecto` bigint(20) UNSIGNED NOT NULL,
  `campo` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `muestras`
--

INSERT INTO `muestras` (`proyecto`, `campo`, `fecha`) VALUES
(1, 1, '2015-06-17'),
(2, 3, '2028-02-10'),
(3, 2, '2022-10-20'),
(4, 2, '2022-10-05'),
(5, 3, '2023-03-15'),
(6, 2, '2026-07-01'),
(7, 2, '2022-07-10'),
(8, 2, '2022-03-23'),
(9, 2, '2022-12-10'),
(10, 2, '2029-12-03'),
(11, 4, '2019-08-19'),
(12, 4, '2019-01-28'),
(13, 2, '2020-01-19'),
(14, 5, '2020-01-06'),
(15, 4, '2021-10-10'),
(16, 6, '2022-03-10'),
(17, 4, '2020-07-10'),
(18, 2, '2018-09-19'),
(19, 4, '2022-05-31'),
(20, 1, '2022-05-08'),
(21, 4, '1900-05-01'),
(22, 2, '2024-02-10'),
(23, 1, '2019-04-03'),
(24, 3, '2017-06-22'),
(25, 3, '2003-12-16'),
(26, 3, '2022-12-17'),
(27, 3, '1898-08-08'),
(28, 6, '1898-08-02'),
(29, 6, '2008-07-31'),
(30, 6, '2022-07-10'),
(31, 6, '1999-02-11'),
(32, 6, '2003-07-26'),
(33, 4, '2002-07-12'),
(34, 4, '2005-03-26'),
(35, 2, '1993-07-04'),
(36, 4, '2006-09-20'),
(37, 2, '2022-07-10'),
(38, 2, '2006-09-20'),
(39, 2, '2000-07-14'),
(40, 1, '2022-07-10'),
(41, 4, '2022-07-10'),
(42, 1, '1993-03-16'),
(43, 1, '1997-05-13'),
(44, 1, '2015-10-09'),
(45, 1, '2008-07-11'),
(46, 6, '2005-10-13'),
(47, 5, '1990-04-16'),
(48, 5, '2000-10-19'),
(49, 5, '1998-07-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `foto` varchar(55) NOT NULL,
  `activo` set('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `nombre`, `descripcion`, `foto`, `activo`) VALUES
(1, 'Abuela', 'En este retrato monocromático, una figura anciana emerge como símbolo de fortaleza y vulnerabilidad. Vestida con una camisa de cuadros, la persona se apoya suavemente en una barandilla, sugiriendo un diálogo silencioso entre el cuerpo y el espacio que lo sostiene. La iluminación directa resalta cada línea del rostro, trazando un mapa de vivencias y experiencias acumuladas a lo largo de los años. El fondo dividido entre blanco y negro crea una tensión visual que encapsula el equilibrio entre luz y sombra, juventud y envejecimiento, esperanza y resignación. Este retrato nos invita a reflexionar sobre el paso del tiempo y la resiliencia del espíritu humano.', '1.jpg', '1'),
(2, 'Margarita', 'La imagen es una fotografía en blanco y negro de primer plano de una margarita. Se centra en el disco central y los pétalos, mostrando una gran cantidad de detalle en la textura y las sombras de la flor. El fondo está oscuro y fuera de foco, lo que hace que la margarita destaque.', '2.jpg', '1'),
(3, 'Contraste', 'La imagen muestra la silueta de ramas y hojas de un árbol contra un fondo claro, probablemente el cielo. Las ramas se extienden en varias direcciones y las hojas tienen una forma alargada y puntiaguda, destacándose en negro debido al contraste con el fondo iluminado.', '3.jpg', '1'),
(4, 'Cámara', 'La imagen muestra una cámara Nikon D3200 con un objetivo de 18-55mm. La cámara está colocada sobre una superficie clara, y tiene una correa negra con el logo de Nikon en amarillo. Al fondo, se puede ver un suelo de baldosas grises.', '4.jpg', '1'),
(5, 'Resina', 'La imagen muestra la textura de la corteza de un árbol. La superficie es rugosa, con diversas capas de color marrón y gris. En el centro, hay pequeñas gotas de resina o savia de color amarillo dorado brillando. La imagen está en un enfoque cercano, destacando los detalles de la madera y las gotas.', '5.JPG', '1'),
(6, 'Verde', 'La imagen muestra un conjunto de ramas de un árbol con hojas verdes. La luz del sol se filtra a través de las hojas, creando un efecto de iluminación brillante y resaltando los tonos verdes. Las ramas están distribuidas de manera que se entrecruzan, añadiendo un efecto estético natural a la composición.', '6.JPG', '1'),
(7, 'Marco natural', 'La imagen muestra un gato de color naranja mirando hacia la cámara. Está en un entorno al aire libre, posiblemente en un jardín o un bosque pequeño, rodeado de vegetación. Las hojas desenfocadas en el primer plano crean un efecto artístico, enmarcando al gato en el centro. La luz natural resalta las características del pelaje del gato y el color verde del entorno.\n', '7.JPG', '1'),
(8, 'Avispa', 'La imagen muestra una hermosa flor de color rojo con pétalos alargados y brillantes. Volando cerca de la flor hay una abeja o avispa. El fondo es difuso con colores suaves, lo que resalta la flor y el insecto en primer plano.', '8.JPG', '1'),
(9, 'Hojas', 'La imagen muestra un conjunto de hojas verdes alargadas y puntiagudas. Las hojas parecen de una planta con un tono verde brillante y se encuentran en varios niveles, creando un efecto denso y natural. El fondo está desenfocado, destacando las hojas en primer plano.', '9.JPG', '1'),
(10, 'Pino', 'La imagen muestra una rama de árbol contra el cielo despejado. La rama está en la parte derecha de la imagen y las pequeñas hojas o agujas se destacan claramente debido al contraste con el fondo azul del cielo.', '10.JPG', '1'),
(11, 'Zapatillas', 'En la imagen se ven las piernas de una persona usando pantalones negros desgastados y zapatos deportivos. Los zapatos son de color azul y mostaza, y tienen cordones blancos. La persona está sentada sobre una superficie de concreto gris que tiene algunas hojas caídas pequeñas esparcidas alrededor.', '11.jpg', '1'),
(12, 'Coche', 'La imagen muestra a una persona conduciendo un coche pequeño, de un solo asiento, de color azul. El entorno está desenfocado, lo que sugiere que el vehículo se está moviendo rápidamente. El fondo muestra vegetación y una carretera. El diseño del coche es compacto y moderno.', '12.jpg', '0'),
(13, 'Caida', 'La imagen muestra una escena borrosa con un efecto de movimiento vertical. Se aprecian colores predominantes en tonos verdes y amarillos, que podrían corresponder a árboles o vegetación. En una parte de la imagen, se ve una forma oscura que parece volar, posiblemente una hoja o un pájaro pequeño. La luz se filtra entre los elementos, creando un ambiente natural y etéreo.', '13.jpg', '1'),
(14, 'Pintando con luz', 'La imagen muestra un patrón abstracto de líneas luminosas formadas en espirales sobre un fondo oscuro. Las líneas parecen trazos de luz que giran alrededor de un centro, creando un efecto visual dinámico y vibrante.', '14.JPG', '1'),
(15, 'Alhambra', 'La imagen muestra una vista panorámica de un conjunto arquitectónico histórico ubicado en una colina verde con árboles alrededor. El paisaje incluye una ciudad al fondo con montañas en el horizonte. El cielo está cubierto de nubes grises, lo que da una atmósfera dramática a la escena.', '15.jpg', '1'),
(16, 'Tic tac', 'La imagen muestra muchos relojes de bolsillo con cadenas colgando. Los relojes parecen estar en movimiento, creando un efecto de superposición que transmite la idea de la multiplicidad o el paso del tiempo de manera visual. El fondo es negro, lo que hace que los relojes y sus cadenas plateadas destaquen más, añadiendo un contraste notable.', '16.jpg', '1'),
(17, 'Metropolitano en marcha', 'La imagen muestra un tranvía en movimiento perteneciente al \"Metropolitano de Granada\". En el lado del tranvía se puede ver su logo y nombre. El tranvía parece estar circulando por una vía urbana, con edificios reflejados en las ventanas del vehículo. En el fondo, se aprecian escaleras y algunos árboles, lo que indica que está en un entorno urbano. También se puede ver a una persona en el interior del tranvía, probablemente el conductor.', '17.JPG', '1'),
(18, 'Salto', 'En la imagen, se puede ver un gato de color naranja en el aire, aparentemente saltando hacia una mesa. Encima de la mesa hay dos gatos más, uno de color negro y otro con pelaje gris con rayas. En el fondo se observa un jardín con césped verde, plantas y árboles. Además, en el suelo hay un gato blanco caminando. La escena parece ocurrir en un entorno exterior tranquilo y natural.', '18.JPG', '1'),
(19, 'Franccesco', 'La imagen muestra una escena nocturna en una calle urbana. Se observan las luces de los vehículos en movimiento, formando líneas luminosas debido a una exposición prolongada. La calle está bien iluminada por farolas, y al fondo se pueden ver algunos edificios y árboles. También se distingue un paradero o estación con luces y carteles visibles. La atmósfera general es tranquila y urbana.', '19.JPG', '1'),
(20, 'Autoretrato', 'La imagen muestra el reflejo de una persona con una cámara en las manos, capturado en la ventana de un automóvil. En el fondo se observa un cielo azul con nubes blancas y la silueta de un árbol a un lado. Las líneas horizontales en la ventana indican el calentador trasero del coche.', '20.JPG', '1'),
(21, 'Zoom In', 'La imagen muestra una escultura de una figura femenina en el centro, con un efecto de desenfoque radial alrededor, lo que da una sensación de movimiento. La figura parece estar en un entorno al aire libre, rodeada de árboles que muestran tonos verdes y amarillos, quizás debido a la luz del sol. La composición crea un efecto visual interesante y dinámico.', '21.JPG', '1'),
(22, 'My pet', 'En la imagen, se observa un primer plano de una cacatúa ninfa, conocida por su cresta distintiva. El ave tiene plumas grises y un parche naranja en su mejilla. El fondo es difuminado y presenta luces brillantes desenfocadas que crean un efecto de bokeh.', '22.JPG', '1'),
(23, 'YO', 'La imagen muestra un ojo humano en primer plano. El iris es de color azul grisáceo, rodeado por un anillo más oscuro. Las pestañas son largas y están claramente visibles. La imagen es nítida y detallada, permitiendo observar la textura del iris y los detalles de los párpados.', '23.JPG', '1'),
(24, 'Máquina de escribir', 'La imagen muestra un primer plano de las teclas de una máquina de escribir antigua. Las teclas son redondas, con bordes metálicos y letras negras en fondo claro. La iluminación es tenue, destacando los reflejos en las teclas.', '24.JPG', '1'),
(25, 'Leyendo', 'La imagen muestra las páginas de un libro abierto, con texto en español visible. Las páginas tienen un aspecto envejecido, de color amarillento. La imagen está enfocada en la parte central, donde se destacan las palabras impresas. La tipografía es clásica, típica de libros impresos en papel.', '25.JPG', '1'),
(26, 'Yeso', 'La imagen muestra un acercamiento de una superficie con textura. Se observan patrones de líneas y pliegues en tonos grises y azulados. Podría tratarse de la textura de una piedra, cristal o material con aspecto translúcido. La imagen presenta variaciones en la intensidad de los tonos, lo que resalta los detalles de los pliegues.', '26.JPG', '1'),
(27, 'Mechero', 'La imagen muestra un encendedor en acción, con chispas brillantes volando en varias direcciones y una llama central intensa. El fondo oscuro resalta el brillo y el movimiento de las chispas, creando un efecto visual dinámico y llamativo.', '27.JPG', '1'),
(28, 'Croissants', 'En la imagen se muestra una composición de cocina. Hay una botella de leche con un diseño de estampado de manchas negras. También hay un batidor de mano metálico. Sobre una tabla de madera se encuentran ingredientes para cocinar: harina con una yema de huevo en el centro y un montoncito de azúcar. A la derecha, hay dos croissants. La imagen transmite una atmósfera de preparación de repostería.', '28.JPG', '1'),
(29, 'Jaque', 'La imagen muestra dos figuras metálicas sobre un tablero de ajedrez. Las figuras representan a dos jinetes a caballo en posiciones opuestas, sosteniendo lo que parece ser una esfera. Los caballos y los jinetes tienen detalles elaborados, y el tablero de ajedrez tiene casillas oscuras y claras. El fondo es oscuro, destacando los detalles de las figuras.', '29.JPG', '1'),
(30, 'Tornillos', 'La imagen muestra un destornillador con un mango transparente de color amarillo y una punta metálica. Junto al destornillador, hay una pila de tornillos metálicos plateados. Detrás, se puede ver una caja de cartón abierta y deteriorada, que parece contener los tornillos. El fondo es oscuro, lo que resalta los objetos en primer plano.', '30.JPG', '1'),
(31, 'Pinzas', 'La imagen muestra varias pinzas de madera para la ropa colgadas de una cuerda. En el centro inferior, hay una pinza de color rojo que destaca entre las demás. El fondo es negro, lo que resalta las pinzas y la cuerda.', '31.JPG', '1'),
(32, 'Pintauñas', 'En la imagen, se observan cuatro botellas de esmalte de uñas sobre una superficie reflectante negra. Las botellas están alineadas horizontalmente y son de diferentes colores. De izquierda a derecha, los colores de los esmaltes son verde fluorescente, amarillo neón, rojo intenso y rojo brillante. Cada botella tiene una tapa negra y la etiqueta indica que contienen 6 ml de producto. La reflexión de las botellas se aprecia claramente en la superficie.', '32.JPG', '1'),
(33, 'Reflejos', 'La imagen muestra una puerta de madera con paneles cuadriculados. Hay un reflejo visible en el vidrio de un pasillo con columnas blancas y una barandilla, que parece estar al otro lado de la puerta. La luz que se filtra resalta el contraste entre las sombras y los detalles de la estructura de madera y el reflejo arquitectónico.', '33.JPG', '1'),
(34, 'Escaleras', 'La imagen muestra una escalera vista desde lo alto, con un pasamanos de metal a la izquierda. Al fondo, hay una persona caminando hacia una zona más iluminada. La escena tiene un aspecto silencioso y tranquilo, con un contraste entre las sombras de las escaleras y la luz al final del pasillo. La persona está de espaldas y lleva ropa oscura.', '34.JPG', '1'),
(35, 'La flor', 'En la imagen se observa una flor anaranjada en primer plano, con hojas verdes alrededor. Al fondo, se puede ver un edificio de piedra, desenfocado, lo que sugiere que está a cierta distancia. El cielo es azul y hay una iluminación natural que resalta los colores de la flor y las hojas.', '35.JPG', '1'),
(36, 'Arquitectura', 'La imagen muestra un edificio de estilo gótico, resaltado por la luz del sol al atardecer. Destacan las torres ornamentadas y las ventanas con arcos ojivales. El cielo está despejado y de un azul intenso, y se puede ver un pájaro volando cerca de la estructura. La arquitectura es detallada, con elementos decorativos en la parte superior y un techo de tejas.', '36.JPG', '1'),
(37, 'Chimenea', 'La imagen muestra una hoguera encendida con varias llamas amarillas y naranjas. Se pueden ver algunos troncos parcialmente quemados y brasas incandescentes en la parte inferior. El fondo es oscuro, resaltando el brillo del fuego.', '37.JPG', '1'),
(38, 'Nieve', 'La imagen muestra una escena nocturna de una calle nevada. Los árboles están cubiertos de nieve y hay un banco vacío en el lado derecho. Se pueden ver luces de la calle iluminando la escena, haciendo que la nieve y el pavimento mojado brillen. También hay edificios y luces de comercios al fondo. La atmósfera es tranquila y refleja un típico paisaje invernal.', '38.JPG', '1'),
(39, 'Escarcha', 'La imagen muestra un primer plano de un conjunto de plantas verdes cubiertas de gotas de rocío. Se pueden apreciar hojas de diferentes formas y tamaños, algunas de ellas alargadas y otras más redondeadas. Las gotas de agua brillan en la luz, destacando sobre el verde de las hojas y creando un efecto fresco y húmedo.', '39.jpg', '1'),
(40, 'Home', 'La imagen muestra una cacatúa de moño posada sobre un sofá o cojín claro. En el fondo, hay una estantería llena de libros coloridos. A la derecha, se ve una lámpara encendida con una pantalla amarilla que ilumina suavemente el área. La escena tiene una atmósfera cálida y acogedora.', '40.JPG', '1'),
(41, 'Jeneralife', 'La imagen muestra un jardín con una serie de fuentes de agua alineadas que crean arcos simétricos de chorros de agua. Estas fuentes están ubicadas en un camino flanqueado por setos cuidadosamente recortados. Al fondo, se observa un edificio de estilo árabe con arcos y ladrillos de color marrón claro. La luz del sol hace que las gotas de agua brillen intensamente. Hay personas alrededor del área observando el espectáculo del agua.', '41.jpg', '1'),
(42, 'Inspiración', 'La imagen muestra una cacatúa ninfa, conocida como \"Nymphicus hollandicus\". El ave tiene un plumaje gris con mejillas de color naranja brillante y una cresta eréctil en la cabeza. Está posada sobre un fondo oscuro con patrones de líneas y puntos en tonos verdes y azules.', '42.jpg', '1'),
(43, 'Ella', 'En la imagen se observa una cacatúa ninfa (Nymphicus hollandicus), un tipo de ave pequeña y doméstica. Su plumaje es principalmente gris con un distintivo color naranja en las mejillas. La cresta en su cabeza está erguida y su pico es corto y curvado. El fondo es oscuro, lo que resalta la figura del ave.', '43.JPG', '1'),
(44, 'Calidez', 'La imagen muestra una cacatúa ninfa con plumaje gris y mejillas de un tono anaranjado. Tiene una cresta levantada característica y está en un entorno interior con iluminación suave.', '44.JPG', '1'),
(45, 'Retrato', 'En la imagen se muestra un close-up de una persona que lleva gafas de sol redondas. En las lentes de las gafas se refleja a otra persona que está tomando una foto con una cámara. Al fondo se puede ver una calle con edificios y un árbol. La imagen también muestra un pedazo de arte urbano con grafiti. La persona que lleva las gafas tiene un piercing septum en la nariz. ', '45.JPG', '1'),
(46, 'Fuego y hielo', 'La imagen muestra dos cubos de hielo colocados sobre una superficie reflectante. Detrás de ellos hay llamas de color azul y naranja que parecen estar elevándose. El fondo es completamente negro, lo que resalta el contraste entre el hielo y el fuego. Esta imagen capta un contraste visual entre los elementos fríos y cálidos.', '46.jpg', '1'),
(47, 'Icono', 'La imagen muestra formas abstractas creadas con luces de neón en un fondo negro. Hay trazos de luz roja y verde, formando un diseño circular y líneas curvas. La composición es visualmente dinámica y llamativa, evocando un sentido de movimiento y energía.', '47.JPG', '1'),
(48, 'Navidad', 'La imagen muestra un efecto de larga exposición capturando trazos de luz que crean patrones complejos de líneas luminosas en movimiento, formando una especie de espiral de luz sobre un fondo oscuro. La luz parece ser de un tono amarillento o blanco y se despliega en múltiples direcciones, proporcionando un aspecto dinámico y artístico.', '48.JPG', '1'),
(49, 'Colores', 'La imagen muestra a una persona con un efecto de exposición prolongada, creando una ilusión de movimiento o desdoblamiento. La figura aparece en tonos verdes y rojos brillantes sobre un fondo oscuro. El juego de luces y sombras da un aspecto artístico y misterioso a la fotografía, destacando el rostro y el cabello de la persona.', '49.JPG', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `nick` varchar(55) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `activo` set('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `nombre`, `nick`, `pass`, `activo`) VALUES
(0, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(1, 'Carlos', 'carlos', 'dc599a9972fde3045dab59dbd1ae170b', '0'),
(2, 'Juan', 'juan', 'a94652aa97c7211ba8954dd15a3cf838', '0'),
(3, 'Pedro', 'pedro', 'c6cc8094c2dc07b700ffcc36d64e2138', '1'),
(4, 'Matilda', 'matilda', '91f2b7dfd8fc3d900133c356f92c4e20', '1'),
(5, 'Esteban', 'esteban', '69ba109c895658f4c0f163c5fd8c4898', '0'),
(6, 'David', 'david', '172522ec1028ab781d9dfd17eaca4427', '1'),
(7, 'Estrella', 'estre', 'ac17dbc40ce96a490f21363d2a5f3e74', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`socio`,`proyecto`),
  ADD KEY `ce_coment_proyecto` (`proyecto`);

--
-- Indices de la tabla `muestras`
--
ALTER TABLE `muestras`
  ADD PRIMARY KEY (`proyecto`,`campo`),
  ADD KEY `ce_campoV_plataf` (`campo`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campos`
--
ALTER TABLE `campos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `ce_coment_proyecto` FOREIGN KEY (`proyecto`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ce_coment_socios` FOREIGN KEY (`socio`) REFERENCES `socios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `muestras`
--
ALTER TABLE `muestras`
  ADD CONSTRAINT `ce_campoV_plataf` FOREIGN KEY (`campo`) REFERENCES `campos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ce_campoV_proyectos` FOREIGN KEY (`proyecto`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
