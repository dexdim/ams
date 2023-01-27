-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Wayan Cahyono','wayan@hostinger.com',NULL,NULL),(3,'Ade Syah Perkasa Lubis','syah@hostinger.com',NULL,NULL),(19,'Vip Yuliana Indriyani','lia@hostinger.com',NULL,NULL),(35,'Yogi Maulana','yogi@hostinger.com',NULL,NULL),(42,'Betia Bayu Saputra','bayu.putra@hostinger.com',NULL,NULL),(44,'R. Ratu Mahardhika Prana Ayu','ratu@hostinger.com',NULL,NULL),(53,'Wahid Arif Amirudin','wahid@hostinger.com',NULL,NULL),(56,'Muhammat Najib','moehnajib@hostinger.com',NULL,NULL),(58,'Annisa Fauziyyah','annisa@hostinger.com',NULL,NULL),(62,'Erlia Thristi Oktiyana','erlia@hostinger.com',NULL,NULL),(63,'Dian Nurma Arif','dian.nur@hostinger.com',NULL,NULL),(65,'Nofiana Dwi Dayanti','nofiana@hostinger.com',NULL,NULL),(66,'Izatul Ifada','izatul.ifada@hostinger.com',NULL,NULL),(68,'Desvicha Reschi Epnu Wardana','desvicha@hostinger.com',NULL,NULL),(69,'Hendi Herdiana','hendi.herdiana@hostinger.com',NULL,NULL),(72,'Tantan Ma\'mur Purnama','tantan@hostinger.com',NULL,NULL),(74,'Dewi Suryaningsih','dewi@hostinger.com',NULL,NULL),(75,'Indrarisa Pradana','indrarisa.pradana@hostinger.com',NULL,NULL),(76,'Rozali Ismail','rozali.ismail@hostinger.com',NULL,NULL),(78,'Zidni Syukuri','zidni.syukuri@hostinger.com',NULL,NULL),(80,'Windar Makhita','wiwi.mahita@hostinger.com',NULL,NULL),(95,'Yudho Antoro','NA',NULL,NULL),(97,'Ariata Christy Uly','ariata@hostinger.com',NULL,NULL),(98,'A Sofalul Khazari','sofal.khazari@hostinger.com',NULL,NULL),(102,'Nuurohman Hani Sakina','rohman@hostinger.com',NULL,NULL),(103,'Novri Puji Kurniawan','novri@hostinger.com',NULL,NULL),(104,'Nashwan Ihsan Fazil','nashwan@hostinger.com',NULL,NULL),(111,'Ficky Septian Ali','ficky@hostinger.com',NULL,NULL),(112,'Fandy Candra Mustafa','fandy@hostinger.com',NULL,NULL),(122,'Fachrudin Gilang Dewantara','gilang@hostinger.com',NULL,NULL),(125,'Hazar Farras Tsany','hazar@hostinger.com',NULL,NULL),(126,'Dani Indra Kusworo','dani@hostinger.com',NULL,NULL),(129,'Heri Andria Herdiana','andri.herdiana@hostinger.com',NULL,NULL),(133,'Irfan Gani Rahmadan','irfan@hostinger.com',NULL,NULL),(136,'Rizki Rohmatullah Alamsyah','rizki.alamsyah@hostinger.com',NULL,NULL),(139,'Usmari','usmari@hostinger.com',NULL,NULL),(141,'Agus Setyawan','agus@hostinger.com',NULL,NULL),(142,'Brigita Olivia Meliala','olivia@hostinger.com',NULL,NULL),(143,'Shidka Hilda','shidka@hostinger.com',NULL,NULL),(145,'Rheinjani Dora Novelia','dora.novelia@hostinger.com',NULL,NULL),(146,'Lukas Agus Budi Prasetya','lukas.prasetya@hostinger.com',NULL,NULL),(153,'Avies Faizal','faiz@hostinger.com',NULL,NULL),(155,'Bernadus Rossi Zakaria','rossi@hostinger.com',NULL,NULL),(161,'Titis Dwi Aribowo','titis@hostinger.com',NULL,NULL),(166,'Maulidya Sistiadna','maudy@hostinger.com',NULL,NULL),(168,'Koes Ayunda Zikrina Putri','ayunda.zikrina@hostinger.com',NULL,NULL),(170,'Akril Valerat Deainert Wierfi','dea@hostinger.com',NULL,NULL),(171,'Fairuz Nadea Velatsani','nadea@hostinger.com',NULL,NULL),(175,'Deodatus Jalu Christ Baskara','jalu@hostinger.com',NULL,NULL),(178,'Kartika Cahyaningrum','kartika@hostinger.com',NULL,NULL),(179,'Mahfudz Aji Wicaksono M.Nur','mahfudz.aji@hostinger.com',NULL,NULL),(180,'Mungkassasi Pajar Saputro','mungkassasi.saputro@hostinger.com',NULL,NULL),(183,'Suryadi Kurniawan','suryadi@hostinger.com',NULL,NULL),(186,'Astri Ratna Prakasitari','astri@hostinger.com',NULL,NULL),(189,'Imas Indra Hapsari','imas@hostinger.com',NULL,NULL),(192,'Mirza Hikmatyar','mirza.hikmatyar@hostinger.com',NULL,NULL),(193,'Muhamad Furqon','furqon.mohammad@hostinger.com',NULL,NULL),(196,'Gielang Prastya Widagdo','prastya@hostinger.com',NULL,NULL),(198,'Devin Agasi Adar Napitupulu','devin@hostinger.com',NULL,NULL),(202,'Jordana Alexandrea C','jordana@hostinger.com',NULL,NULL),(205,'Anas Abdur Rohim Khoiri','anas.rohim@hostinger.com',NULL,NULL),(206,'Indah Nor Oetami','indah@hostinger.com',NULL,NULL),(207,'Safina Shalsabila','safina@hostinger.com',NULL,NULL),(208,'Fitrana Amalia Hafizhah','fitrana@hostinger.com',NULL,NULL),(212,'Rani Janiarti','rani@hostinger.com',NULL,NULL),(217,'Arifia Marsa Salsabila','arifia.marsa@hostinger.com',NULL,NULL),(220,'Ridandi Bintang Pamungkas','bintang@hostinger.com',NULL,NULL),(227,'Aditya Bhaswara Brata','aditya.brata@hostinger.com',NULL,NULL),(241,'Weamas Caprinsa Fathir','wea@hostinger.com',NULL,NULL),(243,'Radityo Krisna Murthi','tyo@hostinger.com',NULL,NULL),(245,'Marisa Aprilliyana','sasa@hostinger.com',NULL,NULL),(246,'Ayyoub Maulana Hadidy','ayyoub@hostinger.com',NULL,NULL),(250,'Rizka Isnaeni Sunniya','rizka@hostinger.com',NULL,NULL),(251,'Abdurrachman Azis','abdurrachman.azis@hostinger.com',NULL,NULL),(255,'Anjar Setia Wibowo','anjar.setia@hostinger.com',NULL,NULL),(260,'Sendika Hawari Mohammad','sendika@hostinger.com',NULL,NULL),(263,'Ervan Yuffrizal','ervan.yuffrizal@hostinger.com',NULL,NULL),(265,'Kikik Chomsan Ma\'aruf','kikik@hostinger.com',NULL,NULL),(266,'Annisa Rizki Purwani','annisa.rizki@hostinger.com',NULL,NULL),(269,'Noviantika Gita Sekar Ayu','noviantika@hostinger.com',NULL,NULL),(275,'Hayu Laksitaning Astuti','hayu@hostinger.com',NULL,NULL),(276,'Vincent Putra Gunawan','vincent.gunawan@hostinger.com',NULL,NULL),(279,'Dafit Kurniawan','dafit.kurniawan@hostinger.com',NULL,NULL),(281,'Sarah Najla Adha','sarah.adha@hostinger.com',NULL,NULL),(282,'Iis Setianingrum','iis@hostinger.com',NULL,NULL),(284,'Anindya Nadhira Rafitricia','anindya.rafitricia@hostinger.com',NULL,NULL),(285,'Dicky Kurniawan','dicky.kurniawan@hostinger.com',NULL,NULL),(287,'Awanda Muthia Sari','awanda.sari@hostinger.com',NULL,NULL),(288,'Maisha Rachmat','maisha.rachmat@hostinger.com',NULL,NULL),(290,'Lilis Arilia','lilis.arilia@hostinger.com',NULL,NULL),(292,'Rahmad Sandy Kurnia','rahmad.sandy@hostinger.com',NULL,NULL),(296,'Muhammad Tri Aldino','tri.aldino@hostinger.com',NULL,NULL),(299,'Dimas Yoga Pamungkas','dimas.pamungkas@hostinger.com',NULL,NULL),(301,'Marita Dwi Asriyani','marita.asriyani@hostinger.com',NULL,NULL),(303,'Ajeng Bisana Pradhipta','ajeng.pradhipta@hostinger.com',NULL,NULL),(306,'Astia Putri Anggarini','astia.anggarini@hostinger.com',NULL,NULL),(307,'Intan Ayu Puspratiwi','intan.puspratiwi@hostinger.com',NULL,NULL),(308,'Fitra Hayu Cintami','fitra.cintami@hostinger.com',NULL,NULL),(320,'Sifa Aribah Huwaida','sifa.huwaid@hostinger.com',NULL,NULL),(321,'Nugrahanto Aji Wicaksono','nugrahanto.aji@hostinger.com',NULL,NULL),(322,'Amelia Meidy Putriayu Semadaria','amelia.putriayu@hostinger.com',NULL,NULL),(325,'Muthi\'a Hasna Thifaltanti','muthia.hasna@hostinger.com',NULL,NULL),(330,'Amanda Belina','amanda.belina@hostinger.com',NULL,NULL),(332,'Jaizah Farah Fadhilah','farah.fadhilah@hostinger.com',NULL,NULL),(335,'Austenita Pasca Aisyah','austenita.aisyah@hostinger.com',NULL,NULL),(336,'Adelia Synda Prastika','adelia.prastika@hostinger.com',NULL,NULL),(344,'Nungky Surya Perdana','nungky.perdana@hostinger.com',NULL,NULL),(347,'Prita Damayanti Nugroho','prita.nugroho@hostinger.com',NULL,NULL),(348,'Ayunda Salsabilla','ayunda.salsabila@hostinger.com',NULL,NULL),(353,'Robby Kurniawan','robby.kurniawan@hostinger.com',NULL,NULL),(360,'Aulia Adistya Candra','adis.candra@hostinger.com',NULL,NULL),(371,'Kiptya Nur Astari','kiptya.astari@hostinger.com',NULL,NULL),(373,'Briggita Sekar Endah Sutrisno','brigitta.endah@hostinger.com',NULL,NULL),(375,'Fika Dyah Maharani','fika.maharani@hostinger.com',NULL,NULL),(376,'Fauzia Wijayanti','fauzia.wijayanti@hostinger.com',NULL,NULL),(378,'Nassharih Abdulloh','nassharih.abdulloh@hostinger.com',NULL,NULL),(384,'Ahmad Yasser Effendi','ahmad.effendi@hostinger.com',NULL,NULL),(385,'Herlambang Kuswicaksonojati','herlambang.kuswicaksonojati@hostinger.com',NULL,NULL),(386,'Aminudin Noor Ichsan','aminudin.ichsan@hostinger.com',NULL,NULL),(394,'Agung Yudha Berliantara','agung.berliantara@hostinger.com',NULL,NULL),(398,'Amalya Suchy Mustikapurnamasari','amalya.suchy@hostinger.com',NULL,NULL),(414,'Handri Hermawan','handri.hermawan@hostinger.com',NULL,NULL),(415,'Benefitasari Intan Nirwana','benefitasari.intan@hostinger.com',NULL,NULL),(437,'Leonardus Nugraha','leonardus.nugraha@hostinger.com',NULL,NULL),(443,'Fauzan Alif Fathurrahman','fauzan.fathurrahman@hostinger.com',NULL,NULL),(447,'Taufiq Adesurya','taufiq.adesurya@hostinger.com',NULL,NULL),(455,'Petra Raditya Ivanny','petra.ivanny@hostinger.com',NULL,NULL),(456,'Anisa Kusuma Wulandari','anisa.wulandari@hostinger.com',NULL,NULL),(457,'Reinhard Delon de Elie Kadmaer','reinhard.kadmaer@hostinger.com',NULL,NULL),(464,'Sinatrya Haryo Wicaksono','sinatrya.wicaksono@hostinger.com',NULL,NULL),(466,'Ananda Dian Pertiwi','ananda.pertiwi@hostinger.com',NULL,NULL),(467,'Sri Nurlia Hapsari','sri.hapsari@hostinger.com',NULL,NULL),(468,'Margaretha Hutabarat','margaretha.hutabarat@hostinger.com',NULL,NULL),(472,'Tashia Tamara','tashia.tamara@hostinger.com',NULL,NULL),(474,'Novia Intan Hikmawati','novia.intan@hostinger.com',NULL,NULL),(479,'Agum Gilang Gumelar','agum.gilang@hostinger.com',NULL,NULL),(486,'Muvida Aulia Rahman','muvida.rahman@hostinger.com',NULL,NULL),(487,'Faradienna Raushan Fikri','faradienna.fikri@hostinger.com',NULL,NULL),(492,'Nurul Khairunissa Siregar','nurul.khairunissa@hostinger.com',NULL,NULL),(495,'Mochamad Syahrul Amalan','mochamad.amalan@hostinger.com',NULL,NULL),(499,'Elsanyn Dhecma Dhalih Cahya Faathira','elsanyn.faathira@hostinger.com',NULL,NULL),(500,'Nabilla Wilujeng Restuningrum','nabilla.restuningrum@hostinger.com',NULL,NULL),(508,'Metta Diana','metta.diana@hostinger.com',NULL,NULL),(510,'Noorlinda Ary Dwiastuti','noorlinda.dwiastuti@hostinger.com',NULL,NULL),(511,'Naufal Ghalib Al Gabril','naufal.gabril@hostinger.com',NULL,NULL),(512,'Ade Nurfitriani','ade.nurfitriani@hostinger.com',NULL,NULL),(521,'Denny Triana','denny.triana@hostinger.com',NULL,NULL),(522,'Ahmad Alim Ahkam','ahmad.ahkam@hostinger.com',NULL,NULL),(527,'Mirtha Irmalia Arini','mirtha.arini@hostinger.com',NULL,NULL),(531,'Marwa Wulan Sari','marwa.sari@hostinger.com',NULL,NULL),(534,'Setyabudi Amrih','setyabudi.amrih@hostinger.com',NULL,NULL),(535,'Sary Eka Wahyuni','sary.wahyuni@hostinger.com',NULL,NULL),(536,'Denny Abditama Putra','denny.putra@hostinger.com',NULL,NULL),(539,'Nizla Afriani','nizla.afriani@hostinger.com',NULL,NULL),(540,'Febri Dwi Putra','febri.putra@hostinger.com',NULL,NULL),(541,'Shelvi Pratama Putri','shelvi.putri@hostinger.com',NULL,NULL),(547,'Muhammad Hizbul Wathon','muhammadh.wathon@hostinger.com',NULL,NULL),(551,'Rizky Wijayanti','rizky.wijayanti@hostinger.com',NULL,NULL),(552,'Wavda Aniva Zabidi','wavda.zabidi@hostinger.com',NULL,NULL),(556,'Ahmad Zaki Hilmi','zaki.hilmi@hostinger.com',NULL,NULL),(557,'Hasna Avni Humaira','hasna.humaira@hostinger.com',NULL,NULL),(558,'Nadia Maya Ardiani','nadia.ardiani@hostinger.com',NULL,NULL),(559,'Tyastana Agung Kusumastanto','tyastana.kusumastanto@hostinger.com',NULL,NULL),(560,'Muhammad Satrio Wibowo','muhammad.wibowo@hostinger.com',NULL,NULL),(561,'Faradilla Chandra Ayunindya','faradilla.ayunindya@hostinger.com',NULL,NULL),(567,'Sabrina Ashilah Salsabila','sabrina.salsabila@hostinger.com',NULL,NULL),(572,'Jundi Faza Hubbalillah','jundi.hubbalillah@hostinger.com',NULL,NULL),(573,'Muchammad Yassin Fadilah','muhammad.yassin@hostinger.com',NULL,NULL),(574,'Dwi Tati Fani','dwitati.fani@hostinger.com',NULL,NULL),(578,'Andri Prabowo','andri.prabowo@hostinger.com',NULL,NULL),(579,'Aisha Nabilla Putri','aisha.putri@hostinger.com',NULL,NULL),(580,'Malik Akbar Junaidi','malik.junaidi@hostinger.com',NULL,NULL),(585,'Pandawa Bagus Sudewa','pandawa.sudewa@hostinger.com',NULL,NULL),(586,'Amanda Veranita','amanda.veranita@hostinger.com',NULL,NULL),(587,'Annisa Puspita Rahma Hafidz','annisa.hafidz@hostinger.com',NULL,NULL),(588,'Klarina Widyanti','klarina.widyanti@hostinger.com',NULL,NULL),(589,'Linggar Dwi Addieningtyas','linggar.dwi@hostinger.com',NULL,NULL),(592,'Abdul Halim','abdul.halim@hostinger.com',NULL,NULL),(604,'Bayu Wardani','bayu.wardani@hostinger.com',NULL,NULL),(610,'Maulidina Marlita Firdausi','maulidina.firdausi@hostinger.com',NULL,NULL),(613,'Andreas Wijaya','andreas.wijaya@hostinger.com',NULL,NULL),(614,'Cemara Disa Winanda','cemara.winanda@hostinger.com',NULL,NULL),(620,'Joshua Febri Arya Caissa','joshua.caissa@hostinger.com',NULL,NULL),(624,'Shinta Beriana Theofani','shinta.theofani@hostinger.com',NULL,NULL),(625,'Arum Minna Lika','arum.lika@hostinger.com',NULL,NULL),(626,'Maria Regina Picaully','maria.picaully@hostinger.com',NULL,NULL),(638,'Farid Nur Iman','farid.iman@hostinger.com',NULL,NULL),(639,'Dyah Safira Priambodo','dyah.safira@hostinger.com',NULL,NULL),(640,'Prasasti Agung Perdana','prasasti.perdana@hostinger.com',NULL,NULL),(641,'Astari Pinasthika Sarosa','astari.sarosa@hostinger.com',NULL,NULL),(643,'Prajaka Brian Lizadi','prajaka.lizadi@hostinger.com',NULL,NULL),(644,'Annisa Fithri','annisa.fithri@hostinger.com',NULL,NULL),(646,'Rosmita Dwijayanti','rosmita.dwijayanti@hostinger.com',NULL,NULL),(647,'Farizky Romadhony','farizky.romadhony@hostinger.com',NULL,NULL),(649,'Brian Anggika Putra','brian.putra@hostinger.com',NULL,NULL),(650,'Alifa Tulkhamiya','alifa.tulkhamiya@hostinger.com',NULL,NULL),(651,'Danang Arief Setyadi','danang.setyadi@hostinger.com',NULL,NULL),(659,'Agil Julio','agil.julio@hostinger.com',NULL,NULL),(661,'Almas Aqmarina','almas.aqmarina@hostinger.com',NULL,NULL),(669,'Lois Kesiana Pebriani','lois.pebriani@hostinger.com',NULL,NULL),(674,'Sofia Lathifah Yulia Ashari','sofia.ashari@hostinger.com',NULL,NULL),(675,'Alfa Layla Ahadina','alfa.ahadina@hostinger.com',NULL,NULL),(677,'Abiyoga Pamungkas','abiyoga.pamungkas@hostinger.com',NULL,NULL),(679,'Wahyu Diyanto','wahyu.diyanto@hostinger.com',NULL,NULL),(682,'Febryan Anugrah Agung Permana','febryan.permana@hostinger.com',NULL,NULL),(684,'Bijak Fajar Putranto','bijak.putranto@hostinger.com',NULL,NULL),(686,'Karina Maharani','karina.maharani@hostinger.com',NULL,NULL),(688,'Dian Griyana Prasetya','dian.prasetya@hostinger.com',NULL,NULL),(713,'Andri Hidayat','andri.hidayat@hostinger.com',NULL,NULL),(714,'Shaliha Shabardila','shaliha.shabardila@hostinger.com',NULL,NULL),(716,'Faiza Ummul Hussaini','faiza.hussaini@hostinger.com',NULL,NULL),(721,'Rizqy Ali Syaifurrahman','rizky.ali@hostinger.com',NULL,NULL),(722,'Adimas Anggi Winata','adimas.anggi@hostinger.com',NULL,NULL),(724,'Nurul Qamaril Ramadhani','nurul.ramadhani@hostinger.com',NULL,NULL),(728,'Dita Anggita Hapsari','dita.hapsari@hostinger.com',NULL,NULL),(730,'Annisa Perdany','annisa.perdany@hostinger.com',NULL,NULL),(732,'Tamara Faridha Junor','tamara.junor@hostinger.com',NULL,NULL),(736,'Bayu Eka Prasetyo','bayu.prasetyo@hostinger.com',NULL,NULL),(741,'Muhammad Aditya Ardiansyah','aditya.ardiansyah@hostinger.com',NULL,NULL),(743,'Khairani Syafril','khairani.syafril@hostinger.com',NULL,NULL),(747,'Khansa Abi Zhafira','khansa.abi@hostinger.com',NULL,NULL),(748,'Shofie Achmad','shofie.achmad@hostinger.com',NULL,NULL),(752,'Hanifahtya Eka Putri','hanifahtya.eka@hostinger.com',NULL,NULL),(753,'Hifdzon Nur Rohman','hifdzon.rohman@hostinger.com',NULL,NULL),(756,'Devi Pratiwi','devi.pratiwi@hostinger.com',NULL,NULL),(757,'Aliza Prasasty Mawaddah','aliza.mawaddah@hostinger.com',NULL,NULL),(759,'Donny Yudhistira Nugroho','donny.yudhistira@hostinger.com',NULL,NULL),(760,'Ken Dheanis Adhine Salsabila','ken.salsabila@hostinger.com',NULL,NULL),(765,'Maryam Fitria Azzahra','maryam.azzahra@hostinger.com',NULL,NULL),(767,'Debby Tiara Nauli','debby.tiara@hostinger.com',NULL,NULL),(768,'Larassatti Dharma Nanda','larassatti.nanda@hostinger.com',NULL,NULL),(770,'Muhammad Ariffudin','muhammad.ariffudin@hostinger.com',NULL,NULL),(771,'Blasius Yoga Puspa Krisanta','yoga.krisanta@hostinger.com',NULL,NULL),(774,'Samsudin','samsudin@hostinger.com',NULL,NULL),(775,'Muhammad Rasyad','muhammad.rasyad@hostinger.com',NULL,NULL),(782,'Bambang Budiraharjo','bambang.budiraharjo@hostinger.com',NULL,NULL),(783,'Triesnha Ameilya','triesnha.ameilya@hostinger.com',NULL,NULL),(786,'Muhammad Sifa\'ul Rizky','muhammad.rizky@hostinger.com',NULL,NULL),(790,'Adith Haris Kurniawati','adith.haris@hostinger.com',NULL,NULL),(792,'Okka Shakattomawon','okka.shakattomawon@hostinger.com',NULL,NULL),(795,'Nasib','nasib@hostinger.com',NULL,NULL),(796,'Andy Rachman Trinugraha','andy.trinugraha@hostinger.com',NULL,NULL),(797,'Devania Mandalika Hagi','devania.hagi@hostinger.com',NULL,NULL),(800,'Farhan Iqbal Fauji','farhan.fauji@hostinger.com',NULL,NULL),(802,'Reza Dini Safitri','reza.safitri@hostinger.com',NULL,NULL),(809,'Smita Annisaghara','smita.annisaghara@hostinger.com',NULL,NULL),(810,'Vania Ivena Laure','vania.laure@hostinger.com',NULL,NULL),(813,'Alya Salsabila Firdausi','alya.firdausi@hostinger.com',NULL,NULL),(817,'Neneng Uswatun Hasanah','neneng.hasanah@hostinger.com',NULL,NULL),(821,'Aga Setyo Purnomo','aga.purnomo@hostinger.com',NULL,NULL),(822,'Nadya Dianitasari','nadya.dianitasari@hostinger.com',NULL,NULL),(823,'Syifa Rizka Yolanda','syifa.yolanda@hostinger.com',NULL,NULL),(827,'Reja Marjana','reja.marjana@hostinger.com',NULL,NULL),(828,'Fitri Eka Cahyanti','fitri.cahyanti@hostinger.com',NULL,NULL),(831,'Risma Julia Wardany','risma.julia@hostinger.com',NULL,NULL),(833,'Harys Imanulloh','harys.imanulloh@hostinger.com',NULL,NULL),(835,'I Made Tresnayana','made.tresnayana@hostinger.com',NULL,NULL),(836,'Tiyantosa Aji','tiyantosa.aji@hostinger.com',NULL,NULL),(838,'Dewi Yuliana','dewi.yuliana@hostinger.com',NULL,NULL),(839,'Sopha Mutia Adinda','sopha.mutia@hostinger.com',NULL,NULL),(840,'Fannia Veronica','fannia.veronica@hostinger.com',NULL,NULL),(841,'Sasvia Imtinan Zulfa Nurhana','sasvia.nurhana@hostinger.com',NULL,NULL),(842,'Farras Aulia Muhammad','farras.aulia@hostinger.com',NULL,NULL),(843,'Muhammad Iqbal Ramdhani','iqbal.ramdhani@hostinger.com',NULL,NULL),(845,'Laila Khairina','laila.khairina@hostinger.com',NULL,NULL),(847,'Ira Rizkillah Koswara','ira.koswara@hostinger.com',NULL,NULL),(848,'Alvin Kurniawan','alvin.kurniawan@hostinger.com',NULL,NULL),(849,'Audris Shafitama','audris.shafitama@hostinger.com',NULL,NULL),(851,'Ade Cahya Ramadhan','ade.cahya@hostinger.com',NULL,NULL),(854,'Fahriza Mutiara Fajariyanti','fahriza.fajariyanti@hostinger.com',NULL,NULL),(855,'Vicky Priyadi','vicky.priyadi@hostinger.com',NULL,NULL),(856,'Jihan Aldilla','jihan.aldilla@hostinger.com',NULL,NULL),(857,'Israil Ondi','israil.ondi@hostinger.com',NULL,NULL),(860,'Gusti Ayu Sandra','gusti.sandra@hostinger.com',NULL,NULL),(861,'Homi Bayu Lintang Aji','homi.bayu@hostinger.com',NULL,NULL),(862,'Vinsensius Reho','vinsensius.reho@hostinger.com',NULL,NULL),(865,'Ansori Riza Yoga Saputro','ansori.saputro@hostinger.com',NULL,NULL),(866,'Muhammad Sholihuddin Nur','muhammad.nur@hostinger.com',NULL,NULL),(867,'Chandra Eka Privandani','chandra.privandani@hostinger.com',NULL,NULL),(868,'Miranti Ambarini','miranti.ambarini@hostinger.com',NULL,NULL),(869,'Nino Wahyu Novanda','nino.novanda@hostinger.com',NULL,NULL),(870,'Naida Dianitasari','naida.dianitasari@hostinger.com',NULL,NULL),(871,'Human Hardy','human.hardy@hostinger.com',NULL,NULL),(872,'Chaerunnisa Atika Ramdany','chaerunnisa.ramdany@hostinger.com',NULL,NULL),(874,'Mohamad Rizqy Brilian Permana','brilian.permana@hostinger.com',NULL,NULL),(875,'Renaldy Gatan Pramana','renaldy.gatan@hostinger.com',NULL,NULL),(876,'Jody Barata Dwi Pradipta','jody.barata@hostinger.com',NULL,NULL),(877,'Rachmadwipa Novandri','rachmadwipa.novandri@hostinger.com',NULL,NULL),(878,'Wanda','wanda.wanda@hostinger.com',NULL,NULL),(879,'Indra Rosdiana','indra.rosdiana@hostinger.com',NULL,NULL),(880,'Jeremy Jordan Huwae','jeremy.huwae@hostinger.com',NULL,NULL),(881,'Ray Sistyana Sandi','ray.sandi@hostinger.com',NULL,NULL),(882,'Irene Haryawan','irene.haryawan@hostinger.com',NULL,NULL),(883,'Lailatu Fauziah','lailatu.fauziah@hostinger.com',NULL,NULL),(884,'Shabrina Asmarani','shabrina.asmarani@hostinger.com',NULL,NULL),(885,'Mutiara Hening Pratiwi','mutiara.hening@hostinger.com',NULL,NULL),(886,'Devina Stella Nabighah','devina.nabighah@hostinger.com',NULL,NULL),(887,'Arif Muslikhul','arif.muslikhul@hostinger.com',NULL,NULL),(889,'Lisdiana','lisdiana@hostinger.com',NULL,NULL),(890,'Rizal Fahadian','rizal.fahadian@hostinger.com',NULL,NULL),(891,'Brian Fajar Mauladhika','brian.fajar@hostinger.com',NULL,NULL),(892,'Fiona Gita Safitri','fiona.safitri@hostinger.com',NULL,NULL),(893,'Naomi Uli Sri Muliani Sinaga','naomi.sinaga@hostinger.com',NULL,NULL),(896,'Pramana Widodo Putra','pramana.widodo@hostinger.com',NULL,NULL),(897,'Doa Sri Sucinta','doa.sucinta@hostinger.com',NULL,NULL),(899,'Aji Tri Santoso','aji.santoso@hostinger.com',NULL,NULL),(900,'Nadia Daniel','nadia.daniel@hostinger.com',NULL,NULL),(901,'Nadya Layla Anjani','nadya.layla@hostinger.com',NULL,NULL),(902,'Nayli Dahiya Falha','nayli.falha@hostinger.com',NULL,NULL),(903,'Rattandi Ibnu Tsaqif','rattandi.tsaqif@hostinger.com',NULL,NULL),(904,'Muhammad Dimas Haryo Sadewo','muhammad.sadewo@hostinger.com',NULL,NULL),(905,'Satyarani Safira','satyarani.safira@hostinger.com',NULL,NULL),(907,'Suhartin Dewi Astuti','suhartin.dewi@hostinger.com',NULL,NULL),(909,'Gita Puspitasari','gita.puspitasari@hostinger.com',NULL,NULL),(910,'Yunus Winusa','yunus.winusa@hostinger.com',NULL,NULL),(911,'Tito Yuniar','tito.yuniar@hostinger.com',NULL,NULL),(914,'Aris Budi Aji Sentika','aris.budi@hostinger.com',NULL,NULL),(916,'Feni Ratna Ningrum','feni.ningrum@hostinger.com',NULL,NULL),(917,'Indra Guna Noviantama','indra.guna@hostinger.com',NULL,NULL),(918,'Dini Sagitaningrum','dini.sagitaningrum@hostinger.com',NULL,NULL),(919,'Aji Ana Nurfitriana','aji.ana@hostinger.com',NULL,NULL),(920,'Aura Nisrina Hesanty','aura.nisrina@hostinger.com',NULL,NULL),(922,'Muh. Iqwa Mu’tashim Billah','iqwa.billah@hostinger.com',NULL,NULL),(923,'Aldian Hudaya','aldian.hudaya@hostinger.com',NULL,NULL),(926,'Wiwit Widowati','wiwit.widowati@hostinger.com',NULL,NULL),(927,'Siti Mujayanah','siti.mujayanah@hostinger.com',NULL,NULL),(928,'Mulan Gabriella Pasaribu','mulan.gabriella@hostinger.com',NULL,NULL),(931,'Salma Salsabila Abdillah','salma.abdillah@hostinger.com',NULL,NULL),(932,'Cindy Nawangsari','cindy.nawangsari@hostinger.com',NULL,NULL),(935,'Irma Yanuarti','irma.yanuarti@hostinger.com',NULL,NULL),(936,'Imelda Wahyuningsih','imelda.wahyuningsih@hostinger.com',NULL,NULL),(937,'Annisa Nur Hayati','annisa.nur@hostinger.com',NULL,NULL),(939,'Shafa Chairunida Mardiana','shafa.chairunida@hostinger.com',NULL,NULL),(940,'Rima Fais Naini','rima.naini@hostinger.com',NULL,NULL),(942,'Muhammad Nurrijal Fathurrohman','muhammad.fathurrohman@hostinger.com',NULL,NULL),(943,'Wismi Harsanti','wismi.harsanti@hostinger.com',NULL,NULL),(944,'Yolanda Rudy Johan','yolanda.johan@hostinger.com',NULL,NULL),(946,'Admining Hastuti','admining.hastuti@hostinger.com',NULL,NULL),(947,'Deni Pratama Putra','deni.putra@hostinger.com',NULL,NULL),(949,'Dea Niar Misdayuni','dea.niar@hostinger.com',NULL,NULL),(954,'Agnes Retno Larasati','agnes.larasati@hostinger.com',NULL,NULL),(955,'Lina Noor Na\'ilah','lina.nailah@hostinger.com',NULL,NULL),(956,'Deni Bachroni Yahya','deni.yahya@hostinger.com',NULL,NULL),(957,'Asyifa Yuditya','asyifa.yuditya@hostinger.com',NULL,NULL),(958,'Marcel Sutanto','marcel.sutanto@hostinger.com',NULL,NULL),(960,'Farizal Hamami','farizal.hamami@hostinger.com',NULL,NULL),(961,'Shaskia Nurul Ramdhania','shaskia.ramdhania@hostinger.com',NULL,NULL),(962,'Ni Kadek Bundra Jayatri Sukrasta','bundra.jayatri@hostinger.com',NULL,NULL),(963,'Sunu Aditya Mahadany','sunu.aditya@hostinger.com',NULL,NULL),(965,'Fajri Agustian','fajri.agustian@hostinger.com',NULL,NULL),(966,'Restry Ridha Hastari','restry.hastari@hostinger.com',NULL,NULL),(967,'Viola Salvadora','viola.salvadora@hostinger.com',NULL,NULL),(968,'Widy Utari Fauziah','widy.fauziah@hostinger.com',NULL,NULL),(970,'Joza Padma Koesoemah','joza.koesoemah@hostinger.com',NULL,NULL),(972,'Farah Isnaini Mikli','farah.mikli@hostinger.com',NULL,NULL),(973,'Reyza Gayo','reyza.gayo@hostinger.com',NULL,NULL),(974,'Fikri Ilham Fadhillah','fikri.fadhillah@hostinger.com',NULL,NULL),(975,'M. Rival Setiawan','rival.setiawan@hostinger.com',NULL,NULL),(977,'Kayla Jovieka Ainulitta','kayla.ainulitta@hostinger.com',NULL,NULL),(978,'Teresia Dian Triutami','teresia.triutami@hostinger.com',NULL,NULL),(979,'Rafi Rajibsa','rafi.rajibsa@hostinger.com',NULL,NULL),(980,'Safitri Kartikaningrum','safitri.kartikaningrum@hostinger.com',NULL,NULL),(981,'Tyasyifa Wimahavinda Kardono','tyasyifa.kardono@hostinger.com',NULL,NULL),(982,'Mira Puspa Nirmala','mira.nirmala@hostinger.com',NULL,NULL),(983,'Amelia Felisha','amelia.felisha@hostinger.com',NULL,NULL),(984,'Adinda Alsya Denissa','adinda.denissa@hostinger.com',NULL,NULL),(985,'Martia Nur Fasihah','martia.fasihah@hostinger.com',NULL,NULL),(986,'Adriel Jonathan Theixar','adriel.theixar@hostinger.com',NULL,NULL),(987,'Azizah Ainun Fitriani','azizah.fitriani@hostinger.com',NULL,NULL),(988,'Konita Ayu Nabila','konita.nabila@hostinger.com',NULL,NULL),(989,'Annas Rulloh Zulficar','annas.zulficar@hostinger.com',NULL,NULL),(990,'Trenanda Kalimusada Sidharta','trenanda.sidharta@hostinger.com',NULL,NULL),(991,'Ravina Ashini','ravina.ashini@hostinger.com',NULL,NULL),(992,'Mutiara Annisa Fathma Simatupang','mutiara.simatupang@hostinger.com',NULL,NULL),(993,'Richmond Faithful','richmond.faithful@hostinger.com',NULL,NULL),(994,'Rachmandika Adiguna','rachmandika.adiguna@hostinger.com',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 14:19:40
