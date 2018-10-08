-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: sql5c25m.carrierzone.com
-- Generation Time: Oct 08, 2018 at 11:16 AM
-- Server version: 5.7.23-log
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irstationtable_w42renf2sc957916`
--

-- --------------------------------------------------------

--
-- Table structure for table `Stationpages`
--

CREATE TABLE `Stationpages` (
  `ID` int(1) UNSIGNED NOT NULL,
  `StationName` text NOT NULL,
  `ContactURL` text NOT NULL,
  `WebURL` text NOT NULL,
  `StreamURL` text NOT NULL,
  `Location` text NOT NULL,
  `Timezone` text NOT NULL,
  `Description` text NOT NULL,
  `StationType` text NOT NULL,
  `Schedule` text NOT NULL,
  `ScheduleURL` text NOT NULL,
  `Contact` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stationpages`
--

INSERT INTO `Stationpages` (`ID`, `StationName`, `ContactURL`, `WebURL`, `StreamURL`, `Location`, `Timezone`, `Description`, `StationType`, `Schedule`, `ScheduleURL`, `Contact`) VALUES
(1, 'FIP', 'http://www.fipradio.fr/contact', 'http://www.fipradio.fr/', 'http://audio.scdn.arkena.com/11016/fip-midfi128.mp3', 'Paris, France', 'CET (UST+1)', 'Established in 1971 FIP originally France Inter Paris radio plays an ecletic mix of jazz, chansons, world music and electronic tunes. Continuous music is played interrupted only for traffic announcements. There is no advertising and it is a cool vibe with smooth transitions between tunes.', 'Ecletic Jazz', 'The broadcasts are presented live from 7 am to 11 pm, after which a computer replays a selection of the music broadcast earlier in the day', '', '0'),
(2, 'WXYC', 'http://www.wxyc.org/contact', 'http://www.wxyc.org/', 'http://www.wxyc.org/files/streams/wxyc-mp3.m3u', 'University of North Carolina at Chapel Hill', 'EDT (GMT+4,BST+5)', 'Originally on air in 1977 this is the campus radio station of the University of North Carolina at Chapel Hill WXYC radio. In 1994 it became the first radio station to stream its on air signal over the internet. WXYC has carried on its tradition of diverse and interesting programming playing blues jazz pop and dedicated programs for new music with new and interesting sounds from around the world.', 'Ecletic College', '', '', '0'),
(3, 'TRP', 'trp.html', 'http://www.wearetrp.com/', 'http://trp.out.airtime.pro:8000/trp_b', 'Toronto, Canada', 'EDT UTC -5 hours Daylight saving  +1 hour UTC -4 hours', 'TRP is an independent, free-form radio station broadcasting live from our studio at 932b College St in Toronto, Canada.', 'Independent Cool Indie Rock community', '', '', '0'),
(4, 'Berlin Community Radio', 'bcr.html', 'http://www.berlincommunityradio.com/', 'http://berlincommunityradio.out.airtime.pro:8000/berlincommunityradio_b', 'Berlin, Germany', 'CET (UST+1)', 'Berlin Community Radio is an online broadcasting platform presenting everything that is coming from, passing through or influencing the creative scene in Berlin. BCR is home to over 100 shows covering a variety of topics: arts, music across genres, culture, relationships, queer politics, literature readings, feminism discussions, gender and internet phenomenons.\r\nIts aim is to bring together the continually evolving communities of the city and to establish a modern platform for cultural exchange. As well as a growing schedule of shows, the brand new BCR Zine features fresh lifestyle, fashion & art content editorials alongside music news.', 'cultural indie arts literature electronic idm community', '', '', '0'),
(5, 'Resonance', 'resonance.html', 'https://resonancefm.com', 'http://stream.resonance.fm:8000/resonance', 'London, England', 'UST', 'Resonance is a community radio station run by volunteers. Its broadcasts 24/7 on 104.4 FM to central London. Its mission is to encourage the arts through the medium of radio. ', 'Arts\r\nCommunity\r\nVolunteer\r\n', '', 'https://resonancefm.com/schedule', '0'),
(6, 'Resonance Extra', 'resonancex.html', 'https://extra.resonance.fm/', 'http://stream.resonance.fm:8000/resonance-extra', 'Brighton, England', 'UST', 'Resonance Extra is a pioneering new digital radio platform launched in December 2015, available on DAB to listeners in Central Brighton and online to the rest of the world. Dedicated foremost to the global artistic community and with a focus on long–form international music programming and sonic experimentation, Resonance Extra exists to mobilise diverse and emergent communities of sound artists, musicians, broadcasters, academics and expert curators.', 'Community\r\nArts\r\nCool', '', 'https://extra.resonance.fm/', '0'),
(7, 'Unity 101', 'http://unity101.org/', 'http://unity101.org/', 'http://icecast.commedia.org.uk:8000/unity24.mp3', 'Southampton, England', 'UST', '\"By the community, for the community and to the community\". Our aim is to promote and broadcast music and culture of the Asian & ethnic communities of Southampton. To provide the training and skills required, so our volunteers and listeners are better able to participate more fully, in a cohesive society.', 'Community\r\nWorld\r\nAsian\r\nChinese\r\nPoland\r\nCultural\r\n', '', '', 'Tel: 02380 235055\nTel: 02380 221144\nEmail: studio@unity101.org\nTweet: @Unity101FM '),
(8, 'Heart FM', 'http://www.heart.co.uk/london/contact/', 'http://www.heart.co.uk/', 'http://media-ice.musicradio.com/HeartLondonMP3.m3u', 'London', 'UST', 'First launched in the West Midlands in 1994, Heart arrived in London in 1995.\r\n', 'Pop\r\nVariety\r\nNews', '', 'http://www.heart.co.uk/on-air/schedule/', '0345 481 11 11'),
(9, 'Fallout FM', 'https://www.radionomy.com/en/radio/falloutfm/index', 'https://www.radionomy.com/en/radio/falloutfm/index', 'http://streaming.radionomy.com/FalloutFM?lang=en-GB%2cen-US%3bq%3d0.8%2cen%3bq%3d0.6', 'USA', 'UST', 'A station revolving around the music of Fallout, Bioshock, Mafia II, L.A. Noire & more! Literally a hub for the fans of the music heard in golden games, or the music itself! So drop that Galaxy News Radio playlist, and head on over to Fallout F.M.!', 'Boogie Woogie Blues Jazz Country\r\nAmericana USA', '', 'https://www.radionomy.com/en/radio/falloutfm/index', 'unknown'),
(10, 'WNBC', '', 'http://www.wnbc.london/', 'https://tunein.com/radio/WNBCLONDON-s257666/?utm_source=tiEmbed&utm_medium=referral&utm_content=s257666', '20 Norwood High St, West Norwood, London SE27 9NR', 'UTC', 'This station broadcasts out of a book and record shop in West Norwood, South London', 'Alternative', '', '', '0208 670 9568 or 07971 265228\r\nthebookandrecordbar@gmail.com'),
(11, 'Radio Wassoulou Internationale', 'http://radio-wassoulou-internationale.playtheradio.com/contact.cfm', 'http://radio-wassoulou-internationale.playtheradio.com/index.cfm', 'http://wassoulou.radio.net', 'Yanfolila\r\nWassoulou\r\nMali ', 'UTC', 'Traditional Music of the Wassalou Mali and Guinea\r\nThe station plays the music forms :\r\nManinka / Mandinka\r\nWassoulou\r\nBamana\r\nThe majority of the vocalists are women\r\n', 'World Music\r\nAfrican\r\nMali\r\nGuinea\r\nWassoulou\r\nMandinka\r\nManinka\r\nBamana\r\nBlues\r\n\r\n', 'N/A', 'http://wassoulou.radio.net/', 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Stationpages`
--
ALTER TABLE `Stationpages`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
