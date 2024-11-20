-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: alok
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cn_question_table`
--

DROP TABLE IF EXISTS `cn_question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cn_question_table` (
  `question` varchar(120) DEFAULT NULL,
  `option1` varchar(90) DEFAULT NULL,
  `option2` varchar(90) DEFAULT NULL,
  `option3` varchar(90) DEFAULT NULL,
  `option4` varchar(90) DEFAULT NULL,
  `answer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cn_question_table`
--

LOCK TABLES `cn_question_table` WRITE;
/*!40000 ALTER TABLE `cn_question_table` DISABLE KEYS */;
INSERT INTO `cn_question_table` VALUES ('Which of the following is not a type of network topology?','a) Star','b) Ring','c) Mesh','d) Loop','d'),('What is the main function of a router in a network?','a) To provide IP addresses to devices','b) To connect multiple networks and forward packets between them','c) To ensure error-free communication','d) To detect network congestion','b'),('Which protocol is used for email transmission?','a) HTTP','b) SMTP','c) FTP','d) SNMP','b'),('What is the purpose of the OSI model?','a) To provide a set of protocols for internet communication','b) To define a framework for building and interconnecting networks','c) To standardize network cables','d) To protect network security','b'),('Which layer of the OSI model is responsible for end-to-end communication?','a) Application Layer','b) Transport Layer','c) Network Layer','d) Data Link Layer','b'),('What is the main purpose of the TCP protocol?','a) To provide connectionless communication','b) To provide reliable, ordered, and error-checked delivery of data','c) To manage routing decisions','d) To handle encryption','b'),('Which of the following is a network device that amplifies or regenerates signals to extend the range of a network?','a) Switch','b) Hub','c) Repeater','d) Router','c'),('Which IP address class is used for large organizations with many devices?','a) Class A','b) Class B','c) Class C','d) Class D','b'),('Which of the following is not an advantage of fiber-optic cables over copper cables?','a) Higher bandwidth','b) Less signal attenuation','c) Cheaper installation','d) Immunity to electromagnetic interference','c'),('What is the size of an IPv6 address?','a) 32 bits','b) 64 bits','c) 128 bits','d) 256 bits','c'),('Which of the following is a connectionless protocol?','a) TCP','b) UDP','c) FTP','d) HTTP','b'),('What is the role of DNS in networking?','a) To translate domain names to IP addresses','b) To handle error-checking in data transmission','c) To manage the flow of data between computers','d) To provide secure communication between networks','a'),('Which protocol is used to securely transfer files over the internet?','a) FTP','b) HTTP','c) HTTPS','d) SFTP','d'),('What is the maximum transmission speed of a gigabit Ethernet network?','a) 10 Mbps','b) 100 Mbps','c) 1 Gbps','d) 10 Gbps','c'),('Which of the following layers in the OSI model handles error detection and correction?','a) Application Layer','b) Network Layer','c) Data Link Layer','d) Physical Layer','c'),('Which protocol is used to find the MAC address corresponding to an IP address?','a) DNS','b) ARP','c) ICMP','d) HTTP','b'),('What is the function of a firewall in a network?','a) To prevent unauthorized access to or from a private network','b) To ensure reliable data transmission','c) To encrypt all network traffic','d) To allocate IP addresses','a'),('What is the primary difference between IPv4 and IPv6?','a) IPv4 uses 32-bit addresses, while IPv6 uses 128-bit addresses','b) IPv6 supports fewer devices than IPv4','c) IPv6 does not use DNS','d) IPv4 uses connection-oriented communication','a'),('Which of the following terms refers to the rate at which data is transferred over a network?','a) Latency','b) Bandwidth','c) Propagation time','d) Throughput','b'),('Which of the following describes a VPN (Virtual Private Network)?','a) A network that allows users to connect remotely through a secure tunnel','b) A network for connecting physical devices within a building','c) A network protocol for sharing files','d) A service that provides internet access','a');
/*!40000 ALTER TABLE `cn_question_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbms_question_table`
--

DROP TABLE IF EXISTS `dbms_question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbms_question_table` (
  `question` varchar(100) DEFAULT NULL,
  `option1` varchar(70) DEFAULT NULL,
  `option2` varchar(70) DEFAULT NULL,
  `option3` varchar(70) DEFAULT NULL,
  `option4` varchar(70) DEFAULT NULL,
  `answer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbms_question_table`
--

LOCK TABLES `dbms_question_table` WRITE;
/*!40000 ALTER TABLE `dbms_question_table` DISABLE KEYS */;
INSERT INTO `dbms_question_table` VALUES ('Which of the following is a type of database model?','a) Hierarchical','b) Flat-file','c) Relational','d) All of the above','d'),('What is the main purpose of a primary key in a database?','a) To ensure data integrity','b) To provide a unique identifier for records','c) To allow duplicate values','d) To increase query speed','b'),('Which of the following is not a type of SQL command?','a) DDL','b) DML','c) DCL','d) DSL','d'),('What is a foreign key?','a) A key that is not used frequently','b) A key that is unique within a table','c) A key that links two tables together','d) A key used only for indexing','c'),('Which SQL clause is used to filter records?','a) SELECT','b) WHERE','c) JOIN','d) GROUP BY','b'),('Which of the following normal forms is considered the strictest?','a) First Normal Form (1NF','b) Second Normal Form (2NF','c) Third Normal Form (3NF','d) Boyce-Codd Normal Form (BCNF','d'),('Which operation combines rows from two or more tables based on a related column?','a) UNION','b) INTERSECT','c) JOIN','d) SELECT','c'),('What is the main purpose of indexing in a database?','a) To store data','b) To improve query performance','c) To create relationships between tables','d) To ensure data integrity','b'),('Which of the following is an example of a NoSQL database?','a) MySQL','b) MongoDB','c) Oracle','d) SQL Server','b'),('Which language is used to query and manipulate data in a relational database?','a) SQL','b) HTML','c) Python','d) C++','a'),('Which of the following is not a valid aggregate function in SQL?','a) SUM(','b) AVG(','c) MIN(','d) ORDER(','d'),('Which of the following statements is used to remove a table in SQL?','a) DELETE','b) DROP','c) TRUNCATE','d) REMOVE','b'),('Which ACID property ensures that all changes to data are permanent after a transaction?','a) Atomicity','b) Consistency','c) Isolation','d) Durability','d'),('What does the GROUP BY clause do in SQL?','a) Sorts the results','b) Filters records','c) Groups rows that have the same values into summary rows','d) Deletes duplicate rows','c'),('In ER modeling, what does a diamond shape represent?','a) Entity','b) Attribute','c) Relationship','d) Primary key','c'),('Which of the following is a property of a transaction in a database?','a) It must have at least one SELECT query','b) It can have no more than two UPDATE queries','c) It must follow the ACID properties','d) It only involves read operations','c'),('What is a composite key in a relational database?','a) A key that is made up of two or more columns','b) A key that is used to combine two tables','c) A key used to index the database','d) A key that is automatically generated','a'),('Which SQL keyword is used to retrieve unique values?','a) UNIQUE','b) DISTINCT','c) SELECT','d) LIMIT','b'),('What is denormalization in a database?','a) Breaking a database into smaller tables','b) Combining multiple tables into one','c) Adding redundant data to improve performance','d) Ensuring data integrity','c'),('Which of the following ensures that foreign key values match primary key values in a related table?','a) Referential integrity','b) Domain integrity','c) Entity integrity','d) Functional dependency','a');
/*!40000 ALTER TABLE `dbms_question_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_question_table`
--

DROP TABLE IF EXISTS `os_question_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os_question_table` (
  `question` varchar(100) DEFAULT NULL,
  `option1` varchar(90) DEFAULT NULL,
  `option2` varchar(90) DEFAULT NULL,
  `option3` varchar(90) DEFAULT NULL,
  `option4` varchar(90) DEFAULT NULL,
  `answer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_question_table`
--

LOCK TABLES `os_question_table` WRITE;
/*!40000 ALTER TABLE `os_question_table` DISABLE KEYS */;
INSERT INTO `os_question_table` VALUES ('Which of the following is not a function of an operating system?','a) Memory management','b) Process scheduling','c) Compiler management','d) File management','c'),('Which scheduling algorithm allocates the CPU to the process that arrives first?','a) Round Robin','b) Shortest Job First','c) First Come First Serve','d) Priority Scheduling','c'),('What is the main function of the kernel in an operating system?','a) Managing user applications','b) Managing system resources','c) Managing system security','d) Providing the graphical user interface','b'),('Which of the following is a type of memory management technique?','a) Paging','b) Spooling','c) Caching','d) Polling','a'),('Which of the following is a non-preemptive scheduling algorithm?','a) Round Robin','b) Shortest Job Next','c) Priority Scheduling','d) Multilevel Queue Scheduling','b'),('Which of the following is a disk scheduling algorithm?','a) Round Robin','b) SCAN','c) Paging','d) Semaphore','b'),('In which of the following scenarios does a deadlock occur?','a) Multiple processes are unable to obtain the resources they need','b) Processes are in a circular wait','c) All resources are released','d) All processes finish execution','b'),('Which of the following is an example of a real-time operating system?','a) Windows','b) macOS','c) Linux','d) VxWorks','d'),('Which type of fragmentation occurs when memory is divided into fixed-size blocks?','a) Internal fragmentation','b) External fragmentation','c) Disk fragmentation','d) File fragmentation','a'),('Which of the following synchronization primitives is used to avoid race conditions?','a) Semaphore','b) Paging','c) Virtual memory','d) Thrashing','a'),('What is the role of a file system in an operating system?','a) To manage file permissions','b) To manage process scheduling','c) To handle the user interface','d) To optimize memory usage','a'),('Which of the following is an advantage of a multi-threaded system?','a) Simplifies debugging','b) Increases system performance by reducing context switching','c) Makes memory management more complex','d) Causes increased CPU utilization','b'),('What is a process in an operating system?','a) A program in execution','b) A file stored on disk','c) A memory block','d) A database entry','a'),('Which of the following is an example of a preemptive scheduling algorithm?','a) First Come First Serve (FCFS','b) Shortest Job First (SJF','c) Round Robin','d) Multilevel Queue','c'),('Which memory management scheme dynamically allocates memory to processes?','a) Swapping','b) Contiguous allocation','c) Paging','d) Demand paging','d'),('What is thrashing in an operating system?','a) A technique to optimize CPU usage','b) A situation where the CPU spends more time swapping pages than executing processes','c) A memory fragmentation issue','d) A method to improve process scheduling','b'),('Which system call creates a new process in Unix/Linux?','a) fork(','b) exec(','c) wait(','d) exit(','a'),('Which of the following algorithms is used to prevent deadlock in an operating system?','a) Banker\'s algorithm','b) FIFO','c) SCAN algorithm','d) Disk scheduling','a'),('Which type of memory is directly accessible by the CPU?','a) Cache memory','b) Hard disk','c) Virtual memory','d) Cloud storage','a'),('Which of the following is true about virtual memory?','a) It is a type of RAM','b) It extends physical memory by using disk space','c) It only works with solid-state drives','d) It is the same as cache memory','b');
/*!40000 ALTER TABLE `os_question_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `uid` int DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  KEY `uid` (`uid`),
  CONSTRAINT `results_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (3,'os',1,'A','2024-10-29 22:31:06'),(4,'dbms',1,'E','2024-11-08 11:17:21');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Priya Sharma','Indore','9876543210','priya_sharma','securepass1'),(3,'Alok Kumar Raghuwanshi','Betul','6264733718','alok123','1234'),(4,'Abhijeet singh','ujjain','8770726711','Abhi7974','Weed@7974');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 11:47:53
