-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: prodects
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `admin_role` varchar(10) DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'ramkishore@123','123456','ram@gmail.com','Ramkishore','Yadav','Jaipur','admin','2024-07-12 08:41:29','2024-07-12 08:41:29'),(2,'dheeraj@123','123456','dheeraj@gmail.com','Dheeraj','Choudhary','Sikar','admin','2024-07-12 08:41:36','2024-07-12 08:41:36'),(3,'dilip@123','123456','dilip@gmail.com','Dilip','Jhakar','Siakr','admin','2024-07-12 08:41:38','2024-07-12 08:41:38');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodect`
--

DROP TABLE IF EXISTS `prodect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodect` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(255) DEFAULT NULL,
  `pr_company` varchar(255) DEFAULT NULL,
  `pr_type` varchar(255) DEFAULT NULL,
  `pr_price` varchar(255) DEFAULT NULL,
  `pr_image` varchar(255) DEFAULT NULL,
  `pr_make_date` datetime DEFAULT NULL,
  `pr_expiry_date` datetime DEFAULT NULL,
  `pr_no` mediumtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pr_about` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodect`
--

LOCK TABLES `prodect` WRITE;
/*!40000 ALTER TABLE `prodect` DISABLE KEYS */;
INSERT INTO `prodect` VALUES (2,'Reno 11 Pro 5G','OPPO','Mobail Pearl White, 256 GB, 12 GB RAM','35500','oppoReno11pro.png','2024-07-03 00:00:00','2027-06-03 00:00:00','oppo58497854','2024-07-19 06:37:22','2024-07-25 11:29:54','The Oppo Reno 11 Pro 5G is a cutting-edge smartphone designed to provide exceptional performance and connectivity. Equipped with a powerful Snapdragon processor, this device ensures smooth multitasking and efficient power consumption. Its 6.55-inch AMOLED display offers stunning visuals with vibrant colors and deep blacks, making it ideal for media consumption and gaming. The Reno 11 Pro 5G boasts a versatile camera system, including a 64MP main sensor, ultra-wide lens, and telephoto lens, allowing for high-quality photos and videos in various conditions. With 5G capabilities, users can experience blazing-fast internet speeds for seamless browsing and streaming. The device also features a sleek design, in-display fingerprint sensor, and VOOC fast charging technology, ensuring quick and secure access as well as minimal downtime. The Oppo Reno 11 Pro 5G is perfect for those who demand performance, style, and advanced features in a modern smartphone'),(3,'Smart LED Google TV',' Acer','Acer 139 cm (55 inches) H PRO Series','54999','81+QDzzeWXL._SL1500_.jpg','2024-07-05 00:00:00','2027-07-08 00:00:00','acertv254875','2024-07-19 06:37:22','2024-07-25 11:32:25','The Acer H PRO Series Smart LED Google TV (55 inches) offers an immersive viewing experience with its stunning 4K resolution and HDR support. This TV is designed to deliver vibrant colors, sharp details, and deep contrasts, making every scene come to life. Powered by Googles Android TV platform, it provides access to a wide range of apps, games, and streaming services. With built-in Google Assistant, users can control the TV and other smart home devices using voice commands. The Acer H PRO Series also features advanced connectivity options, including HDMI, USB, and Wi-Fi, ensuring seamless integration with various devices and peripherals. Its sleek and modern design fits perfectly in any living room, providing both style and functionality. The powerful quad-core processor ensures smooth performance, while the Dolby Audio technology offers an immersive audio experience. Whether watching movies, playing games, or streaming content, the Acer H PRO Series Smart LED Google TV provides an exceptional entertainment experience'),(4,'Smart QLED TV','Hisense','126cm (50 inches), 4K Ultra HD Smart QLED TV','90000','Hisense126cm.jpg','2024-07-05 00:00:00','2028-07-20 00:00:00','hisensetv12547','2024-07-19 06:37:22','2024-07-25 11:34:02','The Samsung 126cm (50 inches) 4K Ultra HD Smart QLED TV offers a premium viewing experience with its advanced Quantum Dot technology. This technology delivers vibrant and accurate colors, deep blacks, and high brightness levels, making every scene look lifelike. The 4K resolution ensures crystal-clear images with stunning detail, while HDR support enhances contrast and color accuracy. This Smart QLED TV comes with Samsungs Tizen operating system, providing access to a vast selection of apps, games, and streaming services. The built-in voice assistant allows for easy control and integration with other smart home devices. The TV features multiple connectivity options, including HDMI, USB, and Wi-Fi, ensuring seamless connection with various devices and peripherals. Its sleek and stylish design fits well in any living room, adding a touch of elegance. The powerful processor ensures smooth performance, while the advanced sound system provides an immersive audio experience. The Samsung 4K Ultra HD Smart QLED TV is ideal for those seeking top-tier picture quality and smart features'),(8,'Mobile-Samsung','Samsung','Galaxy S21','50000','galaxy-S21-image.jpg','2024-07-03 00:00:00','2024-07-31 00:00:00','smg458697854','2024-07-19 06:37:22','2024-07-25 11:35:44','The Samsung Galaxy S21 is a flagship smartphone that combines cutting-edge technology with sleek design. It features a 6.2-inch Dynamic AMOLED 2X display with a 120Hz refresh rate, providing smooth and vibrant visuals. Powered by the Exynos 2100 (or Snapdragon 888 in some regions), the Galaxy S21 delivers top-tier performance for gaming, multitasking, and media consumption. The versatile triple-camera setup includes a 12MP wide, 64MP telephoto, and 12MP ultra-wide lens, enabling high-quality photography and 8K video recording. The device supports 5G connectivity, ensuring ultra-fast internet speeds for seamless streaming and browsing. With a 4000mAh battery and fast charging capabilities, the Galaxy S21 ensures all-day power and quick recharges. The in-display fingerprint sensor provides secure and convenient access, while the One UI interface offers a user-friendly experience. The Galaxy S21 is designed for those who demand performance, style, and the latest features in a premium smartphone'),(9,'Mobile-iPhone','Apple','iPhone 12','38000','iphone12.jpg','2024-07-05 00:00:00','2024-07-31 00:00:00','apl123456789','2024-07-19 06:37:22','2024-07-25 11:36:36','The Apple iPhone 12 represents a significant leap forward in smartphone technology with its powerful A14 Bionic chip and 5G capabilities. It features a 6.1-inch Super Retina XDR display, delivering vibrant colors, deep blacks, and high brightness levels for an exceptional viewing experience. The dual-camera system includes a 12MP wide and 12MP ultra-wide lens, enabling stunning photos and 4K Dolby Vision HDR recording. The iPhone 12 s Night mode and Deep Fusion technology enhance low-light photography, making it possible to capture detailed images even in challenging conditions. The device supports MagSafe, allowing for easy attachment of accessories and wireless charging. With its ceramic shield front cover, the iPhone 12 offers improved durability and drop performance. The sleek design, combined with the latest iOS features, provides a seamless and intuitive user experience. The iPhone 12 is perfect for those seeking a powerful, stylish, and feature-rich smartphone that delivers on all fronts'),(11,'Mobile-Samsung','Samsung','Galaxy S22','75000','galaxy-s22.webp','2024-07-01 00:00:00','2024-12-31 00:00:00','smg123456789','2024-07-19 06:37:22','2024-07-25 11:37:51','The Samsung Galaxy S22 is the next-generation flagship smartphone, offering cutting-edge technology and sleek design. It features a 6.2-inch Dynamic AMOLED 2X display with a 120Hz refresh rate, providing smooth and vibrant visuals. Powered by the Exynos 2200 (or Snapdragon 895 in some regions), the Galaxy S22 delivers top-tier performance for gaming, multitasking, and media consumption. The versatile triple-camera setup includes a 50MP wide, 12MP ultra-wide, and 10MP telephoto lens, enabling high-quality photography and 8K video recording. The device supports 5G connectivity, ensuring ultra-fast internet speeds for seamless streaming and browsing. With a 4500mAh battery and fast charging capabilities, the Galaxy S22 ensures all-day power and quick recharges. The in-display fingerprint sensor provides secure and convenient access, while the One UI interface offers a user-friendly experience. The Galaxy S22 is designed for those who demand performance, style, and the latest features in a premium smartphone'),(12,'Mobile-Apple','Apple','iPhone 13','85000','apple-iphone-13-01.jpg','2024-06-30 00:00:00','2024-12-31 00:00:00','apl987654321','2024-07-19 06:37:22','2024-07-25 11:38:46','The Apple iPhone 13 takes smartphone technology to new heights with its powerful A15 Bionic chip and advanced camera system. It features a 6.1-inch Super Retina XDR display, offering vibrant colors, deep blacks, and high brightness levels for an immersive viewing experience. The dual-camera setup includes a 12MP wide and 12MP ultra-wide lens, capable of capturing stunning photos and 4K Dolby Vision HDR video. The iPhone 13 s Night mode, Deep Fusion, and Smart HDR 4 enhance low-light photography and overall image quality. The device supports MagSafe, allowing for easy attachment of accessories and wireless charging. With its ceramic shield front cover, the iPhone 13 provides improved durability and drop performance. The sleek design, combined with the latest iOS features, offers a seamless and intuitive user experience. The iPhone 13 is perfect for those seeking a powerful, stylish, and feature-rich smartphone that excels in performance and photography'),(20,'Smart TV-Sony','Sony','Bravia 4K','180000','sonyTv4k.jpg','2024-07-12 00:00:00','2024-12-31 00:00:00','snt123456789','2024-07-19 06:37:22','2024-07-25 11:54:15','The Sony Bravia 4K Smart TV is a premium television that combines cutting-edge technology with sleek design to deliver an unparalleled viewing experience. With its 4K Ultra HD resolution, this TV offers four times the detail of Full HD, ensuring stunning clarity and sharpness. The Bravia 4K TV is powered by Sony s advanced X1 Ultimate processor, which enhances color, contrast, and clarity, bringing every scene to life with extraordinary realism. The TRILUMINOS display technology ensures a wider color palette, producing more natural and vibrant colors. HDR support enhances the dynamic range, making both bright and dark scenes look more realistic and immersive '),(29,'NoiseFit Halo','NoiseFit','BT Calling, 1.43\" AMOLED Display, AOD, Gesture Controls watch','45000','voisewatch.webp','2024-07-11 00:00:00','2027-11-18 00:00:00','nois546894','2024-07-19 06:37:22','2024-07-25 11:41:57','The SmartTech Smartwatch with BT Calling, 1.43\" AMOLED Display, AOD, and Gesture Controls is designed for those who seek advanced features and convenience. The 1.43-inch AMOLED display provides vibrant and clear visuals, making it easy to read notifications, messages, and other information. The Always-On Display (AOD) feature ensures that you can glance at the time and other important details without having to wake the watch. The smartwatch supports Bluetooth calling, allowing you to make and receive calls directly from your wrist, ensuring you stay connected even on the go. The gesture control functionality enables you to navigate the watch with simple hand movements, adding to its user-friendly experience. With a variety of fitness and health tracking features, including heart rate monitoring, sleep tracking, and workout modes, the SmartTech Smartwatch helps you stay on top of your health and fitness goals. The sleek and stylish design, combined with its durable build, makes it perfect for everyday wear and various activities'),(78,'Mobile-Samsung','Samsung','Galaxy S21','50000','galaxy-S21-image.jpg','2024-07-03 00:00:00','2024-07-31 00:00:00','smg458697854','2024-07-25 11:20:33','2024-07-25 11:43:13','The Samsung Galaxy S21 is a flagship smartphone that combines cutting-edge technology with sleek design. It features a 6.2-inch Dynamic AMOLED 2X display with a 120Hz refresh rate, providing smooth and vibrant visuals. Powered by the Exynos 2100 (or Snapdragon 888 in some regions), the Galaxy S21 delivers top-tier performance for gaming, multitasking, and media consumption. The versatile triple-camera setup includes a 12MP wide, 64MP telephoto, and 12MP ultra-wide lens, enabling high-quality photography and 8K video recording. The device supports 5G connectivity, ensuring ultra-fast internet speeds for seamless streaming and browsing. With a 4000mAh battery and fast charging capabilities, the Galaxy S21 ensures all-day power and quick recharges. The in-display fingerprint sensor provides secure and convenient access, while the One UI interface offers a user-friendly experience. The Galaxy S21 is designed for those who demand performance, style, and the latest features in a premium smartphone.'),(80,'Mobile-OnePlus','OnePlus','OnePlus 9','60000','oneplus-9.jpg','2024-07-02 00:00:00','2024-07-31 00:00:00','op123456789','2024-07-25 11:20:33','2024-07-25 11:57:16','The Samsung Galaxy S22 is the next-generation flagship smartphone, offering cutting-edge technology and sleek design. It features a 6.2-inch Dynamic AMOLED 2X display with a 120Hz refresh rate, providing smooth and vibrant visuals. Powered by the Exynos 2200 (or Snapdragon 895 in some regions), the Galaxy S22 delivers top-tier performance for gaming, multitasking, and media consumption. The versatile triple-camera setup includes a 50MP wide, 12MP ultra-wide, and 10MP telephoto lens, enabling high-quality photography and 8K video recording. The device supports 5G connectivity, ensuring ultra-fast internet speeds for seamless streaming and browsing. With a 4500mAh battery and fast charging capabilities, the Galaxy S22 ensures all-day power and quick recharges. The in-display fingerprint sensor provides secure and convenient access, while the One UI interface offers a user-friendly experience. The Galaxy S22 is designed for those who demand performance, style, and the latest features in a premium smartphone.'),(81,'Mobile-Samsung','Samsung','Galaxy S22','75000','Galaxy S22.jpeg','2024-07-01 00:00:00','2024-12-31 00:00:00','smg123456789','2024-07-25 11:20:33','2024-07-26 05:10:31','The Apple iPhone 13 takes smartphone technology to new heights with its powerful A15 Bionic chip and advanced camera system. It features a 6.1-inch Super Retina XDR display, offering vibrant colors, deep blacks, and high brightness levels for an immersive viewing experience. The dual-camera setup includes a 12MP wide and 12MP ultra-wide lens, capable of capturing stunning photos and 4K Dolby Vision HDR video. The iPhone 13 s Night mode, Deep Fusion, and Smart HDR 4 enhance low-light photography and overall image quality. The device supports MagSafe, allowing for easy attachment of accessories and wireless charging. With its ceramic shield front cover, the iPhone 13 provides improved durability and drop performance. The sleek design, combined with the latest iOS features, offers a seamless and intuitive user experience. The iPhone 13 is perfect for those seeking a powerful, stylish, and feature-rich smartphone that excels in performance and photography'),(82,'Mobile-Apple','Apple','iPhone 13','85000','iPhone 13.jpeg','2024-06-30 00:00:00','2024-12-31 00:00:00','apl987654321','2024-07-25 11:20:33','2024-07-26 05:11:50','Apple iPhone 13 continues the legacy of innovation and excellence. It comes with the powerful A15 Bionic chip, ensuring top performance and energy efficiency. The Super Retina XDR display offers incredible brightness and contrast, making it perfect for any kind of content. The iPhone 13 features an advanced dual-camera system with Photographic Styles, Cinematic mode, and improved Night mode, allowing users to capture stunning photos and videos in any condition. The battery life is significantly improved, providing all-day usage without compromise. With 5G connectivity, users can enjoy ultra-fast downloads and streaming. The iPhone 13 is a perfect blend of technology and design, making it a top choice for smartphone users.'),(83,'Mobile-OnePlus','OnePlus','OnePlus 8','55000','OnePlus 8.jpeg','2024-07-04 00:00:00','2024-12-31 00:00:00','op987654321','2024-07-25 11:20:33','2024-07-26 05:12:52','OnePlus 8 is a powerful and sleek smartphone designed for performance enthusiasts. It features a Fluid AMOLED display with a 90Hz refresh rate, delivering smooth and responsive visuals. The Snapdragon 865 processor ensures high-speed performance and efficient multitasking. The camera setup includes a 48MP main sensor, ultra-wide lens, and macro lens, offering versatility for different photography needs. The Warp Charge 30T technology allows for fast charging, ensuring the battery is quickly replenished. With its elegant design, lightweight build, and advanced features, the OnePlus 8 stands out as a premium device offering excellent value for money.'),(84,'Mobile-Xiaomi','Xiaomi','Mi 11','40000','Mi 11.jpeg','2024-07-06 00:00:00','2024-12-31 00:00:00','xmi123456789','2024-07-25 11:20:33','2024-07-26 05:24:24','The Xiaomi Mi 11 is a feature-packed smartphone offering high-end performance and design. It boasts a 6.81-inch AMOLED display with WQHD+ resolution and a 120Hz refresh rate, ensuring an immersive viewing experience. The Snapdragon 888 chipset delivers powerful performance for gaming, productivity, and multimedia. The Mi 11’s camera system includes a 108MP main sensor, ultra-wide lens, and macro lens, providing excellent versatility. It supports 55W wired and 50W wireless fast charging, ensuring minimal downtime. With its sleek design, advanced features, and competitive pricing, the Mi 11 is a compelling choice for smartphone users.'),(85,'Mobile-Oppo','Oppo','Reno 5','35000','Reno 5.jpeg','2024-07-07 00:00:00','2024-12-31 00:00:00','opp123456789','2024-07-25 11:20:33','2024-07-26 05:24:53','Oppo Reno 5 is designed for users who seek both performance and style. It features a 6.43-inch AMOLED display with a 90Hz refresh rate, offering vibrant and smooth visuals. The device is powered by the Snapdragon 765G processor, ensuring efficient performance for daily tasks and gaming. The quad-camera setup includes a 64MP main sensor, ultra-wide, macro, and depth lenses, providing flexibility for various photography scenarios. The Reno 5 supports 65W SuperVOOC 2.0 fast charging, allowing the battery to be quickly recharged. Its sleek design, combined with advanced features and robust performance, makes it an attractive option in the mid-range smartphone segment.'),(86,'Mobile-Realme','Realme','Realme 8','30000','Realme 8.jpeg','2024-07-08 00:00:00','2024-12-31 00:00:00','rlm123456789','2024-07-25 11:20:33','2024-07-26 05:25:16','Realme 8 offers a balance of performance, design, and affordability. It features a 6.4-inch Super AMOLED display, providing crisp and vibrant visuals. The MediaTek Helio G95 processor ensures smooth performance for gaming, multitasking, and multimedia. The quad-camera setup includes a 64MP main sensor, ultra-wide lens, macro lens, and depth sensor, offering a variety of photography options. The device supports 30W Dart Charge, ensuring fast battery recharges. With its modern design, lightweight build, and comprehensive feature set, the Realme 8 is an excellent choice for users looking for a well-rounded smartphone.'),(87,'Mobile-Nokia','Nokia','Nokia 7.2','28000','Nokia 7.2.jpeg','2024-07-09 00:00:00','2024-12-31 00:00:00','nok123456789','2024-07-25 11:20:33','2024-07-26 05:25:38','Nokia 7.2 is a robust smartphone that combines durability with performance. It features a 6.3-inch PureDisplay with HDR support, offering enhanced visual quality. The device is powered by the Snapdragon 660 processor, providing reliable performance for everyday use. The triple-camera setup includes a 48MP main sensor, ultra-wide lens, and depth sensor, delivering versatile photography capabilities. The Nokia 7.2 supports 10W charging, ensuring decent battery life. Known for its build quality and clean Android experience, the Nokia 7.2 is a solid choice for users seeking a durable and functional smartphone.'),(88,'Smart TV-Samsung','Samsung','QLED 4K','120000','QLED 4K.jpeg','2024-07-10 00:00:00','2024-12-31 00:00:00','smt123456789','2024-07-25 11:20:33','2024-07-26 05:26:17','The Samsung QLED 4K Smart TV offers an unparalleled viewing experience with its Quantum Dot technology. This technology delivers vibrant colors and deep blacks, making every scene come to life. The 4K resolution ensures sharp and detailed visuals, perfect for movies, sports, and gaming. The QLED 4K TV comes with smart features, including voice control, streaming apps, and seamless connectivity with other devices. Its sleek design fits perfectly in any living room, providing both style and functionality. The powerful processor ensures smooth performance, while the advanced sound system offers an immersive audio experience. This TV is a top choice for entertainment enthusiasts.'),(89,'Smart TV-LG','LG','OLED 4K','130000','OLED 4K.jpeg','2024-07-11 00:00:00','2024-12-31 00:00:00','lgt123456789','2024-07-25 11:20:33','2024-07-26 05:26:34','LG OLED 4K Smart TV is known for its exceptional picture quality and sleek design. The OLED technology delivers perfect blacks and infinite contrast, creating a stunning visual experience. The 4K resolution enhances the clarity and detail of every scene. This Smart TV comes with AI ThinQ, providing advanced voice control and integration with other smart devices. The Dolby Vision and Dolby Atmos technologies offer cinematic visuals and immersive sound. The LG OLED 4K TV is ideal for those who seek top-tier performance and aesthetics in their home entertainment setup. Its user-friendly interface and smart features make it a popular choice.'),(90,'Smart TV-Sony','Sony','Bravia 4K','140000','Bravia 4K.jpeg','2024-07-12 00:00:00','2024-12-31 00:00:00','snt123456789','2024-07-25 11:20:33','2024-07-26 05:26:52','Sony Bravia 4K Smart TV is renowned for its superior picture and sound quality. The 4K HDR Processor X1 enhances color, contrast, and clarity, providing an immersive viewing experience. The TRILUMINOS display delivers a wider color spectrum, making images more lifelike. This Smart TV comes with Android TV, offering a wide range of apps and content. The built-in Google Assistant allows for easy voice control and smart home integration. The sleek and minimalist design of the Sony Bravia 4K TV makes it a stylish addition to any living space. It is a perfect choice for those who demand the best in home entertainment.'),(91,'Smart TV-TCL','TCL','4K UHD','70000','4K UHDtcl.jpeg','2024-07-13 00:00:00','2024-12-31 00:00:00','tcl123456789','2024-07-25 11:20:33','2024-07-26 05:27:25','TCL 4K UHD Smart TV offers excellent value with its high-quality display and smart features. The 4K resolution ensures detailed and clear visuals, enhancing the viewing experience. The TV comes with HDR support, providing better contrast and color accuracy. The built-in Roku platform offers a vast selection of streaming channels and apps, making it easy to find and watch your favorite content. The voice control feature allows for convenient operation, while the sleek design ensures it fits well in any room. The TCL 4K UHD TV is a budget-friendly option for those seeking a feature-rich smart TV.'),(92,'Smart TV-Philips','Philips','4K UHD','80000','4K UHD.jpeg','2024-07-14 00:00:00','2024-12-31 00:00:00','php123456789','2024-07-25 11:20:33','2024-07-26 05:27:57','Philips 4K UHD Smart TV combines high-performance display technology with smart features. The 4K resolution delivers crisp and detailed images, perfect for all types of content. The TV supports HDR, enhancing color and contrast for a more vivid viewing experience. The Smart TV platform provides access to a wide range of apps and streaming services, offering endless entertainment options. The built-in Google Assistant allows for easy voice control and smart home integration. The stylish design and thin bezels make it an attractive addition to any living room. Philips 4K UHD TV is an excellent choice for users looking for quality and functionality.'),(93,'Smart TV-Panasonic','Panasonic','LED 4K','90000','4KUHD.jpeg','2024-07-15 00:00:00','2024-12-31 00:00:00','pnt123456789','2024-07-25 11:20:33','2024-07-26 05:31:18','Panasonic LED 4K Smart TV is known for its reliability and excellent performance. The 4K resolution provides clear and sharp images, making it ideal for movies, sports, and gaming. The TV supports HDR, delivering better contrast and more vibrant colors. The smart features include access to popular streaming apps and easy connectivity with other devices. The built-in voice control allows for convenient operation. The Panasonic LED 4K TV features a durable design, ensuring long-lasting performance. Its sleek and modern look makes it a great addition to any home entertainment setup, offering both quality and style.'),(94,'Smart TV-Vizio','Vizio','4K UHD','65000','LED 4K.jpeg','2024-07-16 00:00:00','2024-12-31 00:00:00','vzo123456789','2024-07-25 11:20:33','2024-07-26 05:28:23','Vizio 4K UHD Smart TV offers a great balance of performance and affordability. The 4K resolution ensures detailed and crisp images, enhancing the viewing experience. The TV supports HDR, providing better color and contrast. The built-in SmartCast platform offers access to popular streaming services and apps, making it easy to find and watch content. The voice control feature allows for convenient operation, while the sleek design fits well in any room. The Vizio 4K UHD TV is a budget-friendly option for those seeking a smart TV with excellent picture quality and useful features.'),(95,'Smart TV-Mi','Xiaomi','4K UHD','60000','Xiaom4KUHD.jpeg','2024-07-17 00:00:00','2024-12-31 00:00:00','xmi987654321','2024-07-25 11:20:33','2024-07-26 05:28:44','Xiaomi Mi 4K UHD Smart TV combines high performance with affordability. The 4K resolution ensures sharp and detailed images, making it ideal for all types of content. The TV supports HDR, enhancing color and contrast for a more vivid viewing experience. The built-in PatchWall interface offers a wide range of apps and streaming services, providing endless entertainment options. The voice control feature allows for easy operation, and the sleek design fits well in any living room. The Xiaomi Mi 4K UHD TV is a great choice for users looking for a feature-rich smart TV at a competitive price.'),(96,'Smart TV-OnePlus','OnePlus','Q1 4K','95000','Q1oneplus4K.jpeg','2024-07-18 00:00:00','2024-12-31 00:00:00','opq123456789','2024-07-25 11:20:33','2024-07-26 05:29:03','OnePlus Q1 4K Smart TV offers premium performance and design. The QLED display technology provides vibrant colors and deep blacks, enhancing the overall viewing experience. The 4K resolution ensures sharp and detailed images. The TV supports Dolby Vision and Dolby Atmos, offering cinematic picture and sound quality. The built-in OxygenPlay interface provides easy access to a variety of content and streaming services. The OnePlus Q1 4K TV features a sleek and modern design, making it a stylish addition to any living room. Its advanced features and robust performance make it a top choice for home entertainment.'),(97,'Mobile-Vivo','Vivo','V21','27000','V21.jpeg','2024-07-19 00:00:00','2024-12-31 00:00:00','viv123456789','2024-07-25 11:20:33','2024-07-26 05:29:21','Vivo V21 is designed for users who seek both style and performance. It features a 6.44-inch AMOLED display, offering vibrant colors and sharp details. The MediaTek Dimensity 800U processor ensures smooth performance for gaming, multitasking, and multimedia. The triple-camera setup includes a 64MP main sensor, ultra-wide lens, and macro lens, providing versatile photography options. The V21 supports 33W fast charging, ensuring the battery is quickly replenished. With its elegant design, lightweight build, and advanced features, the Vivo V21 is an attractive option for those looking for a mid-range smartphone with a premium feel.'),(98,'Mobile-Realme','Realme','Realme X7','32000','RealmeX7.jpeg','2024-07-20 00:00:00','2024-12-31 00:00:00','rlm987654321','2024-07-25 11:20:33','2024-07-26 05:29:39','Realme X7 offers an excellent balance of performance, design, and affordability. It features a 6.43-inch Super AMOLED display, providing crisp and vibrant visuals. The MediaTek Dimensity 800U processor ensures smooth and efficient performance, making it suitable for gaming and multitasking. The quad-camera setup includes a 64MP main sensor, ultra-wide lens, macro lens, and depth sensor, delivering versatile photography capabilities. The Realme X7 supports 50W fast charging, allowing for quick battery top-ups. With its sleek design, powerful performance, and advanced features, the Realme X7 is a compelling choice for users seeking a high-quality smartphone at a reasonable price.');
/*!40000 ALTER TABLE `prodect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `user_role` varchar(10) DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'meghraj@123','12345','meghraj@gmail.com','meghraj','yadav','alwar','9857465987','1995-05-25','male','user','2024-07-12 08:51:11','2024-07-12 08:51:11'),(2,'sanjay@samota','12345','samota.sanjay@gmail.com','Sanjay','Samota','Sikar','9986857484','1987-05-04','Male','user','2024-07-12 10:01:02','2024-07-12 10:01:02'),(3,'mamta@123','123456','mamta@gmail.com','Mamta','Kumari','Jaipur','9876587545','1995-10-17','Female','user','2024-07-15 06:42:01','2024-07-15 06:42:01'),(4,'ramkishore@123','123456','Ramskihoreff@gamil.com','ramkihsore','yadav','jaipur','97824655785','1997-08-25','Male','user','2024-07-22 10:11:59','2024-07-22 10:11:59'),(5,'ram@123','123456','ramkishore@gmail.com','ramkishore','yadav','jaipur','9875486857','1998-10-10','Male','user','2024-07-22 11:19:03','2024-07-22 11:19:03'),(6,'shayam@123','123456','sharyam@gmail.com','shayam','singh','Sikar','9986857484','2024-07-05','Male','user','2024-07-24 08:34:21','2024-07-24 08:34:21'),(7,'naresh@123','123456','naresh@gmail.com','Naresh','Saini','Arjunputa, jaipur','9865784535','2024-07-09','Male','user','2024-07-24 09:16:35','2024-07-24 09:16:35'),(8,'ravi@123','123456','ravikumar@gmail.com','Ravi','Kumar','Jhunjhunu','9875859685','1899-11-20','Male','user','2024-07-25 08:49:59','2024-07-25 08:49:59'),(9,'dheeraj@123','123456','dheeraj@gmail.com','Dheeraj','Choudhary','Rigas , Jaipur','9876587548','2024-07-02','Male','user','2024-07-26 05:33:42','2024-07-26 05:33:42');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-26 11:32:44
