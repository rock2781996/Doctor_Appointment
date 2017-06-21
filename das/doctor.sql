-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2015 at 03:16 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `Date` varchar(100) NOT NULL,
  `01am` varchar(100) NOT NULL,
  `02am` varchar(100) NOT NULL,
  `03am` varchar(100) NOT NULL,
  `04am` varchar(100) NOT NULL,
  `05am` varchar(100) NOT NULL,
  `06am` varchar(100) NOT NULL,
  `07am` varchar(100) NOT NULL,
  `08am` varchar(100) NOT NULL,
  `09am` varchar(100) NOT NULL,
  `10am` varchar(100) NOT NULL,
  `11am` varchar(100) NOT NULL,
  `12am` varchar(100) NOT NULL,
  `01pm` varchar(100) NOT NULL,
  `02pm` varchar(100) NOT NULL,
  `03pm` varchar(100) NOT NULL,
  `04pm` varchar(100) NOT NULL,
  `05pm` varchar(100) NOT NULL,
  `06pm` varchar(100) NOT NULL,
  `07pm` varchar(100) NOT NULL,
  `08pm` varchar(100) NOT NULL,
  `09pm` varchar(100) NOT NULL,
  `10pm` varchar(100) NOT NULL,
  `11pm` varchar(100) NOT NULL,
  `12pm` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Date`, `01am`, `02am`, `03am`, `04am`, `05am`, `06am`, `07am`, `08am`, `09am`, `10am`, `11am`, `12am`, `01pm`, `02pm`, `03pm`, `04pm`, `05pm`, `06pm`, `07pm`, `08pm`, `09pm`, `10pm`, `11pm`, `12pm`) VALUES
('2015-01-31', 'yyyy', 'yynn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn'),
('', 'yyyy', 'yynn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn'),
('2015-02-15', 'yyyn', 'ynnn', 'yyyy', 'nnyy', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'yyyy', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn'),
('2015-01-31', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nynn', 'yyyn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'yynn', 'yynn', 'nynn'),
('', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn'),
('07/31/2015', 'nynn', 'yynn', 'ynyn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'ynyn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn', 'nnnn');

-- --------------------------------------------------------

--
-- Table structure for table `doctoraddress`
--

CREATE TABLE IF NOT EXISTS `doctoraddress` (
  `E-mail ID` varchar(100) NOT NULL,
  `Address Line1` varchar(100) NOT NULL,
  `Address Line2` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `PinCode` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctoraddress`
--

