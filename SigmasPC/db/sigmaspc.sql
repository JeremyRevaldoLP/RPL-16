CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO products VALUES ('52','Intel CoreTM i9-14900K New Gaming Desktop Processor 24 (8 P-cores + 16 E-cores) with Integrated Graphics - Unlocked','547.97','Intel i9.jpg','CPU');
INSERT INTO products VALUES ('53','MSI Gaming GeForce RTX 3060 12GB 15 Gbps GDRR6 192-Bit HDMI/DP PCIe 4 Torx Twin Fan Ampere OC Graphics Card','284.99','Geforce rtx.jpg','Video Card');
INSERT INTO products VALUES ('54','AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor','569.99','Ryzen.jpg','CPU');
INSERT INTO products VALUES ('57','Intel Core i5-12600K Desktop Processor with Integrated Graphics and 10 (6P+4E) Cores up to 4.9 GHz Unlocked LGA1700 600 Series Chipset 125W','342.50','Intel i5.jpg','CPU');
