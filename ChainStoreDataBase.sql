-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: games
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesorio`
--

DROP TABLE IF EXISTS `accesorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesorio` (
  `idAccesorio` int NOT NULL AUTO_INCREMENT,
  `material` varchar(45) DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idAccesorio`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `accesorio_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesorio`
--

LOCK TABLES `accesorio` WRITE;
/*!40000 ALTER TABLE `accesorio` DISABLE KEYS */;
INSERT INTO `accesorio` VALUES (1,'Plastico ABS',9),(2,'Plastico ABS',10),(3,'Plastico ABS',11);
/*!40000 ALTER TABLE `accesorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `idCarrito` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `comprado` tinyint(1) DEFAULT '0',
  `onCar` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idCarrito`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (3,'01/01/2023',1,5,1,0,0),(4,'01/01/2023',1,2,2,0,0),(5,'01/01/2023',2,1,1,0,1),(6,'01/01/2023',2,2,1,0,1),(7,'01/01/2023',3,5,1,0,1),(8,'01/01/2023',3,3,1,0,1),(9,'01/01/2023',1,3,1,0,1),(13,'4/7/2023',1,1,2,0,0),(14,'4/7/2023',1,11,2,0,1),(15,'4/7/2023',1,6,1,0,0),(16,'4/7/2023',1,10,1,0,1),(17,'4/7/2023',1,4,1,0,0),(18,'4/7/2023',1,5,2,0,0);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `primerApellido` varchar(45) DEFAULT NULL,
  `segundoApellido` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(100) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `telefonoMovil` varchar(10) DEFAULT NULL,
  `telefonoCasa` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Pedrito','Sola','',50,'Ped','1234','','','','token','4770000000','4770000000','pedro.sola@hotmail.com'),(2,'Xavier','Lopez','',99,'Chabelo','1234','','','','token','4770000000','4770000000','chabelo@hotmail.com'),(3,'Pedro','Sanchez','',30,'MrBeast','1234','','','','token','4770000000','4770000000','mr.beast@hotmail.com'),(4,'Dwyane ','Johnson','',0,'TheRock','1234','','','','token','','',''),(5,'Vin','Gasolina','',0,'Toreto','1234','','','','token','','','');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `precioUnitario` double DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `idCarrito` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `idCarrito` (`idCarrito`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idCarrito`) REFERENCES `carrito` (`idCarrito`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (2,0,1179,21.12592124938965,-101.6808090209961,NULL,'3/30/2023',1,1),(3,1,7599,21.12592124938965,0,NULL,'4/7/2023',2,3),(4,1,1699,21.20139503479004,-101.68081665039062,NULL,'4/7/2023',1,6),(5,2,1649,21.201396942138672,-101.6808090209961,NULL,'4/7/2023',1,8),(8,1,1699,0,0,NULL,'7/4/2023',1,1),(9,1,1699,21.201400756835938,-101.68080139160156,NULL,'4/7/2023',1,6),(10,1,9499,0,0,3,'4/7/2023',1,5),(11,2,1179,0,0,13,'7/4/2023',1,1),(12,2,1179,0,0,NULL,'7/4/2023',2,1),(13,2,1499,0,0,4,'4/7/2023',1,2),(14,1,15299,0,0,9,'4/7/2023',1,3),(15,1,15299,0,0,9,'4/7/2023',1,3),(16,2,399,0,0,14,'4/7/2023',1,11),(17,1,9499,0,0,3,'4/7/2023',1,5),(18,5,7599,21.201406478881836,-101.6807861328125,NULL,'4/7/2023',1,4);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consola`
--

DROP TABLE IF EXISTS `consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consola` (
  `idConsola` int NOT NULL AUTO_INCREMENT,
  `almacenamiento` varchar(45) DEFAULT NULL,
  `control` tinyint(1) DEFAULT NULL,
  `resolucion` varchar(45) DEFAULT NULL,
  `ram` varchar(45) DEFAULT NULL,
  `tipoDeMemoria` varchar(45) DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idConsola`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `consola_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consola`
--

LOCK TABLES `consola` WRITE;
/*!40000 ALTER TABLE `consola` DISABLE KEYS */;
INSERT INTO `consola` VALUES (1,'512 GB',1,' 2560 px x 1440 px.','10 GB','GDDR6 ',4),(2,'825 GB',1,'3840 px x 2160 px','16GB','GDDR6 ',3),(3,'1 TB',1,'1920 px x 1080 px','8 GB','GDDR6',5);
/*!40000 ALTER TABLE `consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control`
--

DROP TABLE IF EXISTS `control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control` (
  `idControl` int NOT NULL AUTO_INCREMENT,
  `inalambrico` tinyint(1) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `conectoresDeEntrada` varchar(45) DEFAULT NULL,
  `vibracion` tinyint(1) DEFAULT NULL,
  `bluetooth` tinyint(1) DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idControl`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `control_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control`
--

LOCK TABLES `control` WRITE;
/*!40000 ALTER TABLE `control` DISABLE KEYS */;
INSERT INTO `control` VALUES (1,1,'verde','Jack 3.5 mm, USB-C',1,1,6),(2,0,'negro','1 conector de auriculares',1,0,7),(3,1,'azul','Jack 3.5 mm, USB-C',1,1,8);
/*!40000 ALTER TABLE `control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto` (
  `idFoto` int NOT NULL AUTO_INCREMENT,
  `foto` longtext,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idFoto`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,'https://http2.mlstatic.com/D_NQ_NP_644830-MLA50222950634_062022-O.webp',1),(2,'https://ss423.liverpool.com.mx/lg/1050047756_1p.jpg',1),(3,'https://ss423.liverpool.com.mx/lg/1050047756_2p.jpg',1),(4,'https://ss423.liverpool.com.mx/lg/1050047756_3p.jpg',1),(5,'https://cdn.gameplanet.com/wp-content/uploads/2022/11/24121746/resident-evil-4-remake-ps5.jpg?_ga=2.50641257.1914745646.1679197085-1128018023.1679197085&_gl=1*n81248*_ga*MTEyODAxODAyMy4xNjc5MTk3MDg1*_ga_V97PLX1VDX*MTY3OTIwNTY4Ni4yLjEuMTY3OTIwNTcxMC4wLjAuMA..',2),(6,'https://cdn.gameplanet.com/wp-content/uploads/2022/11/20161621/ss-resident-evil-1.jpg?_ga=2.50641257.1914745646.1679197085-1128018023.1679197085&_gl=1*n81248*_ga*MTEyODAxODAyMy4xNjc5MTk3MDg1*_ga_V97PLX1VDX*MTY3OTIwNTY4Ni4yLjEuMTY3OTIwNTcxMC4wLjAuMA..',2),(7,'https://cdn.gameplanet.com/wp-content/uploads/2022/11/20161624/ss-resident-evil-2.jpg?_ga=2.54957419.1914745646.1679197085-1128018023.1679197085&_gl=1*1z0yp3q*_ga*MTEyODAxODAyMy4xNjc5MTk3MDg1*_ga_V97PLX1VDX*MTY3OTIwNTY4Ni4yLjEuMTY3OTIwNTcxMC4wLjAuMA..',2),(8,'https://http2.mlstatic.com/D_NQ_NP_714411-MLA52696806401_122022-O.webp',3),(9,'https://http2.mlstatic.com/D_NQ_NP_802679-MLA52696885129_122022-O.webp',3),(10,'https://http2.mlstatic.com/D_NQ_NP_995465-MLA45731835097_042021-O.webp',4),(11,'https://http2.mlstatic.com/D_NQ_NP_903613-MLA45731831377_042021-O.webp',4),(12,'https://http2.mlstatic.com/D_NQ_NP_903613-MLA45731831377_042021-O.webp',4),(13,'https://http2.mlstatic.com/D_NQ_NP_858605-MLA45308148746_032021-O.webp',5),(14,'https://http2.mlstatic.com/D_NQ_NP_679366-MLA45308148747_032021-O.webp',5),(15,'https://ss423.liverpool.com.mx/xl/1130520908-3p.jpg',5),(16,'https://ss423.liverpool.com.mx/lg/1106013906.jpg',6),(17,'https://ss423.liverpool.com.mx/lg/1106013906_1p.jpg',6),(18,'https://ss423.liverpool.com.mx/lg/1106013906_3p.jpg',6),(19,'https://cdn.gameplanet.com/wp-content/uploads/2022/09/05041000/control-nacon-xbox-1-247x305.jpg',7),(20,'https://cdn.gameplanet.com/wp-content/uploads/2022/09/05041013/control-nacon-xbox-3-247x305.jpg',7),(21,'https://http2.mlstatic.com/D_NQ_NP_972220-MLM53103554750_122022-O.webp',8),(22,'https://http2.mlstatic.com/D_Q_NP_797145-MLM53103554748_122022-R.webp',8),(23,'https://http2.mlstatic.com/D_Q_NP_686797-MLM53103554749_122022-R.webp',8),(24,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/02184247/0631145843407-base-carga-redlemon-playstation-1-510x630.jpg',9),(25,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/02184249/0631145843407-base-carga-redlemon-playstation-2-510x630.jpg',9),(26,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/02184252/0631145843407-base-carga-redlemon-playstation-4-510x630.jpg',9),(27,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/09174438/850021579517-base-carga-voltedge-xbox-1-510x630.jpg',10),(28,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/09174440/850021579517-base-carga-voltedge-xbox-2-510x630.jpg',10),(29,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/09174442/850021579517-base-carga-voltedge-xbox-3-510x630.jpg',10),(30,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/03115359/0631145841373-base-carga-4-joy-con-redlemon-1-510x630.jpg',11),(31,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/03115401/0631145841373-base-carga-4-joy-con-redlemon-2-510x630.jpg',11),(32,'https://cdn.gameplanet.com/wp-content/uploads/2023/03/03115404/0631145841373-base-carga-4-joy-con-redlemon-4-510x630.jpg',11);
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `condicion` varchar(45) DEFAULT NULL,
  `plataforma` varchar(45) DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `publicador` varchar(45) DEFAULT NULL,
  `lanzamiento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'God Of War 4',1179,'nuevo','PlayStation','1 año','\nKratos vuelve a empezar. Kratos, que vive como un hombre lejos de la sombra de los dioses, se adentrará en la \nsalvaje tierra nórdica junto a \nsu hijo Atreus, y ambos lucharán para completar una misión profundamente personal.\n','SONY','20 de Abril 2018'),(2,'Resident Evil 4 (remake)',1499,'preventa','PlayStation, Xbox','1 año','\nResident Evil 4 es un remake del Resident Evil 4 original del 2005.\n\nSurvival Horror de última generación reimaginado para el año 2023.\n\nResident Evil 4 conserva la esencia del juego original, a la vez que introduce mecánicas de juego actualizadas,\nuna historia reimaginada, e impresionantes gráficos de última generación que lo convierten\nen la experiencia de Survival Horror definitiva en la cual se cruzan la vida y la muerte, el terror y la catarsis.\n','CAMPCOM','24 de Marzo 2023'),(3,'CONSOLA 5 BUNDLE GOD OF WAR RAGNAROK',15299,'nuevo','PlayStation 5','5 años','Únete a Kratos y Atreus en un viaje mítico en busca de respuestas y aliados antes de que Ragnarök llegue. \nCon el telón de fondo de los reinos nórdicos destruidos, sé testigo de la dinámica cambiante de la relación padre-hijo mientras se\n preparan para la guerra.','SONY','30 de Noviembre 2022'),(4,'CONSOLA XBOX SERIES S',7599,'nuevo','XSX','3 años','Disfruta de una velocidad y rendimiento de nueva generación con nuestra biblioteca digital más grande hasta la fecha. \n Disfruta de mundos más dinámicos y tiempos de carga más rápidos, y agrega Xbox Game Pass Ultimate (la suscripción se vende por separado) \n para jugar a títulos nuevos el mismo día de su lanzamiento. Además, disfruta de cientos de juegos de alta calidad.','MICROSOFT','10 de Noviembre 2020'),(5,'PlayStation edición Bundle God of War Ragnarok',9499,'nuevo','PS4','3 años','Disfruta de una PS4 más estilizada y compacta, entrega la energía de juego impresionante que siempre es para los jugadores. \n Tambien, disfruta de colores increíblemente vivos y brillantes con los asombrosos gráficos HDR.\n\nUn 30% más delgada y un 16% más ligera que el modelo de PS4 original.','SONY','16  de Diciembre 2022'),(6,'Control joystick Microsoft Xbox Wireless Series X|S electric volt',1699,'nuevo','Xbox','1 año','\nXbox Wireless Controller – Electric Volt\n\n-Experimente el diseño modernizado del controlador inalámbrico Xbox con superficies esculpidas y geometría refinada para mayor comodidad y control sin esfuerzo durante el juego.\n– Manténgase en el objetivo con agarre texturizado en los gatillos, parachoques y carcasa trasera y con un nuevo D-pad híbrido para una entrada precisa pero familiar.\n– Personaliza la asignación de botones con la aplicación Accesorios de Xbox para personalizar el mando.\n-Conecte cualquier auricular compatible con el conector para auriculares de audio de 3,5 mm.\n-Incluye tecnología Xbox Wireless y Bluetooth® para juegos inalámbricos en consolas compatibles, PC con Windows 10, teléfonos Android e iOS y tabletas.\n\nInformación importante:\n\n-Compatible con ciertos dispositivos y versiones de sistemas operativos. Al','MICROSOFT','8 de Mayo 2021'),(7,'CONTROL XBOX ONE NACON PRO',399,'nuevo','Xbox','2 año','\n\n– Diseño compacto con botones de gran tamaño para mayor comodidad, tiempos de reacción más rápidos y menor fatiga de la mano.\n– Libere audio 3D al instante en cualquier consola Xbox accediendo a Dolby Atmos® para auriculares cuando conecte el controlador.\n– Botones de mapa, ajuste la sensibilidad de la palanca del pulgar, ajuste las zonas muertas de activación y mucho más con una aplicación dedicada que permite opciones de personalización avanzadas.\n– Cableado para reducir la latencia, lo que permite tiempos de reacción más rápidos.\n– Joysticks cóncavos con superficie de alto agarre para proporcionar un control de movimiento mejorado.\n– Cable trenzado de nylon largo de 9.8FT/3M que es muy duradero y ultra flexible.\n– El agarre de alto rendimiento proporciona una comodidad superior y un control preciso.\n– Toma de auriculares de 3,5 mm para funciones de audio y chat (auriculares no incluidos)\n','NANOSTDAD','11 de Abril 2022'),(8,'CONTROL PLAYSTATION 5 DUALSENSE BLUE',1649,'nuevo','Playstation 5','1 año','\nEl control inalámbrico DualSense para PS5 ofrece respuesta háptica inmersiva2, gatillos adaptativos dinámicos y un micrófono integrado, todo en un diseño icónico.\n\nRespuesta háptica\nSiente la respuesta física a tus acciones en el juego con los accionadores dobles que reemplazan a los tradicionales motores de vibración. En tus manos, estas vibraciones dinámicas pueden simular la sensación de todo, desde los entornos hasta el retroceso de diferentes armas.\n\nGatillos adaptativos\nExperimenta la tensión y la fuerza variadas cuando interactúes con los entornos y los equipos del juego. Desde tensar la cuerda de un arco cada vez más hasta pisar los frenos de un automóvil a gran velocidad, siéntete físicamente conectado a tus acciones en la pantalla.\n','SONY','17 de Enero 2022'),(9,'BASE DE CARGA PARA CONTROL PLAYSTATION',499,'nuevo','PlayStation','2 años','\nCarga 2 controles de Playstation 5 al mismo tiempo:\n\nNo esperarás mucho tiempo para jugar tus videojuegos ya que cuenta con dos bases para controles de PlayStation 5 para que puedas cargarlos más rápido. ¡Ahorra tiempo y disfruta de tus videojuegos favoritos con un amigo!\n\nRecarga la batería en 3 horas:\n\nEn tan sólo 3 horas, los dos controles estarán totalmente cargados. Conecta la base de carga mediante USB-C a la consola y en menos de lo que te imaginas estarás jugando de nuevo.\n\n','REDLEMON','27 de enero 2023'),(10,'BASE DE CARGA CONTROL XBOX VOLTEDGE BX40',799,'nuevo','Xbox','2 años','\nEl cargador Xbox Voltedge es un dispositivo diseñado para cargar baterías de controles inalámbricos de Xbox. Este cargador utiliza una tecnología de carga rápida que puede durar hasta 15 horas por batería. El cargador tiene una base compacta y elegante que se conecta alámbricamente. También viene con 4 baterías recargables de alta capacidad que se ajustan perfectamente a los controles inalámbricos de Xbox.\n\nTambién tiene luces indicadoras de estado que muestran cuándo las baterías están completamente cargadas y listas para usar. Además, el cargador también cuenta con un circuito protector para evitar sobre cargas, lo que ayuda a prolongar su vida útil.\n\nEs una excelente opción y confiable para cargar las baterías de tu control inalámbrico de Xbox.\n\n','VOLTEDGE','3 de marzo 2023'),(11,'BASE DE CARGA PARA JOY CON NINTENDO SWITCH',399,'nuevo','Nintendo','1 año','\n\nIncreíble capacidad de carga:\n\nPosee cuatro ranuras para cargar hasta dos pares de Joy-Con simultáneamente. Sólo desliza los controles en los rieles de carga y no detengas la diversión. Utilízalo para jugar con un amigo en tu Nintendo Switch o Modelo OLED.\n\nConexión vía USB:\n\nEs increíblemente fácil de utilizar, introduce el conector USB en el puerto del dock o en un adaptador de corriente, desliza los controles en las ranuras y estarán listos para jugar en un par de horas.\n\nDiseño práctico e innovador:\n\nEl tamaño compacto te permite llevarlo siempre contigo o convertir la sala de juegos en un verdadero espacio gamer. Mantén los Joy-Con con la carga suficiente y ordenados para no perderlos de vista.\n','REDLEMON','27 de febrero 2023');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuego`
--

DROP TABLE IF EXISTS `videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videojuego` (
  `idVideoJuego` int NOT NULL AUTO_INCREMENT,
  `desarrollado` varchar(45) DEFAULT NULL,
  `clasificacion` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `trailer` varchar(50) DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idVideoJuego`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuego`
--

LOCK TABLES `videojuego` WRITE;
/*!40000 ALTER TABLE `videojuego` DISABLE KEYS */;
INSERT INTO `videojuego` VALUES (1,'Desarrollado por SIE Santa Monica Studio','Adultos mayores de 18 años','accion, aventura, rpg','https://www.youtube.com/embed/AN3jEjjcZ-k',1),(2,'CAPCOM','Adultos mayores de 18 años','accion, terror','https://www.youtube.com/embed/E69tKrfEQag',2);
/*!40000 ALTER TABLE `videojuego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_accesorio`
--

DROP TABLE IF EXISTS `vista_accesorio`;
/*!50001 DROP VIEW IF EXISTS `vista_accesorio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_accesorio` AS SELECT 
 1 AS `idProducto`,
 1 AS `titulo`,
 1 AS `precio`,
 1 AS `condicion`,
 1 AS `plataforma`,
 1 AS `garantia`,
 1 AS `descripcion`,
 1 AS `publicador`,
 1 AS `lanzamiento`,
 1 AS `idAccesorio`,
 1 AS `material`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_carrito`
--

DROP TABLE IF EXISTS `vista_carrito`;
/*!50001 DROP VIEW IF EXISTS `vista_carrito`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_carrito` AS SELECT 
 1 AS `titulo`,
 1 AS `precio`,
 1 AS `condicion`,
 1 AS `plataforma`,
 1 AS `garantia`,
 1 AS `descripcion`,
 1 AS `publicador`,
 1 AS `lanzamiento`,
 1 AS `idProducto`,
 1 AS `idCarrito`,
 1 AS `fecha`,
 1 AS `cantidad`,
 1 AS `comprado`,
 1 AS `onCar`,
 1 AS `idCliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_consola`
--

DROP TABLE IF EXISTS `vista_consola`;
/*!50001 DROP VIEW IF EXISTS `vista_consola`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_consola` AS SELECT 
 1 AS `idProducto`,
 1 AS `titulo`,
 1 AS `precio`,
 1 AS `condicion`,
 1 AS `plataforma`,
 1 AS `garantia`,
 1 AS `descripcion`,
 1 AS `publicador`,
 1 AS `lanzamiento`,
 1 AS `idConsola`,
 1 AS `almacenamiento`,
 1 AS `control`,
 1 AS `resolucion`,
 1 AS `ram`,
 1 AS `tipoDeMemoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_control`
--

DROP TABLE IF EXISTS `vista_control`;
/*!50001 DROP VIEW IF EXISTS `vista_control`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_control` AS SELECT 
 1 AS `idProducto`,
 1 AS `titulo`,
 1 AS `precio`,
 1 AS `condicion`,
 1 AS `plataforma`,
 1 AS `garantia`,
 1 AS `descripcion`,
 1 AS `publicador`,
 1 AS `lanzamiento`,
 1 AS `idControl`,
 1 AS `inalambrico`,
 1 AS `color`,
 1 AS `conectoresDeEntrada`,
 1 AS `vibracion`,
 1 AS `bluetooth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_videojuego`
--

DROP TABLE IF EXISTS `vista_videojuego`;
/*!50001 DROP VIEW IF EXISTS `vista_videojuego`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_videojuego` AS SELECT 
 1 AS `idProducto`,
 1 AS `titulo`,
 1 AS `precio`,
 1 AS `condicion`,
 1 AS `plataforma`,
 1 AS `garantia`,
 1 AS `descripcion`,
 1 AS `publicador`,
 1 AS `lanzamiento`,
 1 AS `idVideoJuego`,
 1 AS `desarrollado`,
 1 AS `clasificacion`,
 1 AS `genero`,
 1 AS `trailer`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_accesorio`
--

/*!50001 DROP VIEW IF EXISTS `vista_accesorio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_accesorio` AS select `a`.`idProducto` AS `idProducto`,`p`.`titulo` AS `titulo`,`p`.`precio` AS `precio`,`p`.`condicion` AS `condicion`,`p`.`plataforma` AS `plataforma`,`p`.`garantia` AS `garantia`,`p`.`descripcion` AS `descripcion`,`p`.`publicador` AS `publicador`,`p`.`lanzamiento` AS `lanzamiento`,`a`.`idAccesorio` AS `idAccesorio`,`a`.`material` AS `material` from (`accesorio` `a` join `producto` `p` on((`a`.`idProducto` = `p`.`idProducto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_carrito`
--

/*!50001 DROP VIEW IF EXISTS `vista_carrito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_carrito` AS select `p`.`titulo` AS `titulo`,`p`.`precio` AS `precio`,`p`.`condicion` AS `condicion`,`p`.`plataforma` AS `plataforma`,`p`.`garantia` AS `garantia`,`p`.`descripcion` AS `descripcion`,`p`.`publicador` AS `publicador`,`p`.`lanzamiento` AS `lanzamiento`,`c`.`idProducto` AS `idProducto`,`c`.`idCarrito` AS `idCarrito`,`c`.`fecha` AS `fecha`,`c`.`cantidad` AS `cantidad`,`c`.`comprado` AS `comprado`,`c`.`onCar` AS `onCar`,`c`.`idCliente` AS `idCliente` from (`producto` `p` join `carrito` `c`) where (`p`.`idProducto` like `c`.`idProducto`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_consola`
--

/*!50001 DROP VIEW IF EXISTS `vista_consola`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_consola` AS select `c`.`idProducto` AS `idProducto`,`p`.`titulo` AS `titulo`,`p`.`precio` AS `precio`,`p`.`condicion` AS `condicion`,`p`.`plataforma` AS `plataforma`,`p`.`garantia` AS `garantia`,`p`.`descripcion` AS `descripcion`,`p`.`publicador` AS `publicador`,`p`.`lanzamiento` AS `lanzamiento`,`c`.`idConsola` AS `idConsola`,`c`.`almacenamiento` AS `almacenamiento`,`c`.`control` AS `control`,`c`.`resolucion` AS `resolucion`,`c`.`ram` AS `ram`,`c`.`tipoDeMemoria` AS `tipoDeMemoria` from (`consola` `c` join `producto` `p` on((`c`.`idProducto` = `p`.`idProducto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_control`
--

/*!50001 DROP VIEW IF EXISTS `vista_control`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_control` AS select `c`.`idProducto` AS `idProducto`,`p`.`titulo` AS `titulo`,`p`.`precio` AS `precio`,`p`.`condicion` AS `condicion`,`p`.`plataforma` AS `plataforma`,`p`.`garantia` AS `garantia`,`p`.`descripcion` AS `descripcion`,`p`.`publicador` AS `publicador`,`p`.`lanzamiento` AS `lanzamiento`,`c`.`idControl` AS `idControl`,`c`.`inalambrico` AS `inalambrico`,`c`.`color` AS `color`,`c`.`conectoresDeEntrada` AS `conectoresDeEntrada`,`c`.`vibracion` AS `vibracion`,`c`.`bluetooth` AS `bluetooth` from (`control` `c` join `producto` `p` on((`c`.`idProducto` = `p`.`idProducto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_videojuego`
--

/*!50001 DROP VIEW IF EXISTS `vista_videojuego`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_videojuego` AS select `vj`.`idProducto` AS `idProducto`,`p`.`titulo` AS `titulo`,`p`.`precio` AS `precio`,`p`.`condicion` AS `condicion`,`p`.`plataforma` AS `plataforma`,`p`.`garantia` AS `garantia`,`p`.`descripcion` AS `descripcion`,`p`.`publicador` AS `publicador`,`p`.`lanzamiento` AS `lanzamiento`,`vj`.`idVideoJuego` AS `idVideoJuego`,`vj`.`desarrollado` AS `desarrollado`,`vj`.`clasificacion` AS `clasificacion`,`vj`.`genero` AS `genero`,`vj`.`trailer` AS `trailer` from (`videojuego` `vj` join `producto` `p` on((`vj`.`idProducto` = `p`.`idProducto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09 12:04:25