INSERT INTO `doctoraddress` (`E-mail ID`, `Address Line1`, `Address Line2`, `City`, `State`, `Country`, `PinCode`) VALUES
('lion@gmail.com', 'nbvbcvjh', 'jcghcg', 'nbvnvb', 'jhvjhvjh', 'nbvjhvjh', '123456'),
('llll@gmail.com', 'mjbkjb', 'gfcfgxc', 'mnbkjn', 'jhvc', 'jhvbjn', '151515'),
('ktm.duke@gmail.com', 'Bisbren', 'Los Angels', 'Ausie', 'Los', 'Australia', '0000111'),
('ktm.duke@gmail.com', 'kjhjhgggg', 'buhbiub', 'biuuinbiunb', 'bubuibuib', 'iubbubuuiub', '111111'),
('ktm.duke@gmail.com', 'Bisbren', 'Los Angels', 'Ausie', 'Los', 'Australia', '0000111'),
('ktm.duke@gmail.com', 'Bisbren', 'Los Angels', 'Ausie', 'Los', 'Australia', '0000111'),
('ktm.duke@gmail.com', 'bkbjkbkjkh', 'jbjkjjjkh', 'hjjklhjkhkjh', 'hlkhlhlkl', 'llkklhklklj', '123425'),
('pop@gmail.com', 'jknkn', 'mlml', 'hjb', 'jbjknbk', 'knkn', '444444'),
('kkk@gmail.com', 'huuih', 'jhjkh', 'khk', 'lll', 'hjhjjk', '121212'),
('ppp@gmail.com', 'gcv', 'mvbjhbvh', 'vhjv', 'jhvhjvhv', 'hvhjv', '456123'),
('irfan.md@gmail.com', 'Quan', 'Hapur', 'Hapur', 'U.P', 'India', '12345542'),
('abcd.1234@gmail.com', ',nj,jn,<bnlkjblkb', 'lblkbl', 'llkb', 'lknkln', 'lknlknll', '789456'),
('onida@gmail.com', ',nbjkn', 'lkjnninh', 'oubiug', 'gigiugui', 'guigi', '456789'),
('samsung@gmail.com', 'jhbvjbhjbhv', 'bbiu', 'kjhb', 'uihuih', 'huhuih', '784512'),
('lion@gmail.com', 'nbvbcvjh', 'jcghcg', 'nbvnvb', 'jhvjhvjh', 'nbvjhvjh', '123456'),
('llll@gmail.com', 'mjbkjb', 'gfcfgxc', 'mnbkjn', 'jhvc', 'jhvbjn', '151515'),
('ktm.duke@gmail.com', 'inderghri', 'Los Angels', 'ghaziabad', 'up', 'Australia', '123425'),
('ktm.duke@gmail.com', 'inderghri', 'buhbiub', 'ghaziabad', 'up', 'iubbubuuiub', '123425'),
('ktm.duke@gmail.com', 'inderghri', 'Los Angels', 'ghaziabad', 'up', 'Australia', '123425'),
('ktm.duke@gmail.com', 'inderghri', 'Los Angels', 'ghaziabad', 'up', 'Australia', '123425'),
('ktm.duke@gmail.com', 'inderghri', 'jbjkjjjkh', 'ghaziabad', 'up', 'llkklhklklj', '123425'),
('pop@gmail.com', 'jknkn', 'mlml', 'hjb', 'jbjknbk', 'knkn', '444444'),
('kkk@gmail.com', 'huuih', 'jhjkh', 'khk', 'lll', 'hjhjjk', '121212'),
('ppp@gmail.com', 'gcv', 'mvbjhbvh', 'vhjv', 'jhvhjvhv', 'hvhjv', '456123'),
('irfan.md@gmail.com', 'Quan', 'Hapur', 'Hapur', 'U.P', 'India', '12345542'),
('abcd.1234@gmail.com', ',nj,jn,<bnlkjblkb', 'lblkbl', 'llkb', 'lknkln', 'lknlknll', '789456'),
('onida@gmail.com', ',nbjkn', 'lkjnninh', 'oubiug', 'gigiugui', 'guigi', '456789'),
('samsung@gmail.com', 'jhbvjbhjbhv', 'bbiu', 'kjhb', 'uihuih', 'huhuih', '784512'),
('null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null'),
('i@gmail.com', 'if', 'if', 'iyf', 'yf', '12457889', 'ihoi');

-- --------------------------------------------------------

--
-- Table structure for table `doctorinfo`
--

