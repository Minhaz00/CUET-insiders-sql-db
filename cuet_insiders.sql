-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 07:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuet_insiders`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `time` varchar(10) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `time`, `date`, `status`, `user_id`, `mentor_id`) VALUES
(20001, '11:00', '12/02/23', 'pending', 1904004, 1002),
(20002, '12:00', '09/02/23', 'done', 1904004, 1004),
(20003, '13:00', '13/02/23', 'pending', 1904004, 1007),
(20004, '12:00', '07/02/23', 'done', 1904010, 1005),
(20005, '12:00', '15/02/23', 'pending', 1904010, 1008),
(20006, '12:00', '08/02/23', 'done', 1904014, 1002),
(20007, '12:00', '16/02/23', 'pending', 1904014, 1003),
(20008, '13:00', '12/02/23', 'pending', 1904037, 1006),
(20009, '15:00', '11/02/23', 'done', 1904039, 1001),
(20010, '15:00', '18/02/23', 'pending', 1904039, 1005),
(20011, '14:00', '09/02/23', 'done', 1904052, 1004),
(20012, '14:00', '15/02/23', 'pending', 1904053, 1008),
(20013, '16:00', '09/02/23', 'done', 1904059, 1004),
(20014, '11:00', '19/02/23', 'pending', 1904059, 1006);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `post_id` int(11) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`post_id`, `comments`) VALUES
(100001, 'Good article.'),
(100001, 'How to learn time complexity?'),
(100002, 'How join in sql works?'),
(100002, 'So insightful.'),
(100002, 'Very informative.'),
(100003, 'How to handle partial dependency?'),
(100003, 'Nice Article.'),
(100003, 'Please explain BCNF.'),
(100003, 'So helpful.'),
(100003, 'Thanks for the article.'),
(100004, 'Helpful for beginners.'),
(100004, 'How much DSA required for CP'),
(100004, 'Nice resource.'),
(100005, 'is Problem solving required for job?'),
(100005, 'Very helpful Article'),
(100006, 'How much math required for CP?'),
(100006, 'How to handle Academic and CP?'),
(100006, 'So helpful for beginners.'),
(100006, 'Thanks for the post.'),
(100007, 'Insightful Article.'),
(100007, 'Nice example.'),
(100007, 'Thanks.'),
(100008, 'Nice Article.'),
(100008, 'Please explain for M:N relationship.'),
(100008, 'So helpful.'),
(100009, 'How to connect database?'),
(100009, 'How to handle libraries?'),
(100009, 'So helpful.'),
(100010, 'How to learn tree DS?'),
(100010, 'Nice Article.'),
(100010, 'Please explain types of DS.'),
(100010, 'Thanks for the article.');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `follower_id` int(11) NOT NULL,
  `followee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`follower_id`, `followee_id`) VALUES
(1904004, 1001),
(1904004, 1002),
(1904004, 1003),
(1904004, 1005),
(1904004, 1008),
(1904010, 1003),
(1904010, 1004),
(1904010, 1005),
(1904014, 1001),
(1904014, 1006),
(1904014, 1007),
(1904016, 1002),
(1904016, 1003),
(1904016, 1005),
(1904037, 1005),
(1904037, 1008),
(1904039, 1001),
(1904039, 1002),
(1904039, 1004),
(1904052, 1002),
(1904052, 1003),
(1904053, 1002),
(1904053, 1004),
(1904061, 1002),
(1904061, 1003),
(1904061, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `user_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`user_id`, `mentor_id`) VALUES
(1904004, 1002),
(1904004, 1004),
(1904004, 1007),
(1904010, 1005),
(1904010, 1008),
(1904014, 1002),
(1904014, 1003),
(1904037, 1006),
(1904039, 1001),
(1904039, 1005),
(1904052, 1004),
(1904053, 1008),
(1904059, 1004),
(1904059, 1006);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `user_id` int(11) NOT NULL,
  `interest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`user_id`, `interest`) VALUES
