-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2019 at 06:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `proj_id` int(11) UNSIGNED NOT NULL,
  `proj_title` varchar(150) NOT NULL,
  `proj_img_sm` varchar(100) NOT NULL,
  `proj_img_big` varchar(100) NOT NULL,
  `proj_description` text NOT NULL,
  `proj_summary` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`proj_id`, `proj_title`, `proj_img_sm`, `proj_img_big`, `proj_description`, `proj_summary`) VALUES
(1, 'Graphic Design', 'project1_sm.png', 'project1_big.jpg', 'During my 2 years at Fanshawe College we practiced the principles of design and started to build logos for fake and real companies. The process is not easy or simple and it requires briefing and good research. Colours, fonts and textures are part of the component that will become a brand, and all of them need to transmit emotion, feeling, taste and the principal: what you want to sell. Some of the logos were built in pairs/groups, but I always participated in the beginning, on the concept of ideas. I really enjoy Graphic Design.', 'During my 2 years at Fanshawe College we practiced the principles of design and started to build logos for fake and real companies.'),
(2, 'Content Producer', 'project2_sm.png', 'project2_big.png', 'In Brazil, I worked for 8 years in television programs conducting interviews about Health, Manners, Culture, Religion and Music. I was part of the creation and implementation of two TV Shows that stayed on the air for over 3 years, I was also responsible for producing content and direction of it. I used to make news for the press and for the company\'s website as well. These two videos are about the programs Elas and Musica de Todos os Tempos. I made the script and I also was the host. It is in Portuguese, my native language and the language of the country it was made.', 'I was part of the creation and implementation of two TV Shows that stayed on the air for over 3 years, I was also responsible for producing content and direction of it.'),
(3, 'Journalist/Editor', 'project3_sm.png', 'project3_big.jpg', 'Another project I really enjoyed creating was, working for a big museum of contemporary art recognized in many countries and I was invited to start a project involving the local community. We decided to create a newspaper to show the possibility of a relationship between the museum and native people.\r\nThe team I was a part of contracted an agency to help us on that project. I created a part of the newspaper format. I helped with the design part and the name as well. I contacted the stakeholders to involve a big team on that. When it was done, I started to put the project in action. I was the content producer, the reporter as well as the photographer. During one year I made 12 editions including 66 newspaper reports, 190 interviews, and 146 pictures.\r\n', 'I was the content producer, the reporter as well as the photographer. During one year I made 12 editions including 66 newspaper reports, 190 interviews, and 146 pictures.\r\n'),
(4, 'Communication Specialist', 'project4_sm.png', 'project4_big.jpg', 'The challenge here was to re-create a Website and create an Intranet for employees. Together, my team and I chose one agency that specializes in websites and they helped us put all of our ideas we had on paper. It consisted of many meetings until the final decision of design. They started to code both websites and I was responsible to check everything to make sure it was working and I was responsible to approve everything. Today I am on the other side of this kind of project and I can affirm its a lot of work!\r\n\r\n\r\n', 'They started to code both websites and I was responsible to check everything to make sure it was working and I was responsible for approving everything.'),
(5, 'Web Design I', 'project5_sm.png', 'project5_big.jpg', 'For the final project of the first year college, a partner and I chose an english school fake to build the website. I draw the logo and choose the colours thinking of the British flag. I took all the pictures after the photograph class using the best shots from my HD camera. For design, I choose pictures with the most of texts to maintain the website attractive.', 'My first web design work was to draw the logo and choose the colours thinking of the British flag. I took all the pictures after the photograph class using the best shots from my HD camera.'),
(6, 'Web Design II', 'project6_sm.png', 'project6_big.jpg', 'The second final integrated assignment from College was create a new website but this time for a real client. The challenge here was create a six pages instead just two like was for the first project. My partner and I had a good experience making research on the web and collecting interesting things from the real old website from the company.', 'The challenge here was create six pages instead two like it was for the first Web Design project. I need to make a lot of research to make sure to follow everything the client needed.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `proj_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
