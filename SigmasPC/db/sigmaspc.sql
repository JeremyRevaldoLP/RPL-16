CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO products VALUES ('52','Intel CoreTM i9-14900K New Gaming Desktop Processor 24 (8 P-cores + 16 E-cores) with Integrated Graphics - Unlocked','547.97','Intel i9.jpg','CPU','https://www.amazon.com/i9-14900K-Desktop-Processor-Integrated-Graphics/dp/B0CGJDKLB8/ref=sr_1_1?dib=eyJ2IjoiMSJ9.FJMWZs7IxaOBHsXr0HpR-r7CXImNMRoVeAZfN7PsQolyypoABzsVC2X7kTVsIxjIzgfF5dnqVWoYoyvet7axV1q5CeTggRdTKaYDO00iH4T1gzIAga0wXRLB9b_Rc1_QSyjV8EXu10FKkd');
INSERT INTO products VALUES ('53','MSI Gaming GeForce RTX 3060 12GB 15 Gbps GDRR6 192-Bit HDMI/DP PCIe 4 Torx Twin Fan Ampere OC Graphics Card','284.99','Geforce rtx.jpg','Video Card','');
INSERT INTO products VALUES ('54','AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor','569.99','Ryzen.jpg','CPU','');
INSERT INTO products VALUES ('57','Intel Core i5-12600K Desktop Processor with Integrated Graphics and 10 (6P+4E) Cores up to 4.9 GHz Unlocked LGA1700 600 Series Chipset 125W','342.50','Intel i5.jpg','CPU','');
INSERT INTO products VALUES ('58','AMD Ryzen 5 7600X 6-Core, 12-Thread Unlocked Desktop Processor','299.00','Ryzen 5.jpg','CPU','https://www.amazon.com/AMD-7600X-12-Thread-Unlocked-Processor/dp/B0BBJDS62N/ref=sr_1_16?crid=2TH9P6V874QPS&dib=eyJ2IjoiMSJ9.KdIsq10pqlnVuE1F_rfDkey29bBnjEjvm10fPaONC8weFbdOdnz1hKXtXf7oOWy7DnChNSN4OQ4oYFxl3cfM9ed8SnRJd9jh6krTdkZyISDWAXv1H2S_G-T7oDMKHmycJA8');
INSERT INTO products VALUES ('59','Amazon Basics - 27 Inch IPS Monitor 75 Hz Powered with AOC Technology FHD 1080P HDMI, Display Port and VGA Input VESA Compatible Built-in Speakers for Office and Home, Black','96.83','Monitor 1.jpg','Monitor','https://www.amazon.com/Amazon-Basics-75hz-Panel-Monitor/dp/B08WJ3GYC9/ref=sr_1_1_ffob_sspa?dib=eyJ2IjoiMSJ9.UP8cxcOTmZbUxxehSR4bwyzA22WXfkwCft1N5hM-_Nlpv7d0hN8XrXYoHcEL053PDjFvOcc6YDOyAb1J7nsGOZK8bV6uSnzk6iT6hcrY1dGzSCl2DaggfQocSyNgo_UIk3oOSeJeUyLaMJEVEdSIyPJyogJGfD1GYhLR56q1wfhRnNJdVk1lIjal3htU3d2HDhFhLBWe_J-laj4OaPOQ0iwdxzT-NU8XRW0y-Q5sEZ8.VBxG6glwhL9Vt4ZdW618rZZYSMOwVhha6GU2lXcIkSw&dib_tag=se&keywords=Monitor&qid=1729486631&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
INSERT INTO products VALUES ('60','Packard Bell airFrame 21\" FHD Monitor, 1920x1080, Ultrawide, VESA Mount Compatible, Tilt Adjustment, HDMI/VGA, Slim Bezel, for Home, Office, and Light Gaming','59.99','Monitor 2.jpg','Monitor','https://www.amazon.com/Packard-Bell-Milliseconds-Ultrawide-Adjustment/dp/B0BLQRXG6N/ref=sr_1_1_sspa?crid=2WQWJ5S5MT60W&dib=eyJ2IjoiMSJ9.Utc59Mnr2J2YA5tmQ_54N35g8VwbbYHScUh3DFHszmQkIO9EpKb7XD6_ZUVujZ5mJ7pkMpBrpWCFx6ZFgvue6ogQpZtEukGyuKXH323T1331eADnEaAIV-jZ8VuC-lxERd0CbkqiIL01GNXcUiuXt7WAwjAruailWoG7VKY60vxGbrz-0UyjDExdEGSgdXqG1DpahdgVJgIWF4CIOHcL4ZOH6hDX-Yt2o5uoukwY-Sk.GXOUUkLJ057McwSEKwGx6jhHmbA8NDEf1O4VFUNCbME&dib_tag=se&keywords=monitor%2B60hz&qid=1729487588&sprefix=monitor%2B60%2Caps%2C717&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
