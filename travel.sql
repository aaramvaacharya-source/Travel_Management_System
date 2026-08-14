-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2021 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Ganesh', 'Raut', 'ganeshraut2000@gmail.com', 'Helambu', 9847483647, 'Ilam'),
(2, 'Kiran', 'Giri', 'kirangiri1@gmail.com', 'Jhapa', 9845868956, 'Ghandruk'),

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(1, 'Admin', 'Admin12345', 'admin@gmail.com', 'Butwal', 9871046276),
(2, 'Prasad', 'Prasad12345', 'prasad@gmail.com', 'Hetauda', 9745961256),
(3, 'Mahesh', 'Mahesh12345', 'mahesh@gmail.com', 'Dang', 9788488656),
(4, 'Nisha', 'Nisha12345', 'nisha@gmail.com', 'Lamjung', 987961236);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'Joy', 'joy123@gmail.com', 'Good website'),
(2, 'Aman', 'aman56@gmail.com', 'Nice website'),

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'My Hotel', '017886956', 'Kathmandu'),
(2, 'High View', '015339565', 'Pokhara');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('Ilam', 'Ilam is a picturesque district located in the eastern part of Nepal. Known for its lush greenery, tea gardens, and scenic landscapes, Ilam is a popular destination for nature lovers and tourists seeking tranquility. The region is renowned for its high-quality tea production, with numerous tea estates dotting the hillsides. Ilam town, the district headquarters, is characterized by a pleasant climate and offers stunning views of the surrounding mountains, including the majestic Kanchenjunga. Visitors to Ilam can explore the tea gardens, enjoy nature walks, and immerse themselves in the serene ambiance of this charming district.', 'images//destination//ilam.jpg', 15000),
('Mt. Everest', 'Mount Everest is the highest peak of the world, towering at 29,032 feet (8,848 meters) above sea level. Situated in the Himalayas on the border between Nepal and Tibet, Everest is renowned for its challenging climbing conditions and extreme altitude. Sir Edmund Hillary of New Zealand and Tenzing Norgay, a Sherpa of Nepal, were the first to successfully reach the summit on May 29, 1953. The mountain attracts adventurers and climbers from around the globe, each year attempting to conquer its formidable slopes. Mount Everest holds cultural and spiritual significance for the people of the region and continues to captivate the imagination as a symbol of human endurance and exploration.', 'images//destination//everest.jpg', 100000),
('Chitwan', 'Chitwan, located in the Narayani Zone of southern Nepal, is renowned for its Chitwan National Park, a UNESCO World Heritage Site, celebrated for its diverse wildlife, including one-horned rhinoceros and Bengal tigers. This district is a hotspot for ecotourism, offering thrilling wildlife safaris amid lush landscapes. Beyond its natural attractions, Chitwan is home to the indigenous Tharu community, providing visitors with a chance to explore traditional villages and immerse themselves in the unique culture and lifestyle of the region. With a perfect blend of biodiversity and cultural richness, Chitwan stands as a popular destination for those seeking a captivating and diverse travel experience in Nepal.', 'images//destination//chitwan.jpg', 9000),
('Lumbini', 'Lumbini is a UNESCO World Heritage site located in the Rupandehi District of Nepal. It is renowned as the birthplace of Siddhartha Gautama, who later became known as Buddha, the founder of Buddhism. The sacred garden in Lumbini is believed to be the exact spot where Buddha was born in the 6th century BCE. The site attracts pilgrims and visitors from around the world who come to explore the various monuments, temples, and archaeological remains associated with the life of Buddha. Lumbini holds great cultural and spiritual significance, making it a key pilgrimage destination and a place of contemplation for Buddhists and others interested in the teachings of Buddha.', 'images//destination//lum.jpg', 12000),
('Ghandruk', 'Ghandruk is a picturesque village in the Kaski District of the Gandaki Province in Nepal. Situated in the Annapurna region, Ghandruk is renowned for its stunning mountain views, traditional Gurung culture, and well-preserved architecture. The village offers panoramic vistas of the Annapurna and Machapuchare mountain ranges, making it a popular trekking destination. Visitors to Ghandruk can experience the warmth of Gurung hospitality, explore ancient stone houses, and immerse themselves in the local customs and traditions. The village also serves as a gateway to the Annapurna Base Camp trek, attracting nature enthusiasts and trekkers from around the world.', 'images//destination//ghan.jpg', 19000),
('Dolpa', 'Dolpa is a remote and sparsely populated district located in the Karnali Province of Nepal. Known for its rugged terrain and isolation, Dolpa is one of the least developed regions in the country. The district is characterized by high mountain ranges, deep valleys, and pristine landscapes, making it a haven for trekking and adventure enthusiasts. Dolpa is also renowned for its rich cultural heritage, with a diverse mix of ethnic groups such as the Dolpo, Tibetan, and Magar people. The region is home to Shey Phoksundo National Park, which boasts the stunning Phoksundo Lake, the deepest lake in Nepal. Dolpa has gained international recognition through the portrayal of its unique landscapes and culture in the Oscar-nominated film "Caravan" and the popular book "The Snow Leopard" by Peter Matthiessen.', 'images//destination//dolpa.jpg', 25000),
('Karnali', 'Karnali is a region in western Nepal, known for its rugged and remote terrain. It is home to the Karnali River, one of the major tributaries of the Ganges, flowing through deep gorges and scenic landscapes. The Karnali region is characterized by diverse ethnic communities, including Tharu, Brahmin, Chhetri, and indigenous groups like the Raute and Badi. The area is also rich in biodiversity, with national parks and wildlife reserves, offering habitats for various species, including the elusive snow leopard. Despite its natural beauty, Karnali faces challenges related to infrastructure development, access to education, and healthcare, as it remains one of the less developed and least accessible regions in Nepal.', 'images//destination//karnali.jpg', 15000),
('Jumla', 'Jumla is a district and the corresponding headquarters in the Karnali Province of western Nepal. The district is situated in the remote Himalayan region and is known for its stunning landscapes, including mountains, valleys, and rivers. Jumla district is also recognized for its traditional culture, agriculture, and the cultivation of apples. The headquarters, Jumla Bazaar, serves as a hub for administrative and economic activities in the region. This area attracts trekkers and adventure enthusiasts seeking to explore the natural beauty and cultural richness of the western part of Nepal.', 'images//destination//jumla.jpg', 26000),

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adii', '123456', '2021-01-20 08:15:18am'),
('gaja', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nishchay', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gajanan', 'GAjju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Tajmahal', 'Agra'),
(2, 'Beach', 'Goa'),
(3, 'India Gate', 'Delhi'),
(4, 'Kerala Beach', 'Kerala'),
(5, 'Mysore Palace', 'Mysore'),
(6, 'Ladakh', 'Ladakh India');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amar', 'amarraj123@gmail.com', 85749646, 'Mandya'),
(2, 'akhil', 'akhil23@gmai.com', 45968678, 'Manglore'),
(3, 'kiran', 'kiru34@gmail.com', 78969665, 'Mysore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
