CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO products VALUES ('52','Intel CoreTM i9-14900K New Gaming Desktop Processor 24 (8 P-cores + 16 E-cores) with Integrated Graphics - Unlocked','547.97','Intel i9.jpg','CPU','https://www.amazon.com/i9-14900K-Desktop-Processor-Integrated-Graphics/dp/B0CGJDKLB8/ref=sr_1_1?dib=eyJ2IjoiMSJ9.FJMWZs7IxaOBHsXr0HpR-r7CXImNMRoVeAZfN7PsQolyypoABzsVC2X7kTVsIxjIzgfF5dnqVWoYoyvet7axV1q5CeTggRdTKaYDO00iH4T1gzIAga0wXRLB9b_Rc1_QSyjV8EXu10FKkd');
INSERT INTO products VALUES ('53','MSI Gaming GeForce RTX 3060 12GB 15 Gbps GDRR6 192-Bit HDMI/DP PCIe 4 Torx Twin Fan Ampere OC Graphics Card','284.99','Geforce rtx.jpg','Video Card','https://www.amazon.com/MSI-GeForce-RTX-3060-12G/dp/B08WPRMVWB/ref=sr_1_1?crid=3KJBBHRSB4WWU&dib=eyJ2IjoiMSJ9.0kW2JUbMQXLDdysRvutm1NXqGKG23hxwJGZSHi2O48vGb5TmAC7Iq-ssKbSx6dZPDwpyHeN9UUhIssN3AM6SOowcM2PLfYHTSDHUBQVvT8JKPm9ycna-7mJqxqi8NeRt68F8d0hwS_Eq0Nzvr_3lAWu2AqYJalAw97Jdzr39yv9LAoYpvofLZ7BuseHRam8GEbFfdxV8LGTMKmvAPmWP7MldcJLWU2uwWqWz1Fw_G1k.BLoUhcDmyByxkzM4Np109iqC4FVK2M4LLLkacDvagbc&dib_tag=se&keywords=MSI+Gaming+GeForce+RTX+3060+12GB+15+Gbps+GDRR6+192-Bit+HDMI%2FDP+PCIe+4+Torx+Twin+Fan+Ampere+OC+Graphics+Card&qid=1729499675&sprefix=%2Caps%2C745&sr=8-1');
INSERT INTO products VALUES ('54','AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor','569.99','Ryzen.jpg','CPU','https://www.amazon.com/AMD-Ryzen-5900X-24-Thread-Processor/dp/B08164VTWH/ref=sr_1_1?crid=335N2B8BMYKKE&dib=eyJ2IjoiMSJ9.vdLhAnqzomhbNj0elf6TifkRc9B5tvYy0adrR18CU63M4DcxiooA0B2C9xlAqZiUa2e6iZJCEIro7qCQ9ImkYGGKXmUkdC-AEILvBbQwPk-vIXt7bmTPOAD2zxTUkl9NFZzs4sUj0vZyUSco5kJ5QDMDpj7uqItuNdSw7r-0WgWC1YvRCT64T91Emk1_BAmlcHa7vSDcavUWy6FuXrcYHLFdHwjTbx9bbw0JCvNFzlM.cf-ks3tLx3t6x-R8oKbwhS6R78V6LvX3smPzhz6OIro&dib_tag=se&keywords=AMD%2BRyzen%2B9%2B5900X%2B12-core%2C%2B24-Thread%2BUnlocked%2BDesktop%2BProcessor&qid=1729499708&sprefix=msi%2Bgaming%2Bgeforce%2Brtx%2B3060%2B12gb%2B15%2Bgbps%2Bgdrr6%2B192-bit%2Bhdmi%2Fdp%2Bpcie%2B4%2Btorx%2Btwin%2Bfan%2Bampere%2Boc%2Bgraphics%2Bcard%2Caps%2C933&sr=8-1&th=1');
INSERT INTO products VALUES ('57','Intel Core i5-12600K Desktop Processor with Integrated Graphics and 10 (6P+4E) Cores up to 4.9 GHz Unlocked LGA1700 600 Series Chipset 125W','342.50','Intel i5.jpg','CPU','https://www.amazon.com/Intel-i5-12600K-Desktop-Processor-Unlocked/dp/B09FX4D72T/ref=sr_1_1?crid=U2XDZ8D0DHAE&dib=eyJ2IjoiMSJ9.3Sdynq378dIgQBX0ov4nSkQJ3Mn6jIDPP34cmFtnv2jL5p_EgR-oRyvLWyKEfUjUkB1D7qwrfXwv7jWseaXyr_NgIPcJuhs_y-FrP_Qihkaha3A9jwX2MXN2wVeVesr6PoG4IE6Q3k-BmXwmnsvjU7DMyxdSvoVBDtFsm9r2LgNI6gMBzKmGvFynHD5lvfxC_IwLDbaQXojvqZoQme2D0fD4i62_FfG2oq5GrS2K2hQ.EKRBtqpKDzIybi_UniLuP1YIlntyq3ybgOSGaOLDErM&dib_tag=se&keywords=Intel%2BCore%2Bi5-12600K%2BDesktop%2BProcessor%2Bwith%2BIntegrated%2BGraphics%2Band%2B10%2B(6P%2B4E)%2BCores%2Bup%2Bto%2B4.9%2BGHz%2BUnlocked%2BLGA1700%2B600%2BSeries%2BChipset%2B125W&qid=1729499749&sprefix=intel%2Bcore%2Bi5-12600k%2Bdesktop%2Bprocessor%2Bwith%2Bintegrated%2Bgraphics%2Band%2B10%2B6p%2B4e%2Bcores%2Bup%2Bto%2B4.9%2Bghz%2Bunlocked%2Blga1700%2B600%2Bseries%2Bchipset%2B125w%2Caps%2C712&sr=8-1&th=1');
INSERT INTO products VALUES ('58','AMD Ryzen 5 7600X 6-Core, 12-Thread Unlocked Desktop Processor','299.00','Ryzen 5.jpg','CPU','https://www.amazon.com/AMD-7600X-12-Thread-Unlocked-Processor/dp/B0BBJDS62N/ref=sr_1_16?crid=2TH9P6V874QPS&dib=eyJ2IjoiMSJ9.KdIsq10pqlnVuE1F_rfDkey29bBnjEjvm10fPaONC8weFbdOdnz1hKXtXf7oOWy7DnChNSN4OQ4oYFxl3cfM9ed8SnRJd9jh6krTdkZyISDWAXv1H2S_G-T7oDMKHmycJA8');
INSERT INTO products VALUES ('59','Amazon Basics - 27 Inch IPS Monitor 75 Hz Powered with AOC Technology FHD 1080P HDMI, Display Port and VGA Input VESA Compatible Built-in Speakers for Office and Home, Black','96.83','Monitor 1.jpg','Monitor','https://www.amazon.com/Amazon-Basics-75hz-Panel-Monitor/dp/B08WJ3GYC9/ref=sr_1_1_ffob_sspa?dib=eyJ2IjoiMSJ9.UP8cxcOTmZbUxxehSR4bwyzA22WXfkwCft1N5hM-_Nlpv7d0hN8XrXYoHcEL053PDjFvOcc6YDOyAb1J7nsGOZK8bV6uSnzk6iT6hcrY1dGzSCl2DaggfQocSyNgo_UIk3oOSeJeUyLaMJEVEdSIyPJyogJGfD1GYhLR56q1wfhRnNJdVk1lIjal3htU3d2HDhFhLBWe_J-laj4OaPOQ0iwdxzT-NU8XRW0y-Q5sEZ8.VBxG6glwhL9Vt4ZdW618rZZYSMOwVhha6GU2lXcIkSw&dib_tag=se&keywords=Monitor&qid=1729486631&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
INSERT INTO products VALUES ('60','Packard Bell airFrame 21\" FHD Monitor, 1920x1080, Ultrawide, VESA Mount Compatible, Tilt Adjustment, HDMI/VGA, Slim Bezel, for Home, Office, and Light Gaming','59.99','Monitor 2.jpg','Monitor','https://www.amazon.com/Packard-Bell-Milliseconds-Ultrawide-Adjustment/dp/B0BLQRXG6N/ref=sr_1_1_sspa?crid=2WQWJ5S5MT60W&dib=eyJ2IjoiMSJ9.Utc59Mnr2J2YA5tmQ_54N35g8VwbbYHScUh3DFHszmQkIO9EpKb7XD6_ZUVujZ5mJ7pkMpBrpWCFx6ZFgvue6ogQpZtEukGyuKXH323T1331eADnEaAIV-jZ8VuC-lxERd0CbkqiIL01GNXcUiuXt7WAwjAruailWoG7VKY60vxGbrz-0UyjDExdEGSgdXqG1DpahdgVJgIWF4CIOHcL4ZOH6hDX-Yt2o5uoukwY-Sk.GXOUUkLJ057McwSEKwGx6jhHmbA8NDEf1O4VFUNCbME&dib_tag=se&keywords=monitor%2B60hz&qid=1729487588&sprefix=monitor%2B60%2Caps%2C717&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
INSERT INTO products VALUES ('61','Acer Nitro KG241Y Sbiip 23.8” Full HD (1920 x 1080) VA Gaming Monitor | AMD FreeSync Premium Technology | 165Hz Refresh Rate | 1ms (VRB) | ZeroFrame Design | 1 x Display Port 1.2 & 2 x HDMI 2.0,Black','172.99','Monitor 165hz.jpg','Monitor','https://www.amazon.com/Acer-Monitor-FreeSync-Technology-ZeroFrame/dp/B0B6DFG1FQ/ref=sr_1_3?dib=eyJ2IjoiMSJ9.sxrx5jB8HyGJG1bwcfOsFCda9RafFVI8C2P6aA1XJ_8v9BHiXjUPbVwp-trkFhUJcmdqIoyLI4WxWV3AddtS3GMEGCSv-pl7dOnGoFSlCpnHPd-V4Dwi5fT0tPSaGY7ejGwuccQ7uyBi7KNeAksgf3diJ_KkCaOXtmbRMCXA34Uk0Cv20bzc8YdTROQQ63BkwwlwiXwK_cyzhw2CvQpumODapbBXb2S7SvRmgKETffI.Fw7N3ExHxj0KQWPwquBMcHGK88CFWWchfgmK4FA3oQ0&dib_tag=se&keywords=120hz%2Bmonitor&qid=1729499590&sr=8-3&th=1');
