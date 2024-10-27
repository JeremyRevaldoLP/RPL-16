CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO products VALUES ('52','Intel CoreTM i9-14900K New Gaming Desktop Processor 24 (8 P-cores + 16 E-cores) with Integrated Graphics - Unlocked','547.97','Intel i9.jpg','CPU','https://www.amazon.com/i9-14900K-Desktop-Processor-Integrated-Graphics/dp/B0CGJDKLB8/ref=sr_1_1?dib=eyJ2IjoiMSJ9.FJMWZs7IxaOBHsXr0HpR-r7CXImNMRoVeAZfN7PsQolyypoABzsVC2X7kTVsIxjIzgfF5dnqVWoYoyvet7axV1q5CeTggRdTKaYDO00iH4T1gzIAga0wXRLB9b_Rc1_QSyjV8EXu10FKkd');
INSERT INTO products VALUES ('54','AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor','569.99','Ryzen.jpg','CPU','https://www.amazon.com/AMD-Ryzen-5900X-24-Thread-Processor/dp/B08164VTWH/ref=sr_1_1?crid=335N2B8BMYKKE&dib=eyJ2IjoiMSJ9.vdLhAnqzomhbNj0elf6TifkRc9B5tvYy0adrR18CU63M4DcxiooA0B2C9xlAqZiUa2e6iZJCEIro7qCQ9ImkYGGKXmUkdC-AEILvBbQwPk-vIXt7bmTPOAD2zxTUkl9NFZzs4sUj0vZyUSco5kJ5QDMDpj7uqItuNdSw7r-0WgWC1YvRCT64T91Emk1_BAmlcHa7vSDcavUWy6FuXrcYHLFdHwjTbx9bbw0JCvNFzlM.cf-ks3tLx3t6x-R8oKbwhS6R78V6LvX3smPzhz6OIro&dib_tag=se&keywords=AMD%2BRyzen%2B9%2B5900X%2B12-core%2C%2B24-Thread%2BUnlocked%2BDesktop%2BProcessor&qid=1729499708&sprefix=msi%2Bgaming%2Bgeforce%2Brtx%2B3060%2B12gb%2B15%2Bgbps%2Bgdrr6%2B192-bit%2Bhdmi%2Fdp%2Bpcie%2B4%2Btorx%2Btwin%2Bfan%2Bampere%2Boc%2Bgraphics%2Bcard%2Caps%2C933&sr=8-1&th=1');
INSERT INTO products VALUES ('57','Intel Core i5-12600K Desktop Processor with Integrated Graphics and 10 (6P+4E) Cores up to 4.9 GHz Unlocked LGA1700 600 Series Chipset 125W','342.50','Intel i5.jpg','CPU','https://www.amazon.com/Intel-i5-12600K-Desktop-Processor-Unlocked/dp/B09FX4D72T/ref=sr_1_1?crid=U2XDZ8D0DHAE&dib=eyJ2IjoiMSJ9.3Sdynq378dIgQBX0ov4nSkQJ3Mn6jIDPP34cmFtnv2jL5p_EgR-oRyvLWyKEfUjUkB1D7qwrfXwv7jWseaXyr_NgIPcJuhs_y-FrP_Qihkaha3A9jwX2MXN2wVeVesr6PoG4IE6Q3k-BmXwmnsvjU7DMyxdSvoVBDtFsm9r2LgNI6gMBzKmGvFynHD5lvfxC_IwLDbaQXojvqZoQme2D0fD4i62_FfG2oq5GrS2K2hQ.EKRBtqpKDzIybi_UniLuP1YIlntyq3ybgOSGaOLDErM&dib_tag=se&keywords=Intel%2BCore%2Bi5-12600K%2BDesktop%2BProcessor%2Bwith%2BIntegrated%2BGraphics%2Band%2B10%2B(6P%2B4E)%2BCores%2Bup%2Bto%2B4.9%2BGHz%2BUnlocked%2BLGA1700%2B600%2BSeries%2BChipset%2B125W&qid=1729499749&sprefix=intel%2Bcore%2Bi5-12600k%2Bdesktop%2Bprocessor%2Bwith%2Bintegrated%2Bgraphics%2Band%2B10%2B6p%2B4e%2Bcores%2Bup%2Bto%2B4.9%2Bghz%2Bunlocked%2Blga1700%2B600%2Bseries%2Bchipset%2B125w%2Caps%2C712&sr=8-1&th=1');
INSERT INTO products VALUES ('58','AMD Ryzen 5 7600X 6-Core, 12-Thread Unlocked Desktop Processor','299.00','Ryzen 5.jpg','CPU','https://www.amazon.com/AMD-7600X-12-Thread-Unlocked-Processor/dp/B0BBJDS62N/ref=sr_1_16?crid=2TH9P6V874QPS&dib=eyJ2IjoiMSJ9.KdIsq10pqlnVuE1F_rfDkey29bBnjEjvm10fPaONC8weFbdOdnz1hKXtXf7oOWy7DnChNSN4OQ4oYFxl3cfM9ed8SnRJd9jh6krTdkZyISDWAXv1H2S_G-T7oDMKHmycJA8');
INSERT INTO products VALUES ('59','Amazon Basics - 27 Inch IPS Monitor 75 Hz Powered with AOC Technology FHD 1080P HDMI, Display Port and VGA Input VESA Compatible Built-in Speakers for Office and Home, Black','96.83','Monitor 1.jpg','Monitor','https://www.amazon.com/Amazon-Basics-75hz-Panel-Monitor/dp/B08WJ3GYC9/ref=sr_1_1_ffob_sspa?dib=eyJ2IjoiMSJ9.UP8cxcOTmZbUxxehSR4bwyzA22WXfkwCft1N5hM-_Nlpv7d0hN8XrXYoHcEL053PDjFvOcc6YDOyAb1J7nsGOZK8bV6uSnzk6iT6hcrY1dGzSCl2DaggfQocSyNgo_UIk3oOSeJeUyLaMJEVEdSIyPJyogJGfD1GYhLR56q1wfhRnNJdVk1lIjal3htU3d2HDhFhLBWe_J-laj4OaPOQ0iwdxzT-NU8XRW0y-Q5sEZ8.VBxG6glwhL9Vt4ZdW618rZZYSMOwVhha6GU2lXcIkSw&dib_tag=se&keywords=Monitor&qid=1729486631&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
INSERT INTO products VALUES ('60','Packard Bell airFrame 21\" FHD Monitor, 1920x1080, Ultrawide, VESA Mount Compatible, Tilt Adjustment, HDMI/VGA, Slim Bezel, for Home, Office, and Light Gaming','59.99','Monitor 2.jpg','Monitor','https://www.amazon.com/Packard-Bell-Milliseconds-Ultrawide-Adjustment/dp/B0BLQRXG6N/ref=sr_1_1_sspa?crid=2WQWJ5S5MT60W&dib=eyJ2IjoiMSJ9.Utc59Mnr2J2YA5tmQ_54N35g8VwbbYHScUh3DFHszmQkIO9EpKb7XD6_ZUVujZ5mJ7pkMpBrpWCFx6ZFgvue6ogQpZtEukGyuKXH323T1331eADnEaAIV-jZ8VuC-lxERd0CbkqiIL01GNXcUiuXt7WAwjAruailWoG7VKY60vxGbrz-0UyjDExdEGSgdXqG1DpahdgVJgIWF4CIOHcL4ZOH6hDX-Yt2o5uoukwY-Sk.GXOUUkLJ057McwSEKwGx6jhHmbA8NDEf1O4VFUNCbME&dib_tag=se&keywords=monitor%2B60hz&qid=1729487588&sprefix=monitor%2B60%2Caps%2C717&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1');
INSERT INTO products VALUES ('61','Acer Nitro KG241Y Sbiip 23.8” Full HD (1920 x 1080) VA Gaming Monitor | AMD FreeSync Premium Technology | 165Hz Refresh Rate | 1ms (VRB) | ZeroFrame Design | 1 x Display Port 1.2 & 2 x HDMI 2.0,Black','172.99','Monitor 165hz.jpg','Monitor','https://www.amazon.com/Acer-Monitor-FreeSync-Technology-ZeroFrame/dp/B0B6DFG1FQ/ref=sr_1_3?dib=eyJ2IjoiMSJ9.sxrx5jB8HyGJG1bwcfOsFCda9RafFVI8C2P6aA1XJ_8v9BHiXjUPbVwp-trkFhUJcmdqIoyLI4WxWV3AddtS3GMEGCSv-pl7dOnGoFSlCpnHPd-V4Dwi5fT0tPSaGY7ejGwuccQ7uyBi7KNeAksgf3diJ_KkCaOXtmbRMCXA34Uk0Cv20bzc8YdTROQQ63BkwwlwiXwK_cyzhw2CvQpumODapbBXb2S7SvRmgKETffI.Fw7N3ExHxj0KQWPwquBMcHGK88CFWWchfgmK4FA3oQ0&dib_tag=se&keywords=120hz%2Bmonitor&qid=1729499590&sr=8-3&th=1');
INSERT INTO products VALUES ('62','XFX Radeon RX 580 GTS XXX Edition 1386MHz OC+, 8GB GDDR5, VR Ready, Dual BIOS, 3xDP HDMI DVI, AMD Graphics Card (RX-580P8DFD6)','129.99','710hFrveYcL.__AC_SY300_SX300_QL70_FMwebp_.jpg','Video Card','https://www.amazon.com/XFX-Radeon-1386MHz-Graphics-RX-580P8DFD6/dp/B06Y66K3XD/ref=sr_1_4?crid=RL5GC1KA8AMU&dib=eyJ2IjoiMSJ9.kfA2XOwkqMRvRiVj89lobBYL1fC7QAcxPwae_XhqzUm7fEX1uXmxTRsAx_xOvNYL9P-MKBvO1cCdlI17JzzrgXpNZp0H9DtiPtI1AVNH7lGt2rR3PVq5ZAXAak1Zj6EXjTbpC9O1cvtQmkvqw6stvody43pkQ2TPpMxb6_jkAEuHatQdStpHf2RVaL3sRsgfRLdsCa0264xi_6PCHrF2jgo44AdADLX2YfTvojcRMmk.xHx29rEhKgSnk10dWkVbcjezY3plBWJ9FpvACQyU8OU&dib_tag=se&keywords=video%2Bcard&qid=1729562471&sprefix=video%2Bcar%2Caps%2C333&sr=8-4&th=1');
INSERT INTO products VALUES ('63','MSI GeForce RTX 4070 Ti Super 16G Ventus 3X Black OC Graphics Card (NVIDIA RTX 4070 Ti Super, 256-Bit, Extreme Clock: 2655 MHz, 16GB GDRR6X 21Gbps, HDMI/DP, Ada Lovelace Architecture)','839.99','vga gforce.jpg','Video Card','https://www.amazon.com/MSI-GeForce-Graphics-256-Bit-Extreme/dp/B0D6ZN2P1J/ref=sr_1_9?crid=RL5GC1KA8AMU&dib=eyJ2IjoiMSJ9.kfA2XOwkqMRvRiVj89lobBYL1fC7QAcxPwae_XhqzUm7fEX1uXmxTRsAx_xOvNYL9P-MKBvO1cCdlI17JzzrgXpNZp0H9DtiPtI1AVNH7lGt2rR3PVq5ZAXAak1Zj6EXjTbpC9O1cvtQmkvqw6stvody43pkQ2TPpMxb6_jkAEuHatQdStpHf2RVaL3sRsgfRLdsCa0264xi_6PCHrF2jgo44AdADLX2YfTvojcRMmk.xHx29rEhKgSnk10dWkVbcjezY3plBWJ9FpvACQyU8OU&dib_tag=se&keywords=video+card&qid=1729562471&sprefix=video+car%2Caps%2C333&sr=8-9');
INSERT INTO products VALUES ('65',' ASUS ProArt GeForce RTX™ 4080 Super OC Edition Graphics Card (PCIe 4.0, 16GB GDDR6X, DLSS 3, HDMI 2.1a, DisplayPort 1.4a)','1150.00','71yTu1mQIFL._AC_SL1500_.jpg','Video Card','https://www.amazon.com/ASUS-ProArt-GeForce-Graphics-DisplayPort/dp/B0CSZCV12L/ref=sr_1_20?crid=RL5GC1KA8AMU&dib=eyJ2IjoiMSJ9.kfA2XOwkqMRvRiVj89lobBYL1fC7QAcxPwae_XhqzUm7fEX1uXmxTRsAx_xOvNYL9P-MKBvO1cCdlI17JzzrgXpNZp0H9DtiPtI1AVNH7lGt2rR3PVq5ZAXAak1Zj6EXjTbpC9O1cvtQmkvqw6stvody43pkQ2TPpMxb6_jkAEuHatQdStpHf2RVaL3sRsgfRLdsCa0264xi_6PCHrF2jgo44AdADLX2YfTvojcRMmk.xHx29rEhKgSnk10dWkVbcjezY3plBWJ9FpvACQyU8OU&dib_tag=se&keywords=video%2Bcard&qid=1729562471&sprefix=video%2Bcar%2Caps%2C333&sr=8-20&th=1');
INSERT INTO products VALUES ('66',' ASUS TUF Gaming GeForce RTX™ 4090 OG OC Edition Gaming Graphics Card (PCIe 4.0, 24GB GDDR6X, DLSS 3, HDMI 2.1, DisplayPort 1.4a)','2149.00','81-Q4kEcj5L._AC_SL1500_.jpg','Video Card','https://www.amazon.com/ASUS-Gaming-GeForce-Graphics-DisplayPort/dp/B0C7JYX6LN/ref=sr_1_19?crid=RL5GC1KA8AMU&dib=eyJ2IjoiMSJ9.kfA2XOwkqMRvRiVj89lobBYL1fC7QAcxPwae_XhqzUm7fEX1uXmxTRsAx_xOvNYL9P-MKBvO1cCdlI17JzzrgXpNZp0H9DtiPtI1AVNH7lGt2rR3PVq5ZAXAak1Zj6EXjTbpC9O1cvtQmkvqw6stvody43pkQ2TPpMxb6_jkAEuHatQdStpHf2RVaL3sRsgfRLdsCa0264xi_6PCHrF2jgo44AdADLX2YfTvojcRMmk.xHx29rEhKgSnk10dWkVbcjezY3plBWJ9FpvACQyU8OU&dib_tag=se&keywords=video%2Bcard&qid=1729562471&sprefix=video%2Bcar%2Caps%2C333&sr=8-19&th=1');
INSERT INTO products VALUES ('67','XFX Quicksilver AMD Radeon RX 7800 XT Magnetic Air Gaming Graphics Card with 16GB GDDR6, RDNA3 RX-78TMAIRF9','499.99','61o+a3tk+2L._AC_SL1500_.jpg','Video Card','https://www.amazon.com/XFX-Quicksilver-Magnetic-Graphics-RX-78TMAIRF9/dp/B0D6NNW6NS/ref=sr_1_11?crid=TZTBZF04SCVR&dib=eyJ2IjoiMSJ9.2xTaNAD4ohW8418WXPmzHgExzeLD_ApPMj5uSuZKeVxHVOEqlfHfLI2VIMhl2CfnzKC2gjwcBQ2ji2pRdMGBNRmqyxkfwUTlihe3qmMbWV7Yyof0rujy1TMP92wAnjmDJk7a2TxddJdMOUcW8vJIcJgOsH5-rvdqICCEfJie_8rMS9e3hLI4b0a1dICLGE5DYJrcXnU_PtFneetsH99IFl35whe8VM0eSO4QEo8J5g0.QzdThnWKSEPiVQs-Tu_4ac0XgwesqJl-lofOpKSIaaA&dib_tag=se&keywords=amd%2Bradeon&qid=1729563235&sprefix=amd%2Bradeo%2Caps%2C496&sr=8-11&th=1');
INSERT INTO products VALUES ('68','Intel Core 12th Gen i3-12100F desktop processor, featuring PCIe Gen 5.0 & 4.0 support, DDR5 and DDR4 support. Discrete graphics required.','84.75','i3.jpg','CPU','https://www.amazon.com/i3-12100F-processor-featuring-support-required/dp/B09NPJX7PV/ref=sr_1_1?crid=1793UAYMZ1B8C&dib=eyJ2IjoiMSJ9.igCwvaMcyo_7UkBE8mKbxRh2fH4B7XZvxxVfLXaU9YplLPLWYIG6xGfHDrcPczocNUfygnC5qJnqPklsbMnUuf8sMAwVS7bW9k3F_h6sov-VumfxAXK5t13UNRSxx_Tile2iZyDTcdIYS3SLBZR_pOSHzdqTlXwGwuoXkU9ndcPTByZrJjtzS-TMkTlA9VPlok8ToQvIAZLOcP2D5CIox_2V4V_Zb8AWTPE5pReYqUtlu12nlCjwy1rJ4Oqzf3RxBJV7431uLV1lwqDq4CWkEwUNARejQxD4AoTBk6S3yeo.bVwF-AaJ8Duw_wQspJ2tOjeQVWIU-qkLRuFdrfhH_ec&dib_tag=se&keywords=Computer+CPU+Processors+cheap+i3&qid=1730052751&s=pc&sprefix=computer+cpu+processors+cheap+i3%2Ccomputers%2C301&sr=1-1');
INSERT INTO products VALUES ('69','Thermalright Peerless Assassin 120 SE CPU Cooler, 6 Heat Pipes AGHP Technology, Dual 120mm PWM Fans, 1550RPM Speed, for AMD:AM4 AM5/Intel LGA 1700/1150/1151/1200,PC Cooler Brand: Thermalright','38.90','cooler1.jpg','CPU Cooler','https://www.amazon.com/Thermalright-Peerless-SE-Aluminium-Technology/dp/B09LGY38L4/ref=sr_1_3?dib=eyJ2IjoiMSJ9.zO84t2R5oEyd5b2q43MJ7xDk5g8nuBYKKu0sGSp2s1_cYharm4w__JaDr-Oy1gVTwXXy6ew0GX7o-BGz1GESAHbBBw_3z_TI9eOkOY5lY-yi-dl3597_9hpQ13Wv-kOPP4etncF_EROOWmAwcGENdrNABq1hAuXmJkUWMh7JEprnSQIORCG3DS1BJ_JXEEpRzcXq0H9xdO6ZclbqS2uNRTsMdNB9fI9rKGDFnAXLoUI.IAJMTlD7DOjPN-DdPxh2KsEmZTbnmVWOg5lsT4dvArQ&dib_tag=se&keywords=cpu%2Bcooler&qid=1730052932&sr=8-3&th=1');
INSERT INTO products VALUES ('70','Corsair iCUE H150i Elite CAPELLIX XT Desktop Liquid CPU Cooler - Three AF120 RGB Elite Fans - 360mm Radiator - Intel LGA 1700, 1200, 115X, 2066, AMD AM5, AM4 - Included iCUE Commander CORE - Black','219.99','cooler2.jpg','CPU Cooler','https://www.amazon.com/Corsair-H150i-CAPELLIX-Liquid-Cooler/dp/B0BQJ6QL7L/ref=sr_1_4?dib=eyJ2IjoiMSJ9.zO84t2R5oEyd5b2q43MJ7xDk5g8nuBYKKu0sGSp2s1_cYharm4w__JaDr-Oy1gVTwXXy6ew0GX7o-BGz1GESAHbBBw_3z_TI9eOkOY5lY-yi-dl3597_9hpQ13Wv-kOPP4etncF_EROOWmAwcGENdrNABq1hAuXmJkUWMh7JEprnSQIORCG3DS1BJ_JXEEpRzcXq0H9xdO6ZclbqS2uNRTsMdNB9fI9rKGDFnAXLoUI.IAJMTlD7DOjPN-DdPxh2KsEmZTbnmVWOg5lsT4dvArQ&dib_tag=se&keywords=cpu%2Bcooler&qid=1730052932&sr=8-4&th=1');
INSERT INTO products VALUES ('71','Cooler Master Hyper 212 Spectrum V3 ARGB CPU Air Cooler, 120mm PWM Fan, 4 Heat Pipes, Silver Nickel-Plated Copper, 152mm Tall, AMD Ryzen AM5|AM4, Intel LGA 1851|1700|1200 Brackets','17.99','cooler3.jpg','CPU Cooler','https://www.amazon.com/Cooler-Master-Spectrum-Brackets-RR-S4NA-17PA-R1/dp/B0BRBW94VL/ref=sr_1_10?dib=eyJ2IjoiMSJ9.zO84t2R5oEyd5b2q43MJ7xDk5g8nuBYKKu0sGSp2s1_cYharm4w__JaDr-Oy1gVTwXXy6ew0GX7o-BGz1GESAHbBBw_3z_TI9eOkOY5lY-yi-dl3597_9hpQ13Wv-kOPP4etncF_EROOWmAwcGENdrNABq1hAuXmJkUWMh7JEprnSQIORCG3DS1BJ_JXEEpRzcXq0H9xdO6ZclbqS2uNRTsMdNB9fI9rKGDFnAXLoUI.IAJMTlD7DOjPN-DdPxh2KsEmZTbnmVWOg5lsT4dvArQ&dib_tag=se&keywords=cpu%2Bcooler&qid=1730052932&sr=8-10&th=1');
INSERT INTO products VALUES ('72','MSI B550M PRO-VDH WiFi ProSeries Motherboard (AMD Ryzen 5000, AM4, DDR4, PCIe 4.0, SATA 6Gb/s, M.2, USB 3.2 Gen 1, Wi-Fi, Bluetooth, D-SUB/HDMI/DP, Micro-ATX)','119.99','mother1.jpg','Motherboard','https://www.amazon.com/MSI-B550M-PRO-VDH-ProSeries-Motherboard/dp/B089D1YG11/ref=sr_1_11?c=ts&dib=eyJ2IjoiMSJ9.zOBkFPkzqdJtdiTY5L5F_X9Xrx1GXyIS6gFGsZ-tzEzXbFf0Skgft2H9ArRJxtCNEzwC0jEVmVZmO7jGpnXfjFDbrhVuS-geouYMTN6azZ0KLsW_5vg6uFm7Pbo9AdSMuHuHQds5CX-KfLEnGFuMd7MTuvd4CC568CYacUwfsirSdNdl_vJCRPwaJe0VMmo0BVavHUQyHpHhmpb9XtC60VQN6bm4jIpf67-XF-Xt3qPiNZuvWOvpvDN1ryZ5zw38Mw9Hh8QfLtvGbbDpjCjfNPxVd333mY-RvnJ276GtIR0.oNbtqzSQhpK4_pkwXWFRuGql9kWSGc8Tyf7Sx1ocJjc&dib_tag=se&keywords=Computer%2BMotherboards&qid=1730053300&s=pc&sr=1-11&ts_id=1048424&th=1');
INSERT INTO products VALUES ('73','ASUS TUF Gaming Z790-Plus WiFi LGA 1700(Intel 14th,12th &13th Gen) ATX Gaming Motherboard(PCIe 5.0,DDR5,4xM.2 Slots,16+1 DrMOS,WiFi 6,2.5Gb LAN,Front USB 3.2 Gen 2 Type-C,Thunderbolt 4(USB4),Aura RGB)','249.99','mother2.jpg','Motherboard','https://www.amazon.com/ASUS-TUF-Intel%C2%AE12th-Motherboard-Thunderbolt/dp/B0BQD58D96/ref=sr_1_3?c=ts&dib=eyJ2IjoiMSJ9.zOBkFPkzqdJtdiTY5L5F_X9Xrx1GXyIS6gFGsZ-tzEzXbFf0Skgft2H9ArRJxtCNEzwC0jEVmVZmO7jGpnXfjFDbrhVuS-geouYMTN6azZ0KLsW_5vg6uFm7Pbo9AdSMuHuHQds5CX-KfLEnGFuMd7MTuvd4CC568CYacUwfsirSdNdl_vJCRPwaJe0VMmo0BVavHUQyHpHhmpb9XtC60VQN6bm4jIpf67-XF-Xt3qPiNZuvWOvpvDN1ryZ5zw38Mw9Hh8QfLtvGbbDpjCjfNPxVd333mY-RvnJ276GtIR0.oNbtqzSQhpK4_pkwXWFRuGql9kWSGc8Tyf7Sx1ocJjc&dib_tag=se&keywords=Computer%2BMotherboards&qid=1730053300&s=pc&sr=1-3&ts_id=1048424&th=1');
INSERT INTO products VALUES ('74','ASUS ROG Strix Z790-A Gaming WiFi II (WiFI 7) LGA 1700(Intel 14th & 13th & 12th Gen) ATX gaming motherboard(DDR5,5X M.2 slots,PCIe 5.0 x16,front-panel USB connector with PD 3.0 up to 30W)','339.99','mother3.jpg','Motherboard','https://www.amazon.com/ASUS-ROG-II-Motherboard-Front-Panel/dp/B0CJMR6652/ref=sr_1_16?c=ts&dib=eyJ2IjoiMSJ9.zOBkFPkzqdJtdiTY5L5F_X9Xrx1GXyIS6gFGsZ-tzEzXbFf0Skgft2H9ArRJxtCNEzwC0jEVmVZmO7jGpnXfjFDbrhVuS-geouYMTN6azZ0KLsW_5vg6uFm7Pbo9AdSMuHuHQds5CX-KfLEnGFuMd7MTuvd4CC568CYacUwfsirSdNdl_vJCRPwaJe0VMmo0BVavHUQyHpHhmpb9XtC60VQN6bm4jIpf67-XF-Xt3qPiNZuvWOvpvDN1ryZ5zw38Mw9Hh8QfLtvGbbDpjCjfNPxVd333mY-RvnJ276GtIR0.oNbtqzSQhpK4_pkwXWFRuGql9kWSGc8Tyf7Sx1ocJjc&dib_tag=se&keywords=Computer%2BMotherboards&qid=1730053300&s=pc&sr=1-16&ts_id=1048424&th=1');