(1904004, 'AI'),
(1904004, 'NLP'),
(1904010, 'NLP'),
(1904014, 'BACKEND DEVELOPMENT'),
(1904014, 'DBMS'),
(1904016, 'NLP'),
(1904037, 'ML'),
(1904039, 'AR'),
(1904039, 'FRONTEND DEVELOPMENT'),
(1904052, 'SYSTEM DESIGN'),
(1904053, 'DBMS'),
(1904059, 'DATA SCIENCE'),
(1904061, 'IOT');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `role_id`, `username`, `password`) VALUES
(30001, 1, 'minhaz04', '1234'),
(30002, 1, 'yasin10', '1234'),
(30003, 1, 'fazlul14', '1234'),
(30004, 1, 'nabil39', '1234'),
(30005, 1, 'reza16', '1234'),
(30006, 1, 'tanzim37', '1234'),
(30007, 1, 'shakhawat61', '1234'),
(30008, 1, 'dhruba53', '1234'),
(30009, 1, 'nafiz52', '1234'),
(30010, 1, 'sakib59', '1234'),
(30011, 2, 'mynul10', '1234'),
(30012, 2, 'forhad10', '1234'),
(30013, 2, 'rizvi10', '1234'),
(30014, 2, 'billal10', '1234'),
(30015, 2, 'omar10', '1234'),
(30016, 2, 'ashim10', '1234'),
(30017, 2, 'sabir10', '1234'),
(30018, 2, 'animesh10', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `mentor_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `available` varchar(4) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `mentor_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`mentor_id`, `first_name`, `last_name`, `username`, `email`, `available`, `phone`, `mentor_login_id`) VALUES
(1001, 'Mynul', 'Hasan', 'mynul10', 'mynul@gmail.com', 'NO', '01822223454', 30011),
(1002, 'Shafiul', 'Alam', 'forhad10', 'forhad@gmail.com', 'YES', '01826663454', 30012),
(1003, 'Atiqul', 'Islam', 'rizvi10', 'rizvi10@gmail.com', 'YES', '01822244454', 30013),
(1004, 'Billal', 'Hossain', 'billal10', 'billal@gmail.com', 'YES', '01899923454', 30014),
(1005, 'Omar', 'Sharif', 'omar10', 'omarsharif@gmail.com', 'NO', '01822223666', 30015),
(1006, 'Ashim', 'Dey', 'ashim10', 'ashim@gmail.com', 'YES', '01833323454', 30016),
(1007, 'Sabir', 'Hossain', 'sabir10', 'sabir@gmail.com', 'NO', '01878923454', 30017),
(1008, 'Animesh', 'Roy', 'animesh10', 'animesh@gmail.com', 'NO', '01857423454', 30018);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `uploader_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `content`, `uploader_id`) VALUES
(100001, 'Why study Algorithm?', 'Algorithms remain critically important in today\'s technology-first world, even though many consumers will never see an algorithm in context. If programming itself is a building, then algorithms represent the pillars — supportive structures that allow algorithms to function well. Without the support, the buildings couldn\'t exist. As algorithms are used across a wide variety of applications today, s', 1007),
(100002, 'Introduction to SQL', 'Structured query language (SQL) is a programming language for storing and processing information in a relational database. A relational database stores information in tabular form, with rows and columns representing different data attributes and the various relationships between the data values. You can use SQL statements to store, update, remove, search, and retrieve information from the database', 1003),
(100003, 'Introduction to Normalization', 'Databases store redundant data and retrieving data without duplicates can be a tedious task. Normalization in SQL can be used to retrieve data without redundancy. In this article you will get a detailed walkthrough on what normalization is and its various normal forms. Normalization is the process of organizing the data to reduce duplicates in tables. It improves data integrity with the various no', 1002),
(100004, 'What Is Competitive Programming?', 'Competitive programming involves programmers competing against each other to solve programming questions in a limited amount of time. These events are usually held over the Internet or a local network. The contestants of the events are known as sport programmers.Contestants solve logical or mathematical programming questions in the coding language of their choice. The number of questions can vary ', 1004),
(100005, 'Problem-solving and programming skills', 'There’s probably no better way to improve your problem-solving and programming skills than by entering programming contests. During the contest, you’ll be given complex problems that you’ll have to solve in a limited time. Many of those problems are ones you may have never run into before. Solving them will improve your analytical thinking skills and teach you more about the programming language y', 1004),
(100006, 'How to Get Started with CP?', 'First and foremost what you need to do is pick out your preferred programming language and become proficient with its syntax, fundamentals, and implementation. Then, here comes the core aspect of Competitive Programming i.e., Data Structures & Algorithms. it’s time to practice your learnings and start solving problems. Moving further, after practicing adequate questions, now you’re ready to assess', 1004),
(100007, 'What is ER Model?', 'ER Model stands for Entity Relationship Model is a high-level conceptual data model diagram. ER model helps to systematically analyze data requirements to produce a well-designed database. The ER Model represents real-world entities and the relationships between them. Creating an ER Model in DBMS is considered as a best practice before implementing your database. ER Modeling helps you to analyze d', 1002),
(100008, 'Relational Model in DBMS', 'ER Model stands for Entity Relationship Model is a high-level conceptual data model diagram. ER model helps to systematically analyze data requirements to produce a well-designed database. The ER Model represents real-world entities and the relationships between them. Creating an ER Model in DBMS is considered as a best practice before implementing your database. The relational model for database ', 1002),
(100009, 'Introduction of Java Swing.', 'Swing has about four times the number of User Interface [UI] components as AWT and is part of the standard Java distribution. By today’s application GUI requirements, AWT is a limited implementation, not quite capable of providing the components required for developing complex GUI’s required in modern commercial applications. The AWT component set has quite a few bugs and really does take up a lot', 1001),
(100010, 'Data Structures.', 'A data structure is a specialized format for organizing, processing, retrieving and storing data. There are several basic and advanced types of data structures, all designed to arrange data to suit a specific purpose. Data structures make it easy for users to access and work with the data they need in appropriate ways. Most importantly, data structures frame the organization of information so that', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `mentor_id` int(11) NOT NULL,
  `skill` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`mentor_id`, `skill`) VALUES
(1001, 'FRONTEND DEVELOPMENT'),
(1001, 'Java'),
(1001, 'ML'),
(1001, 'NLP'),
(1002, 'AI'),
(1002, 'BIG DATA'),
(1002, 'DBMS'),
(1002, 'SYSTEM DESIGN'),
(1003, 'DBMS'),
(1003, 'ML'),
(1003, 'SQL'),
(1004, 'ALGORITHM'),
(1004, 'ML'),
(1004, 'NLP'),
(1004, 'OOP'),
(1005, 'AI'),
(1005, 'ML'),
(1005, 'NLP'),
(1005, 'OOP'),
(1006, 'IOT'),
(1006, 'ML'),
(1006, 'NEURAL NETWORK'),
(1007, 'AI'),
(1007, 'ALGORITHM'),
(1007, 'AR'),
(1007, 'BACKEND DEVELOPMENT'),
(1007, 'ML'),
(1008, 'DATA SCIENCE'),
(1008, 'DATA STRUCTURE'),
(1008, 'ML');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `user_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `phone`, `user_login_id`) VALUES
(1904004, 'Minhaz', 'Jisun', 'minhaz04', 'u1904004@student.cuet.ac.bd', '01178283443', 30001),
(1904010, 'Yasin', 'Arafat', 'yasin10', 'u1904010@student.cuet.ac.bd', '01234283443', 30002),
(1904014, 'Fazlul', 'Karim', 'fazlul14', 'u1904014@student.cuet.ac.bd', '01178283333', 30003),
(1904016, 'Ahmed', 'Reza', 'reza16', 'u1904016@student.cuet.ac.bd', '01122451723', 30005),
(1904037, 'Tanzim', 'bin', 'tanzim37', 'u1904037@student.cuet.ac.bd', '04448283443', 30006),
(1904039, 'Ahnaf', 'Nabil', 'nabil39', 'u1904039@student.cuet.ac.bd', '01178666443', 30004),
(1904052, 'Nafiz', 'Talukdar', 'nafiz52', 'u1904052@student.cuet.ac.bd', '01199983443', 30009),
(1904053, 'Anindya', 'Dhruba', 'dhruba53', 'u1904053@student.cuet.ac.bd', '01176783443', 30008),
(1904059, 'Tarek', 'Sakib', 'sakib59', 'u1904059@student.cuet.ac.bd', '01178288903', 30010),
(1904061, 'Shakhawat', 'Hossen', 'shakhawat61', 'u1904061@student.cuet.ac.bd', '01137451723', 30007);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`post_id`,`comments`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`follower_id`,`followee_id`),
  ADD KEY `followee_id` (`followee_id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`user_id`,`mentor_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`user_id`,`interest`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`mentor_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mentor_login_id` (`mentor_login_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `uploader_id` (`uploader_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`mentor_id`,`skill`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `user_login_id` (`user_login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20015;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100011;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30019;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `mentor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100011;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1904062;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followee_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `guides`
--
ALTER TABLE `guides`
  ADD CONSTRAINT `guides_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `guides_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `interest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `mentor`
--
ALTER TABLE `mentor`
  ADD CONSTRAINT `mentor_ibfk_1` FOREIGN KEY (`mentor_login_id`) REFERENCES `login` (`login_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`uploader_id`) REFERENCES `mentor` (`mentor_id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`uploader_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`mentor_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