CREATE TABLE IF NOT EXISTS `doctorinfo` (
  `E-mail ID` varchar(100) NOT NULL,
  `First Name` varchar(50) NOT NULL,
  `Last Name` varchar(50) NOT NULL,
  `Mobile No` varchar(50) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `DOB` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorinfo`
--

INSERT INTO `doctorinfo` (`E-mail ID`, `First Name`, `Last Name`, `Mobile No`, `Sex`, `DOB`) VALUES
('ktm.duke@gmail.com', 'Rok', 'Bagoros', '+910000000', 'Female', '19'),
('lion@gmail.com', 'bnnhjhg', 'bnbvvccf', '+91123456', 'Male', '29'),
('llll@gmail.com', 'jkhnoih', 'jknhoho', '654564', 'Male', '16'),
('ktm.duke@gmail.com', 'kjhj', 'jkhkjhj', '+9111111', 'Male', '14'),
('ktm.duke@gmail.com', 'Rok', 'Bagoros', '+910000000', 'Female', '19'),
('ktm.duke@gmail.com', 'Rok', 'Bagoros', '+910000000', 'Female', '19'),
('ktm.duke@gmail.com', 'Rok', 'Bagoros', '+91151515', 'Male', '19'),
('pop@gmail.com', 'mnjn', 'jnjnj', '+914848484', 'Male', '18'),
('kkk@gmail.com', 'lhjkhkj', 'kjhjkhk', '+918130545454', 'Male', '26'),
('ppp@gmail.com', 'hjghjgvf', 'xb', '+911234567844', 'Male', '18'),
('irfan.md@gmail.com', 'Muhammad', 'Irfan', '+91976036155', 'Female', '16'),
('irfan.md@gmail.com', 'Muhammad', 'Irfan', '+91976036155', 'Female', '16'),
('irfan.md@gmail.com', 'Muhammad', 'Irfan', '+91976036155', 'Female', '16'),
('abcd.1234@gmail.com', 'ABCD', 'EFGH', '+911234567891', 'Male', '19'),
('onida@gmail.com', 'onida', 'tv', '+911234561233', 'Female', '1851948'),
('samsung@gmail.com', 'Samsung', 'Tv', '+918797675747', 'Male', '1471937');

-- --------------------------------------------------------

--
-- Table structure for table `doctorqualification`
--

CREATE TABLE IF NOT EXISTS `doctorqualification` (
  `E-mail ID` varchar(100) NOT NULL,
  `Class-10` varchar(50) NOT NULL,
  `Class-12` varchar(50) NOT NULL,
  `Graduation` varchar(50) NOT NULL,
  `Master` varchar(50) NOT NULL,
  `Achievement` varchar(80) NOT NULL,
  `Experience` varchar(80) NOT NULL,
  `Specialist` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorqualification`
--

INSERT INTO `doctorqualification` (`E-mail ID`, `Class-10`, `Class-12`, `Graduation`, `Master`, `Achievement`, `Experience`, `Specialist`) VALUES
('kkk@gmail.com', 'njbjbj', 'jbj', 'jbjjb', 'jbjjjj', 'jbjjbj', 'jbjb', 'jbjb'),
('lion@gmail.com', 'hjgfjhg', 'jhgjgjg', 'jhgjhg', 'hjgcvb', 'vnbv', 'vhgcghcgh', 'nbbn n'),
('ktm.duke@gmail.com', 'hjvbjhhjvbhjb', 'bhbhjbhjbjhhj', 'hbhhj', 'hjbhhb', 'hbhbbhjb', 'bhjbhb', 'jhbhjbh'),
('llll@gmail.com', 'jbjh', 'hiohooihoi', 'hjuhjuh', 'jbjbhjh', 'jhkjnklj', 'jknknk', 'knknmn'),
('ktm.duke@gmail.com', 'kjjkhh', 'kljhlkhlkhlk', 'hlhlkhl', 'klkklljhlhblkjbgk', 'jkljjlkjklj', 'kjkjbmnvb', 'ghjghjgkjg'),
('pop@gmail.com', 'kjbkjb', 'jbbjkb', 'bjkbjbjkjbjb', 'bjbjjb', 'bjbbj', 'jjbjjbbjbj', 'jbjbjbjbj'),
('ppp@gmail.com', 'vnbv', 'mnvmnv', 'mvn', 'vvjhv', 'jhjhv', 'jhvhjv', 'vvvvvvvjhv'),
('irfan.md@gmail.com', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('irfan.md@gmail.com', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('irfan.md@gmail.com', 'na', 'na', 'na', 'na', 'na', 'na', 'na'),
('abcd.1234@gmail.com', 'kjhgjigui', 'biuhbi', 'hhuihuih', 'uhiuhiu', 'huihuui', 'hihiuhui', 'huihuihuih'),
('onida@gmail.com', 'khg', 'ygg', 'gig', 'iugiuguiuiguig', 'iuguig', 'iug', 'uui'),
('samsung@gmail.com', 'kjb', 'kf', 'mbh', 'mhbh', 'jv', 'jhb', 'kjb');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `E-mail ID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`E-mail ID`, `Password`, `Status`) VALUES
('ktm.duke@gmail.com', '123456', '123456'),
('ktm.duke@gmail.com', '123456', ''),
('kkk@gmail.com', '123456', '123456'),
('ppp@gmail.com', '123456', '123456'),
('rahul@gmail.com', '123445', 'active'),
('irfan.md@gmail.com', '123456', '123456'),
('abcd.1234@gmail.com', '147852', '147852'),
('onida@gmail.com', '789456', '789456'),
('samsung@gmail.com', '987654', '987654'),
('sanoj.kumar@gmail.com', 'sanoj12345', 'sanoj12345'),
('sanoj.kumar@gmail.com', 'sanoj12345', 'sanoj12345');

-- --------------------------------------------------------

--
-- Table structure for table `paitentquery`
--

CREATE TABLE IF NOT EXISTS `paitentquery` (
  `Title` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `E-mail ID` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paitentquery`
--


-- --------------------------------------------------------

--
-- Table structure for table `patient1`
--

CREATE TABLE IF NOT EXISTS `patient1` (
  `Email ID` varchar(50) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Confirm Password` varchar(40) NOT NULL,
  `Firstname` varchar(40) NOT NULL,
  `Lastname` varchar(40) NOT NULL,
  `Mobile NO` varchar(50) NOT NULL,
  `Sex` varchar(30) NOT NULL,
  `Date Of Birth` varchar(50) NOT NULL,
  `House NO` varchar(30) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `Near By` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Pincode` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient1`
--

INSERT INTO `patient1` (`Email ID`, `Password`, `Confirm Password`, `Firstname`, `Lastname`, `Mobile NO`, `Sex`, `Date Of Birth`, `House NO`, `Area`, `Near By`, `City`, `Pincode`, `State`, `Country`) VALUES
('rocky@gmail.com', '123456', '123456', 'Rocky', 'sharma', '81304899101', 'male', '11jul1991', 'saihospital', 'samratashoknagar', 'saihospital', 'up', '244001', 'up', 'india'),
(' sds@gmail.com', '123456', '123456', 'rajan', ' verma', '+91343434444', 'male', '1982', '342324', ' fgh', ' dfddsfdsfd', ' fdfd', '4353322 ', ' ', ' '),
(' ram@gmail.com', '567890', '567890', 'mavish', ' chaudhary', '+9134333333', 'female', '1983', ' 546656', ' yuytty', ' ytjytjyt', ' nbmnbmn', ' 555555', ' yt', 'india'),
(' ra@gmail.com', 'surojit', 'surojit', 'Surojit', 'Das', '5525522', 'male', '1990', '34/3', 'bijaynagar', 'ipem', 'ghaziabad', '201010', 'u.p', 'india'),
(' ra@gmail.com', 'surojit', 'surojit', 'Surojit', 'Das', '5525522', 'male', '1990', '34/3', 'bijaynagar', 'ipem', 'ghaziabad', '201010', 'u.p', 'india'),
(' rocky110792@gmail.com', '123456', '123456', 'rahul', 'sharma', '+919756910120', 'male', '1984', ' 34432', ' samratashoknagar', ' SaiHospital', 'mbd', '244001', 'up', 'india'),
(' ra@gmail.com', 'surojit', 'surojit', 'Surojit', 'Das', '5525522', 'male', '1990', '34/3', 'bijaynagar', 'ipem', 'ghaziabad', '201010', 'u.p', 'india'),
('rahul110792@gmail.com', 'rahul11', 'rahul11', 'rahul', 'sharma', '8130489913', 'male', '1991', 'sai', 'samrat ashok nagar..', 'sai hospital..', 'up', '244001', 'up', 'india'),
(' ram1@gmail.com', '999999', '999999', 'mavish1', ' chaudhary1', '+91343333331', 'female', '1983', ' 5466561', ' yuytty1', ' ytjytjyt1', ' nbmnbmn1', ' 555555', ' yt1', 'india1'),
(' ram1@gmail.com', '999999', '999999', 'mavish1', ' chaudhary1', '+91343333331', 'female', '1983', ' 5466561', ' yuytty1', ' ytjytjyt1', ' nbmnbmn1', ' 555555', ' yt1', 'india1'),
('arvind1@gmail.com', '444444', '444444', 'mavish12', ' chaudhary12', '+913433333', 'female', '1988', ' 999999', ' yummm', ' pased', 'gajrola', ' 555556', ' yt12', 'india12'),
('raju@gmail.com', '212121', '212121', 'raju', 'chaudhary', '+9199999999', 'male', '4041972', ' 9999991', ' yummm1', ' pased1', 'gajrola1', ' 5555561', ' yt121', 'india121'),
('irfan@gmail.com ', '999999', '999999', 'irfan', ' pathan', '+9133333333', 'male', '5Apr1976', ' 000000', ' fggfsdh', ' dghsdghs', ' dshdghs', ' 5555555', ' up6', ' pakistan'),
('irfan@gmail.com ', '999999', '999999', 'irfan', ' pathan', '+9133333333', 'male', '5Apr1976', ' 000000', ' fggfsdh', ' dghsdghs', ' dshdghs', ' 5555555', ' up6', ' pakistan'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'nullnullnull', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'nullnullnull', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
(' deepak@gmail.com', 'fresww', 'fresww', 'ggggg', ' fffffff', '+9166666666', 'male', '11may1981', ' 9999999', ' hggdha', ' dasdahgs', ' ytey', '667362 ', 'u.p', 'pakistan'),
(' gfh@gmail.com', '123456', '123456', 'jagat', 'bisht', '+91888888888', 'male', '10may1991', ' 54322', ' cdshvhs', 'sfsdff', ' fererfre', ' 343433', ' upp', ' fdsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `patientaddress`
--

CREATE TABLE IF NOT EXISTS `patientaddress` (
  `Email ID` varchar(50) NOT NULL,
  `House NO` varchar(20) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `Near By` varchar(50) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Pincode` varchar(20) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Country` varchar(29) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientaddress`
--

INSERT INTO `patientaddress` (`Email ID`, `House NO`, `Area`, `Near By`, `City`, `Pincode`, `State`, `Country`) VALUES
('rahul@gmail.com', ' Are3', ' sdf11', ' dwdwd', ' sdsds', '637671', 'up1', ' india1'),
('rahul110792@gmail.com', 'SaiHospital1', 'moradabad', '244001', 'moradabad', '244001', 'up', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `patientinfo`
--

CREATE TABLE IF NOT EXISTS `patientinfo` (
  `Email ID` varchar(50) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Mobile NO` varchar(40) NOT NULL,
  `Sex` varchar(40) NOT NULL,
  `Date Of Birth` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientinfo`
--

INSERT INTO `patientinfo` (`Email ID`, `Firstname`, `Lastname`, `Mobile NO`, `Sex`, `Date Of Birth`) VALUES
('rahul110792@gmail.com', 'Rahul', ' Sharma', '8130489910', 'male', '11Mar1989'),
('rahul@gmail.com', 'rahul', 'sharma', '+918130489910', 'female', '5Feb1988');

-- --------------------------------------------------------

--
-- Table structure for table `patientqualification`
--

CREATE TABLE IF NOT EXISTS `patientqualification` (
  `Email ID` varchar(50) NOT NULL,
  `High School` varchar(50) NOT NULL,
  `Intermidiate` varchar(30) NOT NULL,
  `Graduation` varchar(30) NOT NULL,
  `Post Graduation` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientqualification`
--

INSERT INTO `patientqualification` (`Email ID`, `High School`, `Intermidiate`, `Graduation`, `Post Graduation`) VALUES
('rahul@gmail.com', ' 55%', ' 55%', ' 65%', ' 65%'),
('rahul110792@gmail.com', ' 56%', '55%', ' 66%', 'null');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
