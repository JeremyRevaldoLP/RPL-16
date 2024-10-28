CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
INSERT INTO products VALUES ('75','CORSAIR VENGEANCE LPX DDR4 RAM 32GB (2x16GB) 3200MHz CL16-20-20-38 1.35V Intel AMD Desktop Computer Memory - Black (CMK32GX4M2E3200C16)','79.99','memory1.jpg','Memory','https://www.amazon.com/Corsair-VENGEANCE-3200MHz-Compatible-Computer/dp/B07RW6Z692/ref=sr_1_3?dib=eyJ2IjoiMSJ9.m8ujfXoYkPF5o3Bi8JIHrY3drMO7tLVKapuzQkfTqkeEOycpN8-2FBNXJI4Hg-Rh78edafu0fyjXL10uPCmwBdi4cCMQFQ_P7mN08kxupllenJHmsmfUCPJTA5aV45GRDOi2Eypx_70ZRr7BNHg2YGQzOFIushklq895DJJoqyVc1xrPDTm6TKUFrz5Nek0zytA2ssMENiCO6daKElMbLziEiBBLeSw0T4ocoVf3HL4.QRvpJHJdXtqHzitk3AAMoI3j8Nd-M2zCJ0G64kc66wU&dib_tag=se&keywords=memory+pc&qid=1730060883&sr=8-3');
INSERT INTO products VALUES ('76','CORSAIR VENGEANCE RGB DDR5 RAM 32GB (2x16GB) 6400MHz CL36-48-48-104 1.35V Intel XMP Desktop Computer Memory - Black (CMH32GX5M2B6400C36)','129.99','memory2.jpg','Memory','https://www.amazon.com/CORSAIR-VENGEANCE-6400MHz-Compatible-Computer/dp/B0BXHC74WD/ref=sr_1_6?dib=eyJ2IjoiMSJ9.m8ujfXoYkPF5o3Bi8JIHrY3drMO7tLVKapuzQkfTqkeEOycpN8-2FBNXJI4Hg-Rh78edafu0fyjXL10uPCmwBdi4cCMQFQ_P7mN08kxupllenJHmsmfUCPJTA5aV45GRDOi2Eypx_70ZRr7BNHg2YGQzOFIushklq895DJJoqyVc1xrPDTm6TKUFrz5Nek0zytA2ssMENiCO6daKElMbLziEiBBLeSw0T4ocoVf3HL4.QRvpJHJdXtqHzitk3AAMoI3j8Nd-M2zCJ0G64kc66wU&dib_tag=se&keywords=memory%2Bpc&qid=1730060883&sr=8-6&th=1');
INSERT INTO products VALUES ('77','SAMSUNG 990 EVO SSD 1TB, PCIe Gen 4x4, Gen 5x2 M.2 2280 NVMe Internal Solid State Drive, Speeds Up to 5,000MB/s, Upgrade Storage for PC Computer, Laptop, MZ-V9E1T0B/AM, Black','149.99','storage1.jpg','Storage','https://www.amazon.com/Samsung-Internal-Computer-MZ-V9E1T0B-AM/dp/B0CRCC9863/ref=sr_1_11?dib=eyJ2IjoiMSJ9.O6kFt2Ti4_9iGvMIO-TehaZh9hRgu45hc2xHoEg6Vaw9RpYDsHcJkV-kr5J3EvnmenkF43DwY1pY01DrOVTmJYgj_4oDYET24CK8-rPTieylGgqmyw6rm9J_KnslRbWaCgLqtyzGbF7rwFuIx3ZjAeehhTkeYZwmwqN3QTUIPCGCvOIy3vhNQUeGRiRnauoxYmGTaYTXI0cblSpiZPD97TlVVnUJwrzT7h2SUSE_MVI.7oXILBvqN6ufL5RmcTLihiAw6B2-8doLutW41LzvNFE&dib_tag=se&keywords=computer%2Bstorage&qid=1730089075&sr=8-11&th=1');
INSERT INTO products VALUES ('78','Western Digital WD_BLACK 1TB SN770 NVMe Internal Gaming SSD Solid State Drive - Gen4 PCIe, M.2 2280, Up to 5,150 MB/s - WDS100T3X0E','109.99','storage2.jpg','Storage','https://www.amazon.com/WD_BLACK-SN770-Internal-Gaming-Solid/dp/B09QV692XY/ref=sr_1_13?dib=eyJ2IjoiMSJ9.O6kFt2Ti4_9iGvMIO-TehaZh9hRgu45hc2xHoEg6Vaw9RpYDsHcJkV-kr5J3EvnmenkF43DwY1pY01DrOVTmJYgj_4oDYET24CK8-rPTieylGgqmyw6rm9J_KnslRbWaCgLqtyzGbF7rwFuIx3ZjAeehhTkeYZwmwqN3QTUIPCGCvOIy3vhNQUeGRiRnauoxYmGTaYTXI0cblSpiZPD97TlVVnUJwrzT7h2SUSE_MVI.7oXILBvqN6ufL5RmcTLihiAw6B2-8doLutW41LzvNFE&dib_tag=se&keywords=computer%2Bstorage&qid=1730089075&sr=8-13&th=1');
INSERT INTO products VALUES ('79','Toshiba N300 10TB NAS 3.5-Inch Internal Hard Drive - CMR SATA 6 Gb/s 7200 RPM 512 MB Cache - HDWG71AXZSTA','219.99','storage3.jpg','Storage','https://www.amazon.com/Toshiba-N300-3-5-Inch-Internal-Drive/dp/B0CYQK9BTJ/ref=sxin_15_pa_sp_search_thematic_sspa?content-id=amzn1.sym.6b32b29c-c1e7-4548-a253-3cba792cf5c7%3Aamzn1.sym.6b32b29c-c1e7-4548-a253-3cba792cf5c7&cv_ct_cx=computer%2Bstorage&dib=eyJ2IjoiMSJ9.p-raWmThLbYk67r6PjvFp-yEkHWdenBbZXx_bnL4cRDyshjiU0krhcua44sfOweGZ2bWuKmRntPKqNWqWtluOQ.M7brvMBqyuEg4CmGgbNkL8c112Y6RVGyJ27k_rQa0HY&dib_tag=se&keywords=computer%2Bstorage&pd_rd_i=B0CYQK9BTJ&pd_rd_r=3ecbfa3b-2463-430d-8a43-c2696cc67488&pd_rd_w=IivSo&pd_rd_wg=Djx9P&pf_rd_p=6b32b29c-c1e7-4548-a253-3cba792cf5c7&pf_rd_r=22QD19TTZ4Z0YW1C0MWX&qid=1730089075&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sr=1-1-2c727eeb-987f-452f-86bd-c2978cc9d8b9-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9zZWFyY2hfdGhlbWF0aWM&th=1');
INSERT INTO products VALUES ('80','Cooler Master MasterBox Q300L Micro-ATX Tower with Magnetic Design Dust Filter, Transparent Acrylic Side Panel, Adjustable I/O & Fully Ventilated Airflow, Black (MCB-Q300L-KANN-S00)','39.99','case1.jpg','Case','https://www.amazon.com/Cooler-Master-Transparent-Adjustable-Ventilated/dp/B0785GRMPG/ref=sr_1_4?c=ts&dib=eyJ2IjoiMSJ9.ggwuYTc12wUG66xb9DMNLHVaVky5SHwHNeERYeG8OlC5zWS44-VVM0yOvyCT894ZS8eioe788pamogdUDv6nBH7iBaRfuih9-YOstCSPrRfi0at4iVOr-hQ1IRkTtdub1CEaf5FSqfDEEAqa8eZDd-rnY4qpQNY30E-d0NE4t2XBvk3oxGDWIJ9UI1ggy2x2aGyW4i2qjXXEzi-hGqRiBl7Wm4lrIrrHwGLQ1mYBqe2SPBakqaqe0xHKcE6zhkS1zrj3ArySX9VZ_GXejvuyEOOIh5CEsDJJ3OxQfI5kpTg.eMC0Q6qYScVp7ppMqyt5FU1HhlILIjQcZY49KPQdNVU&dib_tag=se&keywords=Computer%2BCases&qid=1730089511&s=pc&sr=1-4&ts_id=572238&th=1');
INSERT INTO products VALUES ('81','CORSAIR 4000D AIRFLOW Tempered Glass Mid-Tower ATX Case - High-Airflow - Cable Management System - Spacious Interior - Two Included 120 mm Fans - Black','104.99','case2.jpg','Case','https://www.amazon.com/Corsair-4000D-Airflow-Tempered-Mid-Tower/dp/B08C7BGV3D/ref=sr_1_2?c=ts&dib=eyJ2IjoiMSJ9.ggwuYTc12wUG66xb9DMNLHVaVky5SHwHNeERYeG8OlC5zWS44-VVM0yOvyCT894ZS8eioe788pamogdUDv6nBH7iBaRfuih9-YOstCSPrRfi0at4iVOr-hQ1IRkTtdub1CEaf5FSqfDEEAqa8eZDd-rnY4qpQNY30E-d0NE4t2XBvk3oxGDWIJ9UI1ggy2x2aGyW4i2qjXXEzi-hGqRiBl7Wm4lrIrrHwGLQ1mYBqe2SPBakqaqe0xHKcE6zhkS1zrj3ArySX9VZ_GXejvuyEOOIh5CEsDJJ3OxQfI5kpTg.eMC0Q6qYScVp7ppMqyt5FU1HhlILIjQcZY49KPQdNVU&dib_tag=se&keywords=Computer%2BCases&qid=1730089511&s=pc&sr=1-2&ts_id=572238&th=1');
INSERT INTO products VALUES ('82','NZXT H7 Elite - CM-H71EB-02 - ATX Mid Tower PC Gaming Case - Front I/O USB Type-C Port - Quick-Release Tempered Glass Side Panel - Black (2023)','179.99','case3.jpg','Case','https://www.amazon.com/NZXT-H7-Elite-CM-H71EB-02-Quick-Release/dp/B0BQSDC2JS/ref=sr_1_24?c=ts&dib=eyJ2IjoiMSJ9.ggwuYTc12wUG66xb9DMNLHVaVky5SHwHNeERYeG8OlC5zWS44-VVM0yOvyCT894ZS8eioe788pamogdUDv6nBH7iBaRfuih9-YOstCSPrRfi0at4iVOr-hQ1IRkTtdub1CEaf5FSqfDEEAqa8eZDd-rnY4qpQNY30E-d0NE4t2XBvk3oxGDWIJ9UI1ggy2x2aGyW4i2qjXXEzi-hGqRiBl7Wm4lrIrrHwGLQ1mYBqe2SPBakqaqe0xHKcE6zhkS1zrj3ArySX9VZ_GXejvuyEOOIh5CEsDJJ3OxQfI5kpTg.eMC0Q6qYScVp7ppMqyt5FU1HhlILIjQcZY49KPQdNVU&dib_tag=se&keywords=Computer%2BCases&qid=1730089511&s=pc&sr=1-24&ts_id=572238&th=1');
INSERT INTO products VALUES ('83','Thermaltake Smart 500W 80+ White Certified PSU, Continuous Power with 120mm Ultra Quiet Cooling Fan, ATX 12V V2.3/EPS 12V Active PFC Power Supply PS-SPD-0500NPCWUS-W','44.99','pws1.jpg','Power Supply','https://www.amazon.com/Thermaltake-Certified-Continuous-cooling-PS-SPD-0500NPCWUS-W/dp/B014W3EM2W/ref=sr_1_8?c=ts&dib=eyJ2IjoiMSJ9.QDFtnXYe9UaDyvWRzy6qC5PhIKFNXrX8pN8j5gMTScCF0zPJ9edbJlxImWgmCk7KSf77NTIfpUMng8kp5kM4_I-gSCgSzDnoAc5rli6YA_adVbkSylI0cZcsuy5DBzLF06MeGq4ODGvTaGpD173vVoTsplOVZMlC1kzTj4_0chW9_3Q_sgUwyhqZ1tNwVnZ-1LitAX2oocB86KHxQOR2crg-_TZL8LtXC0CbBCjjrorshrASkmY0r7MJ2rB-wVr-MfgGX1ZoX3tYF9-r9PPXSoZVRRzdZecXI34Ylp07Bws.BJguojzxKLotmDBJzybs-SsYvAv13h89qrV6fdAmRU0&dib_tag=se&keywords=Computer%2BPower%2BSupplies&qid=1730089744&s=pc&sr=1-8&ts_id=1161760&th=1');
INSERT INTO products VALUES ('84','Corsair RM750e (2023) Fully Modular Low-Noise Power Supply - ATX 3.0 & PCIe 5.0 Compliant - 105°C-Rated Capacitors - 80 Plus Gold Efficiency - Modern Standby Support - Black','99.99','pws2.jpg','Power Supply','https://www.amazon.com/Corsair-RM750e-Modular-Low-Noise-Supply/dp/B0BYR1BXC6/ref=sr_1_3?c=ts&dib=eyJ2IjoiMSJ9.QDFtnXYe9UaDyvWRzy6qC5PhIKFNXrX8pN8j5gMTScCF0zPJ9edbJlxImWgmCk7KSf77NTIfpUMng8kp5kM4_I-gSCgSzDnoAc5rli6YA_adVbkSylI0cZcsuy5DBzLF06MeGq4ODGvTaGpD173vVoTsplOVZMlC1kzTj4_0chW9_3Q_sgUwyhqZ1tNwVnZ-1LitAX2oocB86KHxQOR2crg-_TZL8LtXC0CbBCjjrorshrASkmY0r7MJ2rB-wVr-MfgGX1ZoX3tYF9-r9PPXSoZVRRzdZecXI34Ylp07Bws.BJguojzxKLotmDBJzybs-SsYvAv13h89qrV6fdAmRU0&dib_tag=se&keywords=Computer%2BPower%2BSupplies&qid=1730089744&s=pc&sr=1-3&ts_id=1161760&th=1');
INSERT INTO products VALUES ('85','CORSAIR RM850x Fully Modular ATX Power Supply - 80 PLUS Gold - Low-Noise Fan - Zero RPM - Black','149.95','pws3.jpg','Power Supply','https://www.amazon.com/Corsair-RM850x-Fully-Modular-Supply/dp/B08R5JPTMZ/ref=sr_1_4?c=ts&dib=eyJ2IjoiMSJ9.QDFtnXYe9UaDyvWRzy6qC5PhIKFNXrX8pN8j5gMTScCF0zPJ9edbJlxImWgmCk7KSf77NTIfpUMng8kp5kM4_I-gSCgSzDnoAc5rli6YA_adVbkSylI0cZcsuy5DBzLF06MeGq4ODGvTaGpD173vVoTsplOVZMlC1kzTj4_0chW9_3Q_sgUwyhqZ1tNwVnZ-1LitAX2oocB86KHxQOR2crg-_TZL8LtXC0CbBCjjrorshrASkmY0r7MJ2rB-wVr-MfgGX1ZoX3tYF9-r9PPXSoZVRRzdZecXI34Ylp07Bws.BJguojzxKLotmDBJzybs-SsYvAv13h89qrV6fdAmRU0&dib_tag=se&keywords=Computer%2BPower%2BSupplies&qid=1730089744&s=pc&sr=1-4&ts_id=1161760&th=1');
INSERT INTO products VALUES ('86','Windows 11 Pro Upgrade, from Windows 11 Home (Digital Download)','99.00','os1.jpg','Operating System','https://www.amazon.com/Windows-Upgrade-Home-Digital-Download/dp/B09WCTTXQ6/ref=sr_1_2?dib=eyJ2IjoiMSJ9.vUNBzfRW7bbWEt1dh0Q4s5dkEk_1_vwFNvb5d8tdtu4b_l2o6EoTCjfvGq6SrAytZNZxTkgk2dLcLzeWA0SJoDT8tOsOV6k9d9HTzwkNC3amUFOBs8hs7IM8StIOLpuwL5vHHpdDvXkZzf1WsfoUGtnV_RRY9QFLmzeZMg5_VjfE_YZjgPhwO_uO4wI8qKnzt6s8OQaLLLFTnowLDzE-15y-q9bcThNBWmnZSam-Ckk.5Av6no5J08_Eh-hKrSnZhAgfbo04_bDe9kh-JYYxUhI&dib_tag=se&keywords=operating%2Bsystem%2Bpc&qid=1730089983&sr=8-2&th=1');
INSERT INTO products VALUES ('87','Microsoft OEM System Builder | Windоws 11 Pro | Intended use for new systems | Authorized by Microsoft','169.99','os3.jpg','Operating System','https://www.amazon.com/Microsoft-Wind%D0%BEws-Home-OEM-DVD/dp/B09MYBD79G/ref=sr_1_1?dib=eyJ2IjoiMSJ9.vUNBzfRW7bbWEt1dh0Q4s5dkEk_1_vwFNvb5d8tdtu4b_l2o6EoTCjfvGq6SrAytZNZxTkgk2dLcLzeWA0SJoDT8tOsOV6k9d9HTzwkNC3amUFOBs8hs7IM8StIOLpuwL5vHHpdDvXkZzf1WsfoUGtnV_RRY9QFLmzeZMg5_VjfE_YZjgPhwO_uO4wI8qKnzt6s8OQaLLLFTnowLDzE-15y-q9bcThNBWmnZSam-Ckk.5Av6no5J08_Eh-hKrSnZhAgfbo04_bDe9kh-JYYxUhI&dib_tag=se&keywords=operating%2Bsystem%2Bpc&qid=1730089983&sr=8-1&th=1');
