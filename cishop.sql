-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 10:21 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  `date_published` int(11) NOT NULL,
  `author` varchar(65) NOT NULL,
  `picture` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`, `date_published`, `author`, `picture`) VALUES
(1, 'Beautiful-Hand-Made-Clothes', 'Beautiful Hand Made Clothes', 'Clothes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget magna fermentum iaculis eu non. Accumsan tortor posuere ac ut consequat semper viverra nam libero. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Malesuada bibendum arcu vitae elementum. Mi eget mauris pharetra et. Ut diam quam nulla porttitor massa. Sed libero enim sed faucibus. Phasellus egestas tellus rutrum tellus. Pulvinar elementum integer enim neque volutpat ac. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Consectetur lorem donec massa sapien faucibus. Vitae et leo duis ut diam quam. Turpis nunc eget lorem dolor.', '<span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget magna fermentum iaculis eu non. Accumsan tortor posuere ac ut consequat semper viverra nam libero. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Malesuada bibendum arcu vitae elementum. Mi eget mauris pharetra et. Ut diam quam nulla porttitor massa. Sed libero enim sed faucibus. Phasellus egestas tellus rutrum tellus. Pulvinar elementum integer enim neque volutpat ac. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Consectetur lorem donec massa sapien faucibus. Vitae et leo duis ut diam quam. Turpis nunc eget lorem dolor.</span>', 1525842000, 'Hamza Amin', 'g4Q5WdsEdJ2MbQpq.jpg'),
(7, 'Our-Famour-Items-Are-Hand-Embroideries', 'Our Famour Items Are Hand Embroideries', '                                Hand Embroidery                            ', '                                                                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus non enim praesent elementum. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Ac turpis egestas integer eget aliquet. Blandit turpis cursus in hac. Eu volutpat odio facilisis mauris sit amet massa vitae tortor. Urna cursus eget nunc scelerisque viverra mauris. Accumsan sit amet nulla facilisi morbi. Aliquet lectus proin nibh nisl condimentum id venenatis a condimentum. Ac auctor augue mauris augue neque gravida in fermentum. Feugiat pretium nibh ipsum consequat nisl vel pretium. Porttitor leo a diam sollicitudin. Hac habitasse platea dictumst quisque sagittis purus. A diam sollicitudin tempor id eu. Id semper risus in hendrerit gravida rutrum quisque.                                                                                                                ', '                                                                                                <span xss="removed">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus non enim praesent elementum. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Ac turpis egestas integer eget aliquet. Blandit turpis cursus in hac. Eu volutpat odio facilisis mauris sit amet massa vitae tortor. Urna cursus eget nunc scelerisque viverra mauris. Accumsan sit amet nulla facilisi morbi. Aliquet lectus proin nibh nisl condimentum id venenatis a condimentum. Ac auctor augue mauris augue neque gravida in fermentum. Feugiat pretium nibh ipsum consequat nisl vel pretium. Porttitor leo a diam sollicitudin. Hac habitasse platea dictumst quisque sagittis purus. A diam sollicitudin tempor id eu. Id semper risus in hendrerit gravida rutrum quisque.</span>                                                                                    ', 21600, 'Hamza Amin', 'g69vm72VsaM4FvfT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('34d9ofnspmej1i7u94tdef3m7e6coatl', '::1', 1530768517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303736383233303b69735f61646d696e7c733a313a2231223b),
('h6lf3oapd14eipcj439d5lk4cuh4ofdl', '::1', 1530768829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303736383533313b69735f61646d696e7c733a313a2231223b),
('krrlq95or12nrvetqb4i3qtph27vlg2i', '::1', 1530768924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303736383833343b69735f61646d696e7c733a313a2231223b),
('a1m4madhu6vlt9am5v3cgdt3hr3isn3c', '::1', 1530769519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303736393232303b69735f61646d696e7c733a313a2231223b),
('u1qb9k3i90o5nlrfbq4jl0m7mf5fnnp6', '::1', 1530769625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303736393532313b69735f61646d696e7c733a313a2231223b),
('t39455n719ureaoj5chrhq9482pls0ht', '::1', 1530771646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737313335323b69735f61646d696e7c733a313a2231223b),
('toudqogcutnrvefcu63du75eka1kfp0a', '::1', 1530771937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737313635363b69735f61646d696e7c733a313a2231223b),
('t15vk6t4qrg4uh9c3tb8ji78dkolcpa3', '::1', 1530772145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737313935393b69735f61646d696e7c733a313a2231223b),
('9is3e485imgetpa3kgrcsgs932iar7ol', '::1', 1530772531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737323337363b69735f61646d696e7c733a313a2231223b),
('geqbs1fv2un0ivqki9glg609jj19bqpp', '::1', 1530773089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737323739333b69735f61646d696e7c733a313a2231223b),
('v1ni2tfaq0qse7m7u0vp70b2emq4t9t2', '::1', 1530773318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737333130373b69735f61646d696e7c733a313a2231223b),
('cl88hoam6e6s5fjb9p0sdokubrsqec1c', '::1', 1530773852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737333535323b69735f61646d696e7c733a313a2231223b),
('tqisnhgdhokbt5bd0jfo26dgpvakd9fe', '::1', 1530774136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737333836333b69735f61646d696e7c733a313a2231223b),
('80r33pe1t6ic0p0of32s3sieitfc02n8', '::1', 1530774435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737343136373b69735f61646d696e7c733a313a2231223b),
('gbmvg386fh5nmjt3dhv39oafv0enjhfq', '::1', 1530774667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737343438363b69735f61646d696e7c733a313a2231223b),
('n2f35a3mjj7hct2itoc7umjfdohod8af', '::1', 1530775385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737353038353b69735f61646d696e7c733a313a2231223b),
('deqd5n1b8d4mdmjslp69edroo7ahrpkq', '::1', 1530775680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737353338363b69735f61646d696e7c733a313a2231223b),
('4f92e04a6f4rqblaf07g13n9kukan3lh', '::1', 1530775731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737353732313b69735f61646d696e7c733a313a2231223b),
('8bn7dsuihg11354a0a46hahnclokcbcq', '::1', 1530776224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737363232343b69735f61646d696e7c733a313a2231223b),
('95dtp796rk6b7474saq3lvc8uccbbbcm', '::1', 1530776839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737363534373b69735f61646d696e7c733a313a2231223b),
('v43e7hbd5jng3bbqncla17h78v8ueefi', '::1', 1530776947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737363834383b69735f61646d696e7c733a313a2231223b),
('eqvb063ke78qh0lparlk649ujrjntu5b', '::1', 1530777924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737373634373b69735f61646d696e7c733a313a2231223b),
('j459se9j1e128om4b71rv8kkdgcv4idv', '::1', 1530778213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737373935333b69735f61646d696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_to` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `opened` int(1) NOT NULL,
  `code` varchar(6) NOT NULL,
  `urgent` tinyint(1) NOT NULL,
  `ranking` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `date_created`, `sent_by`, `sent_to`, `subject`, `message`, `opened`, `code`, `urgent`, `ranking`) VALUES
(1, 1509818064, 0, 9, 'Lovely Invitation', 'I wholeheartedly Invite you to come here', 1, 'Xhn55Y', 0, 0),
(2, 1525990813, 0, 9, 'Hi', '                                                                                                                                                                Hanza                                                                                                                                            ', 1, 'ekvwGN', 0, 0),
(3, 1525990846, 0, 9, 'Hello ', 'How are you', 1, 'GZZjDZ', 0, 0),
(4, 1526122547, 9, 0, 'adfasfd', 'dafasfad', 1, 'URb67A', 0, 0),
(5, 1526122558, 9, 0, 'adfasfd', 'dafasfad', 1, 'cNRaYS', 0, 0),
(6, 1526122596, 9, 0, 'Hamza', 'Hamza', 1, 'QQVYe3', 0, 0),
(7, 1526122682, 9, 0, '.....', 'How are you', 1, '9yzcAt', 0, 0),
(10, 1526148034, 0, 9, 'Hello Mr. Boganza', '                                Hello i got you&nbsp;<br><br>\r\n            --------------------------------------------------<br>\r\n            The original message is shown below:<br><br>How are you doing?                            ', 1, 'AFCCXx', 0, 0),
(11, 1526151921, 9, 0, 'Subject', 'Yeah i am fine\r\n\r\n\r\n-------------------------\r\n\r\nHow are you', 1, '4Kxe9G', 0, 2),
(12, 1526198356, 0, 0, 'Contact Form', 'Hamza Amin Submitted the following information<br><br>Name: Hamza Amin<br>Email: hamzajan@gmail.com<br>Telephone Number: 234234234<br>Message: Hello! \r\nHow are you doing man<br>', 1, 'cfuyWS', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_blocks`
--

CREATE TABLE IF NOT EXISTS `homepage_blocks` (
  `id` int(11) NOT NULL,
  `block_title` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage_blocks`
--

INSERT INTO `homepage_blocks` (`id`, `block_title`, `priority`) VALUES
(3, 'Promote Local Handicrafts Makers', 0),
(4, 'General Offers', 0),
(5, 'Carpets Offers', 0),
(6, 'Towels Offers', 0);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_offers`
--

CREATE TABLE IF NOT EXISTS `homepage_offers` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage_offers`
--

INSERT INTO `homepage_offers` (`id`, `block_id`, `item_id`) VALUES
(1, 3, 1),
(3, 3, 2),
(4, 3, 4),
(6, 3, 6),
(7, 4, 7),
(8, 4, 11),
(9, 4, 15),
(10, 4, 19),
(11, 5, 16),
(12, 5, 17),
(13, 5, 18),
(14, 6, 13);

-- --------------------------------------------------------

--
-- Table structure for table `item_galleries`
--

CREATE TABLE IF NOT EXISTS `item_galleries` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_galleries`
--

INSERT INTO `item_galleries` (`id`, `parent_id`, `picture`) VALUES
(2, 7, '22687959_889903574501090_2966790211609682812_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE IF NOT EXISTS `paypal` (
  `id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `posted_information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_cookies`
--

CREATE TABLE IF NOT EXISTS `site_cookies` (
  `id` int(11) NOT NULL,
  `cookie_code` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry_date` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_cookies`
--

INSERT INTO `site_cookies` (`id`, `cookie_code`, `user_id`, `expiry_date`) VALUES
(1, '4wwpCQaT8rrUK8e2eh5kNMVraTdpxvXQDVBRG483rbZt3baKfq7YhEPJTkJ8fdQK6HAFCCXxAjsqbBYR9S3ZFVAsv97fRkz4rSsUsAFrCPKGdqDkUHPqVzewYknKjQbH', 9, 1526890486),
(2, 'Cqav8UfFyFXp8AcbyWub4AKXmUvCDFFKGjMtFCHkmW2sU8Cr4x2k4YaMzQwSSV4aDAeN8G4k2zXTy4W2tvsRVKrYF9puXxhXufAwsagHzzNF6n7ZHRHKEUzyER9uVxq8', 9, 1526890591),
(3, 'bhPBCYmuZXuSv3amRzT3hrAvxUMRMTqEKGV5FcjBhG4rM666SEVFNjvQfmhAvCfAcuTUCM98tQvmVwUbK9QHazgwSaEH6JZTxDJ7rJR2vkPEXjzEwZC7rdVAmmVcydCy', 9, 1526890613),
(4, 'JbuG84sgrd2mSu8wadhTxes4HV45T67AP65EFMUUdt5qD3yKFPQ3xCQSWS5k7ku2Kny27ReVT62QhXSm5Mezqq754bWWcWHNA3UHrjsjs6RDQf3kk8xtayfD3SGWbVQX', 9, 1526890616),
(5, 'h58PB8x5RuxQeW6FuRFJN5gATVkj2hQwSudgFmvc9e7pwY3ruWHqhXbUCnR4J2Grkfc7BVkHkmyjEqQwprDrEdWBebdbk8sHDr4krT3AnSSCGcwZ9frQUSAFHpuENC4p', 9, 1526890645),
(6, 'RXMV7cCShJ4jBp4SMu6B3T885WBx9uxrVSnTEV6v6Z8npVv6h6CK3gwXjTCNmHURT9Rd7ZrvKC5N3RNGF43gU4N9rcvqsk9CGPcWrtCThCTBzaYEWqkbDcWHqTfqrkfN', 9, 1526890648),
(7, 'qQr2BgHDHZANYQ3368vtgHXFfXTMfFfmYfxuEvEN2KamfTXK7dx7MBRZZpqwYr8fs3vkB5whbTBgqjKSZFs89SCGBdMDzxSyMbmxr3dbepVAs7smKxexqwgM6q3832ud', 9, 1526890692),
(8, 'XH587mNsaf7gmgZcqKTjwxNdsXaZpTYf4CF6E5f6Xwbk8QrrUmstwWc3FUbfA8kFZVar79A6C98KNKH3jkRZqGteNd4SFJzuQzv9qBPua9Wzj4U2zF8T9RBPMUPSEHGD', 9, 1526890695),
(9, 'VFunetaySWfnqQ8gWnCe6f5JVJjJ3vHGyM7B3hPUzfHzMp96KUVr5xr3PutTBuqtxJ6HcZR8EsyExNwNVjAurE9c67YUzku6UAsGJzfe8vKCF6gnvADq9FeeKBSPT5UB', 9, 1526890712),
(10, 'EjbzD24cXsktbgqPrJ5dfzG9MY9AAFHYMUhjWmc4beha5jU8HMSTJkyWbdNdEaVegnNWByJMMVCKkeMjqF4sAYMAXmPK7wun9GDrDCDpJvkdY33pttASPvn97mc9VKrn', 9, 1526890791),
(11, 'pVTN5zWS5VqyYGEkU7wbrTmyCdXr8SJf22v3SqAcMeSKnfE9GDPmq9FQxY7zGRr2ZYu937CsSrGR8E3RT4vqKhqZPACADGvDnQR9zF3xkvUPfXNrskykuhw3t6wuYsW9', 9, 1526890825),
(12, '8yAZu8QwbruDM8VSpuY9AbYXuuNfE4Kxe9GJMtYnpesmEbrbFwMP5XQJTHsUJxWNJBbnsEw6YVMWV7hnnrWnVA4qERtrcTvVBW4RvJrFWuupyUysrcvN97DWPRRQ28sV', 9, 1526890827),
(13, 'kU2an5ak4FcwdJHsdGNjTx3RAGxgabTjWsaaKtZzYFsJs78pva8JYS4wdDXV6vuGUSG3xJbFhz5Q4mVdawR4r5r4dtMtpEtXf9ANETKEZk5N4t6VbKWefacuBaXS4HP6', 9, 1526890936),
(14, 'Ag7XNHqAUsgHagHXgybpt9DBspzGs8WgbFdrRVnHcbRhsjDGhEd4X4xWbQ6taSPcCubfNwcepjhdBJsNb885kjjCNDtzKYyvXC3uBtU8rPBxCx8gWYVuAXXGgQH5dtaa', 9, 1526890939),
(15, 'TeFTt7rJtjHRwyVEF5RaAzSQhfPCsT3Z5CnWPe9UJWeStrYh4Vda89gWMk2zzbMzCVqSxffWps9KM9rNNCX33A5UBfBq5mU2y5QED9HRrPqxuKebVd5MkVdKP5y8Xprk', 9, 1526890976),
(16, 'S7Dm8VzDP44byersqGypZ8KuqKTGdjhwyZPUYyNhAb5GZBZzg3rT4cE6njAaS7yABNnkc5pQJbt7PQWzxfDetaWyHKFvSMbx3shCPtmfg4en2Wft9mfufYBUr58Hfkbm', 9, 1526891015),
(17, 'D3tZaFCJVDax9N6YwtSchvsKaehMnxqPCJdZ8EJUCFqBkCbJWRypGbv8jXt4Z4rMuNRnY3Hsc6v5pQ9TeA8WYdrRk4vGvXk6den7GKAmESuVkrYpqHzS8DdXdxqHSd6N', 9, 1526892699),
(18, 'xBJeBrTeAwDKHJXnGphaMnDKCYsev6Fb72QGEDRnTgdjZMT6HvkPgfx6nrWYdPy6yPPxAdFT4qEeacFcBXfRDxjMYek6PVhpTXEKqbqM7UYybZnFnP3eTaXRtrAAgrU4', 9, 1526892753),
(19, '6vpk6vY32Nae6bVx23G22buhPZHtCgq6aqYhEdsEP3ehSHmKxCeb2AS84VHGQwMw7GtD6hMFvEbHxDDnVBDGTm9k9eBkV82jWmPmqKY53EZx4XQmbWWBDvhU9WnkU88u', 9, 1526892779),
(20, 'Dp3sAz5Qt4GHtCTGkE7Tf2jRZZZGJu72dN9UDN3XKNggJFPrkK9xKUdaJsvstdYWFz7JAnSuVVHcU7Cxde4y8bYSkfTy4kHdZJXXqkzmYr3wVUh2Z6RXpPCWPs94wPkT', 9, 1526892857),
(21, 'Q4JehTkDY3k88nFgtdTbasUsYpc88SJSjeZHKnWjbz4HQGgxn76S5CthBBSUeTgjEP8A6dsmfuDFpqJbam9VRbTw8cq4egE8UK9RjtPMdK82Pv5bRY6mv6c8waPA74Wk', 9, 1526893294),
(22, 'Z52tq54z4ruJ8WgzpZVa3qn7Nw7uSb6UZKMtn5aJJtGQjMnkPnBms5rtVegKvG7RRQqQdragkSNhpYjt78bUH8mbWkjqZBZbAfVzWa2bMDM8jzaYgfCQSyahQPdsnSMS', 9, 1526893309),
(25, 'QqVYWhuDuNXHNpssH3wxAdhbgUm87yNBW9ch68GssvRMhGJuwHZhs2GrVyrCjPh5rKSvCSg8K67FaUrpFgRVEFtyW5SYSWaqhfVzxteGuxJurXuaeG5sfdCykuGcPXqC', 9, 1527274378),
(26, 'RdPDtnawx7aGkgNPxcwUpKhCAfB2pzrGt3cM4uUPSf2V9dvGAGQdryY6n7qrCd5MWdsfwXwu5NJwQy6XwA3UkHxXZk4cKeAdhNA8RQ2w9GmupfyAjQ7X7gXbwVAmKCY4', 9, 1527328059);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `target_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `target_url`) VALUES
(3, 'Handicrafts', 'http://localhost/cishop'),
(4, 'Crafts', 'http://localhost/cishop/');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `target_url` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `parent_id`, `target_url`, `picture`, `alt_text`) VALUES
(1, 3, '1', 'https://ps.w.org/slider-wd/assets/screenshot-1.jpg?rev=1265847', ''),
(9, 3, '', '', ''),
(10, 4, '', 'https://ps.w.org/slider-wd/assets/screenshot-1.jpg?rev=1265847', ''),
(11, 4, '', 'https://ps.w.org/slider-wd/assets/screenshot-1.jpg?rev=1265847', '');

-- --------------------------------------------------------

--
-- Table structure for table `store_accounts`
--

CREATE TABLE IF NOT EXISTS `store_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(65) NOT NULL,
  `company` varchar(150) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `town` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `telnum` varchar(30) NOT NULL,
  `email` varchar(65) NOT NULL,
  `date_made` int(11) NOT NULL,
  `pword` varchar(50) DEFAULT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_accounts`
--

INSERT INTO `store_accounts` (`id`, `username`, `firstname`, `lastname`, `company`, `address1`, `address2`, `town`, `country`, `postcode`, `telnum`, `email`, `date_made`, `pword`, `last_login`) VALUES
(1, 'Hamza Amin', 'Hamza', 'Amin', 'rex_solutions', 'asdfa', 'sfsafa', 'sdfasf', 'sfdasf', 'asfsaf', 'asdfsf', 'asfsadf@gmail.com', 1509818064, '$2y$11$eN3azK.fg1o8DuRFw2/sR.NkqPTZ2wkRKBYPTJdrKPq', 0),
(2, 'Hamza Khan', 'Hamza', 'Khan', '', '', '', '', '', '', '', 'hamzaamin889@gmail.com', 0, '$2y$11$us6r8Znsk0Yvr6xMsWqiaeRTF3E0gKFzxYA0IbEiggX', 0),
(9, 'admin', 'Hamza', 'Amin', 'rex_solutions', '', '', '', '', '', '', 'hamzajan@gmail.com', 0, 'password123456789', 1526636906);

-- --------------------------------------------------------

--
-- Table structure for table `store_basket`
--

CREATE TABLE IF NOT EXISTS `store_basket` (
  `id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tax` decimal(7,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(70) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_color` varchar(70) NOT NULL,
  `date_added` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `ip_address` int(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_basket`
--

INSERT INTO `store_basket` (`id`, `session_id`, `item_title`, `price`, `tax`, `item_id`, `item_size`, `item_qty`, `item_color`, `date_added`, `shopper_id`, `ip_address`) VALUES
(7, 'uv1l5p98pmk73phjon2j5pqelvjplhji', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526302564, 9, 0),
(8, 'cie1668s25ggr1a3kp1b3027ci8egasj', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526305543, 9, 0),
(39, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(40, 'o7jnnr05q2na0kgds59u1tjv989pjk99', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526595725, 0, 0),
(41, 'o7jnnr05q2na0kgds59u1tjv989pjk99', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526595922, 0, 0),
(42, 'o7jnnr05q2na0kgds59u1tjv989pjk99', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526595946, 0, 0),
(45, 'n06mpivld2c1nkge711bhu1abihr6j53', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 2, '', 1526596487, 0, 0),
(46, 'of0v2iape6c0k64ffofc7rjkksp0cld8', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526596823, 0, 0),
(47, 'r4rq36k1fvcgrgbbiip1is1q07v39lu7', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1530085102, 0, 0),
(48, '57fgeqap48aaofg7rev0koefhu5lm8rt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1530085707, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE IF NOT EXISTS `store_categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_url` varchar(255) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_url`, `parent_cat_id`, `priority`) VALUES
(1, 'Textiles ', 'Textiles', 0, 1),
(2, 'Pottery and Glass Crafts', 'Pottery-and-Glass-Crafts', 0, 2),
(3, 'Jewelry ', 'Jewelry', 0, 3),
(4, 'Wood Crafts', 'Wood-Crafts', 0, 4),
(5, 'Paper Crafts', 'Paper-Crafts', 0, 5),
(7, 'Sheets and Pillows', 'Sheets-and-Pillows', 1, 3),
(8, 'Blankets', 'Blankets', 1, 4),
(9, 'Carpets and Rugs', 'Carpets-and-Rugs', 1, 6),
(10, 'Table Clothes', 'Table-Clothes', 1, 8),
(11, 'Clothes', 'Clothes', 1, 7),
(12, 'Painting', 'Painting', 2, 0),
(13, 'Carving', 'Carving', 2, 0),
(14, 'Ceremic Glaze', 'Ceremic-Glaze', 2, 0),
(15, 'Burnishing', 'Burnishing', 2, 0),
(16, 'Lithography', 'Lithography', 2, 0),
(17, 'Scrap Booking', 'Scrap-Booking', 5, 0),
(18, 'Card Making', 'Card-Making', 5, 0),
(19, 'Paper Flowers', 'Paper-Flowers', 5, 2),
(20, 'Paper Cutting', 'Paper-Cutting', 5, 1),
(21, 'Book Binding', 'Book-Binding', 5, 3),
(22, 'Estate Jewelry', 'Estate-Jewelry', 3, 0),
(23, 'Vintage Jewelry', 'Vintage-Jewelry', 3, 0),
(24, 'Antique Jewelry', 'Antique-Jewelry', 3, 0),
(25, 'Wood Burning', 'Wood-Burning', 4, 0),
(26, 'Wood Carving', 'Wood-Carving', 4, 0),
(27, 'Wood Working', 'Wood-Working', 4, 0),
(28, 'Carpentry', 'Carpentry', 4, 0),
(29, 'Towels', 'Towels', 1, 5),
(33, 'Hand Embroidery', 'Hand-Embroidery', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_cat_assign`
--

CREATE TABLE IF NOT EXISTS `store_cat_assign` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_cat_assign`
--

INSERT INTO `store_cat_assign` (`id`, `cat_id`, `item_id`) VALUES
(3, 7, 5),
(5, 7, 1),
(6, 7, 2),
(7, 7, 3),
(9, 7, 4),
(10, 7, 6),
(11, 11, 7),
(12, 7, 7),
(13, 10, 7),
(15, 11, 8),
(16, 10, 8),
(17, 7, 8),
(21, 8, 11),
(25, 29, 12),
(26, 29, 13),
(27, 29, 14),
(28, 8, 10),
(29, 11, 15),
(30, 10, 15),
(31, 29, 15),
(32, 33, 15),
(33, 9, 16),
(34, 9, 17),
(35, 9, 18),
(36, 11, 19),
(37, 12, 20),
(38, 12, 21);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE IF NOT EXISTS `store_items` (
  `id` int(11) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `item_price` decimal(7,2) NOT NULL,
  `item_description` text NOT NULL,
  `big_pic` varchar(255) NOT NULL,
  `small_pic` varchar(255) NOT NULL,
  `was_price` decimal(7,2) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `status`) VALUES
(1, 'I will make beautiful bed sheets and pillows', 'I-will-make-beautiful-bed-sheets-and-pillows', '45.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sapien libero, tempus ac interdum in, congue sit amet lorem. Nulla accumsan massa erat, in volutpat tellus molestie a. In hac habitasse platea dictumst. Mauris ante nibh, dignissim ac ullamcorper in, sodales ac magna. Pellentesque sodales ipsum auctor justo finibus, non mattis nisl euismod. Morbi maximus nunc at tincidunt varius. Nam sodales ipsum magna. In nibh mi, consequat facilisis aliquet eget, volutpat vel est. Aenean condimentum accumsan sem sit amet dignissim. Sed id nisl facilisis metus finibus tincidunt et id risus. Suspendisse tempor diam nisi, vitae dapibus quam tincidunt vel. Curabitur in ipsum dui. Nunc cursus lorem ac ligula vehicula dictum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>In molestie, magna quis porttitor maximus, felis nisl ullamcorper mauris, eget dignissim risus risus nec dolor. Nam nec lorem eu lacus mollis aliquet. Integer justo ligula, laoreet ac consectetur non, facilisis non lorem. Cras ullamcorper congue dapibus. Quisque ac ligula tortor. Suspendisse maximus ullamcorper magna, sed luctus erat commodo quis. Maecenas neque ex, sollicitudin eget hendrerit ac, feugiat eu libero. Aenean quis lorem risus. Morbi at libero quis leo sodales facilisis vitae nec lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras maximus dictum sodales. Sed vel lacinia dui. Phasellus aliquam aliquet porttitor. Nunc rhoncus turpis vitae enim placerat pharetra.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Sed efficitur, urna eu auctor congue, odio felis vehicula ante, a mollis nibh dolor sit amet est. Duis semper in orci vitae aliquam. Donec dapibus sed sapien nec cursus. Proin id neque lectus. Quisque egestas quis urna sed pretium. Nam mauris tortor, elementum et blandit in, scelerisque non tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus porttitor metus neque, eu placerat justo volutpat in.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Fusce ut iaculis turpis. Donec a consectetur risus. Aenean faucibus suscipit enim, a sodales lacus suscipit quis. Aliquam sapien tortor, cursus vel semper nec, dignissim eget nisi. Nullam feugiat turpis eros, vel scelerisque purus porta sed. Maecenas at dolor vulputate, finibus nunc in, sollicitudin augue. Sed ultricies lorem orci, a tincidunt quam pharetra sed.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Maecenas in arcu id odio semper commodo sed non diam. Suspendisse hendrerit leo a lobortis fringilla. Mauris sit amet sapien et tortor congue facilisis. Vivamus non massa ut sapien faucibus egestas ac at justo. Cras vel rutrum enim. Etiam vitae velit tempus, facilisis nibh vitae, lobortis turpis. Mauris euismod, purus id mollis consequat, erat est consequat mauris, id gravida purus dui id orci. Nunc ac ipsum augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur fermentum quam vitae tellus sodales varius a eu mauris.</span></font></div>                                                            ', 'pillow_sizes_blog_image_pillowsonbed.jpg', 'pillow_sizes_blog_image_pillowsonbed.jpg', '60.00', 1),
(2, 'I will make shopping style bedding pillows on bed', 'I-will-make-shopping-style-bedding-pillows-on-bed', '70.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>In molestie, magna quis porttitor maximus, felis nisl ullamcorper mauris, eget dignissim risus risus nec dolor. Nam nec lorem eu lacus mollis aliquet. Integer justo ligula, laoreet ac consectetur non, facilisis non lorem. Cras ullamcorper congue dapibus. Quisque ac ligula tortor. Suspendisse maximus ullamcorper magna, sed luctus erat commodo quis. Maecenas neque ex, sollicitudin eget hendrerit ac, feugiat eu libero. Aenean quis lorem risus. Morbi at libero quis leo sodales facilisis vitae nec lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras maximus dictum sodales. Sed vel lacinia dui. Phasellus aliquam aliquet porttitor. Nunc rhoncus turpis vitae enim placerat pharetra.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Sed efficitur, urna eu auctor congue, odio felis vehicula ante, a mollis nibh dolor sit amet est. Duis semper in orci vitae aliquam. Donec dapibus sed sapien nec cursus. Proin id neque lectus. Quisque egestas quis urna sed pretium. Nam mauris tortor, elementum et blandit in, scelerisque non tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus porttitor metus neque, eu placerat justo volutpat in.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Fusce ut iaculis turpis. Donec a consectetur risus. Aenean faucibus suscipit enim, a sodales lacus suscipit quis. Aliquam sapien tortor, cursus vel semper nec, dignissim eget nisi. Nullam feugiat turpis eros, vel scelerisque purus porta sed. Maecenas at dolor vulputate, finibus nunc in, sollicitudin augue. Sed ultricies lorem orci, a tincidunt quam pharetra sed.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Maecenas in arcu id odio semper commodo sed non diam. Suspendisse hendrerit leo a lobortis fringilla. Mauris sit amet sapien et tortor congue facilisis. Vivamus non massa ut sapien faucibus egestas ac at justo. Cras vel rutrum enim. Etiam vitae velit tempus, facilisis nibh vitae, lobortis turpis. Mauris euismod, purus id mollis consequat, erat est consequat mauris, id gravida purus dui id orci. Nunc ac ipsum augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur fermentum quam vitae tellus sodales varius a eu mauris.</span></font></div>                                                            ', 'shopping-style-bedding-pillows-on-bed.jpg', 'shopping-style-bedding-pillows-on-bed.jpg', '110.00', 1),
(3, 'I will design high quality bed sheet pillow covers and sheet pillows ', 'I-will-design-high-quality-bed-sheet-pillow-covers-and-sheet-pillows', '110.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. At erat pellentesque adipiscing commodo elit at. Semper feugiat nibh sed pulvinar proin gravida. Vulputate dignissim suspendisse in est ante in nibh. Venenatis tellus in metus vulputate eu scelerisque felis. Placerat vestibulum lectus mauris ultrices eros in. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Elit eget gravida cum sociis natoque penatibus et magnis dis. Feugiat in ante metus dictum at. Vitae tempus quam pellentesque nec nam aliquam sem et tortor. Nunc sed augue lacus viverra vitae congue eu. Maecenas ultricies mi eget mauris pharetra et ultrices neque ornare. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis natoque. Volutpat ac tincidunt vitae semper quis lectus nulla. Cras tincidunt lobortis feugiat vivamus at augue. Faucibus purus in massa tempor nec feugiat nisl pretium. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Nunc mattis enim ut tellus elementum sagittis vitae et leo. Amet massa vitae tortor condimentum. Diam donec adipiscing tristique risus nec feugiat in fermentum. Laoreet suspendisse interdum consectetur libero. Diam in arcu cursus euismod quis viverra nibh. Orci dapibus ultrices in iaculis nunc sed. Condimentum id venenatis a condimentum vitae sapien. Nisl condimentum id venenatis a condimentum. Consectetur adipiscing elit ut aliquam. Euismod in pellentesque massa placerat duis ultricies lacus. Pharetra sit amet aliquam id diam maecenas. In hac habitasse platea dictumst vestibulum rhoncus. Ligula ullamcorper malesuada proin libero nunc consequat interdum. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Mattis rhoncus urna neque viverra justo nec ultrices dui. Venenatis urna cursus eget nunc scelerisque viverra mauris.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Et odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Sem fringilla ut morbi tincidunt augue interdum velit. Felis imperdiet proin fermentum leo vel orci. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Vel facilisis volutpat est velit. Vel turpis nunc eget lorem dolor sed viverra ipsum nunc. Fames ac turpis egestas sed tempus. Platea dictumst quisque sagittis purus sit amet volutpat consequat mauris. Vestibulum sed arcu non odio euismod lacinia at. Diam quam nulla porttitor massa. Velit laoreet id donec ultrices tincidunt arcu non sodales. Enim nec dui nunc mattis. Diam volutpat commodo sed egestas egestas fringilla. Commodo nulla facilisi nullam vehicula ipsum a arcu. Velit laoreet id donec ultrices tincidunt arcu non. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est. Id aliquet risus feugiat in.</span></font></div>                                                            ', 'bed-sheet-pillow-cover-and-wholesale-500x500-sheets-pillows.jpg', 'bed-sheet-pillow-cover-and-wholesale-500x500-sheets-pillows.jpg', '0.00', 1),
(4, 'I will provide Hi Res Pillow Group designs', 'I-will-provide-Hi-Res-Pillow-Group-designs', '5000.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Rutrum quisque non tellus orci ac. Sed tempus urna et pharetra. Nisi vitae suscipit tellus mauris a. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Proin libero nunc consequat interdum. Eu lobortis elementum nibh tellus molestie nunc non blandit. Sit amet luctus venenatis lectus magna fringilla urna porttitor rhoncus. Id aliquet lectus proin nibh nisl. At erat pellentesque adipiscing commodo elit at. Malesuada nunc vel risus commodo viverra. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Quisque non tellus orci ac auctor augue mauris augue neque. Eget mauris pharetra et ultrices neque ornare. Odio ut sem nulla pharetra. Elementum nibh tellus molestie nunc non.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Tellus orci ac auctor augue mauris augue neque. Arcu bibendum at varius vel pharetra vel. Morbi blandit cursus risus at ultrices mi. Id aliquet lectus proin nibh. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Commodo nulla facilisi nullam vehicula ipsum. Tincidunt tortor aliquam nulla facilisi cras fermentum. Praesent tristique magna sit amet. Dictum sit amet justo donec enim diam vulputate. Massa tincidunt dui ut ornare lectus sit amet est. Vestibulum sed arcu non odio euismod lacinia at quis risus. Sollicitudin tempor id eu nisl nunc. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. Tellus cras adipiscing enim eu turpis.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Ultrices eros in cursus turpis massa tincidunt dui. Enim neque volutpat ac tincidunt vitae semper quis lectus. At risus viverra adipiscing at in tellus integer. Turpis tincidunt id aliquet risus. Arcu dui vivamus arcu felis. A erat nam at lectus. Tempus egestas sed sed risus pretium quam vulputate. Aenean sed adipiscing diam donec adipiscing tristique. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Odio facilisis mauris sit amet massa vitae tortor. Volutpat diam ut venenatis tellus. Quis blandit turpis cursus in hac habitasse platea. Ante in nibh mauris cursus mattis molestie a iaculis. Maecenas ultricies mi eget mauris pharetra et ultrices. Egestas congue quisque egestas diam. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pretium nibh ipsum consequat nisl vel. Amet mauris commodo quis imperdiet.</span></font></div>                                                            ', 'Hi_Res_Pillow_Group_6-HP.jpg', 'Hi_Res_Pillow_Group_6-HP.jpg', '6000.00', 1),
(5, 'I will make beautiful bed sheets and pillows designs', 'I-will-make-beautiful-bed-sheets-and-pillows-designs', '4201.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sapien libero, tempus ac interdum in, congue sit amet lorem. Nulla accumsan massa erat, in volutpat tellus molestie a. In hac habitasse platea dictumst. Mauris ante nibh, dignissim ac ullamcorper in, sodales ac magna. Pellentesque sodales ipsum auctor justo finibus, non mattis nisl euismod. Morbi maximus nunc at tincidunt varius. Nam sodales ipsum magna. In nibh mi, consequat facilisis aliquet eget, volutpat vel est. Aenean condimentum accumsan sem sit amet dignissim. Sed id nisl facilisis metus finibus tincidunt et id risus. Suspendisse tempor diam nisi, vitae dapibus quam tincidunt vel. Curabitur in ipsum dui. Nunc cursus lorem ac ligula vehicula dictum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>In molestie, magna quis porttitor maximus, felis nisl ullamcorper mauris, eget dignissim risus risus nec dolor. Nam nec lorem eu lacus mollis aliquet. Integer justo ligula, laoreet ac consectetur non, facilisis non lorem. Cras ullamcorper congue dapibus. Quisque ac ligula tortor. Suspendisse maximus ullamcorper magna, sed luctus erat commodo quis. Maecenas neque ex, sollicitudin eget hendrerit ac, feugiat eu libero. Aenean quis lorem risus. Morbi at libero quis leo sodales facilisis vitae nec lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras maximus dictum sodales. Sed vel lacinia dui. Phasellus aliquam aliquet porttitor. Nunc rhoncus turpis vitae enim placerat pharetra.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Sed efficitur, urna eu auctor congue, odio felis vehicula ante, a mollis nibh dolor sit amet est. Duis semper in orci vitae aliquam. Donec dapibus sed sapien nec cursus. Proin id neque lectus. Quisque egestas quis urna sed pretium. Nam mauris tortor, elementum et blandit in, scelerisque non tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus porttitor metus neque, eu placerat justo volutpat in.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Fusce ut iaculis turpis. Donec a consectetur risus. Aenean faucibus suscipit enim, a sodales lacus suscipit quis. Aliquam sapien tortor, cursus vel semper nec, dignissim eget nisi. Nullam feugiat turpis eros, vel scelerisque purus porta sed. Maecenas at dolor vulputate, finibus nunc in, sollicitudin augue. Sed ultricies lorem orci, a tincidunt quam pharetra sed.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Maecenas in arcu id odio semper commodo sed non diam. Suspendisse hendrerit leo a lobortis fringilla. Mauris sit amet sapien et tortor congue facilisis. Vivamus non massa ut sapien faucibus egestas ac at justo. Cras vel rutrum enim. Etiam vitae velit tempus, facilisis nibh vitae, lobortis turpis. Mauris euismod, purus id mollis consequat, erat est consequat mauris, id gravida purus dui id orci. Nunc ac ipsum augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur fermentum quam vitae tellus sodales varius a eu mauris.</span></font></div>                                                            ', '308172xcitefun-with-blanket-pillow-an.jpg', '308172xcitefun-with-blanket-pillow-an.jpg', '5873.00', 1),
(6, 'I will design high quality bed sheet pillow covers', 'I-will-design-high-quality-bed-sheet-pillow-covers', '6732.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sapien libero, tempus ac interdum in, congue sit amet lorem. Nulla accumsan massa erat, in volutpat tellus molestie a. In hac habitasse platea dictumst. Mauris ante nibh, dignissim ac ullamcorper in, sodales ac magna. Pellentesque sodales ipsum auctor justo finibus, non mattis nisl euismod. Morbi maximus nunc at tincidunt varius. Nam sodales ipsum magna. In nibh mi, consequat facilisis aliquet eget, volutpat vel est. Aenean condimentum accumsan sem sit amet dignissim. Sed id nisl facilisis metus finibus tincidunt et id risus. Suspendisse tempor diam nisi, vitae dapibus quam tincidunt vel. Curabitur in ipsum dui. Nunc cursus lorem ac ligula vehicula dictum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>In molestie, magna quis porttitor maximus, felis nisl ullamcorper mauris, eget dignissim risus risus nec dolor. Nam nec lorem eu lacus mollis aliquet. Integer justo ligula, laoreet ac consectetur non, facilisis non lorem. Cras ullamcorper congue dapibus. Quisque ac ligula tortor. Suspendisse maximus ullamcorper magna, sed luctus erat commodo quis. Maecenas neque ex, sollicitudin eget hendrerit ac, feugiat eu libero. Aenean quis lorem risus. Morbi at libero quis leo sodales facilisis vitae nec lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras maximus dictum sodales. Sed vel lacinia dui. Phasellus aliquam aliquet porttitor. Nunc rhoncus turpis vitae enim placerat pharetra.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Sed efficitur, urna eu auctor congue, odio felis vehicula ante, a mollis nibh dolor sit amet est. Duis semper in orci vitae aliquam. Donec dapibus sed sapien nec cursus. Proin id neque lectus. Quisque egestas quis urna sed pretium. Nam mauris tortor, elementum et blandit in, scelerisque non tortor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus porttitor metus neque, eu placerat justo volutpat in.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Fusce ut iaculis turpis. Donec a consectetur risus. Aenean faucibus suscipit enim, a sodales lacus suscipit quis. Aliquam sapien tortor, cursus vel semper nec, dignissim eget nisi. Nullam feugiat turpis eros, vel scelerisque purus porta sed. Maecenas at dolor vulputate, finibus nunc in, sollicitudin augue. Sed ultricies lorem orci, a tincidunt quam pharetra sed.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Maecenas in arcu id odio semper commodo sed non diam. Suspendisse hendrerit leo a lobortis fringilla. Mauris sit amet sapien et tortor congue facilisis. Vivamus non massa ut sapien faucibus egestas ac at justo. Cras vel rutrum enim. Etiam vitae velit tempus, facilisis nibh vitae, lobortis turpis. Mauris euismod, purus id mollis consequat, erat est consequat mauris, id gravida purus dui id orci. Nunc ac ipsum augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur fermentum quam vitae tellus sodales varius a eu mauris.</span></font></div>                                                            ', 'bed-sheet-pillow-cover-and-wholesale-500x500-sheets-pillows1.jpg', 'bed-sheet-pillow-cover-and-wholesale-500x500-sheets-pillows1.jpg', '10000.00', 1),
(7, 'I will do trendy ribbon work with high quality designs', 'I-will-do-trendy-ribbon-work-with-high-quality-designs', '763.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Porttitor rhoncus. Id aliquet lectus proin nibh nisl. At erat pellentesque adipiscing commodo elit at. Malesuada nunc vel risus commodo viverra. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Quisque non tellus orci ac auctor augue mauris augue neque. Eget mauris pharetra et ultrices neque ornare. Odio ut sem nulla pharetra. Elementum nibh tellus molestie nunc non.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Tellus orci ac auctor augue mauris augue neque. Arcu bibendum at varius vel pharetra vel. Morbi blandit cursus risus at ultrices mi. Id aliquet lectus proin nibh. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Commodo nulla facilisi nullam vehicula ipsum. Tincidunt tortor aliquam nulla facilisi cras fermentum. Praesent tristique magna sit amet. Dictum sit amet justo donec enim diam vulputate. Massa tincidunt dui ut ornare lectus sit amet est. Vestibulum sed arcu non odio euismod lacinia at quis risus. Sollicitudin tempor id eu nisl nunc. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. Tellus cras adipiscing enim eu turpis.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Ultrices eros in cursus turpis massa tincidunt dui. Enim neque volutpat ac tincidunt vitae semper quis lectus. At risus viverra adipiscing at in tellus integer. Turpis tincidunt id aliquet risus. Arcu dui vivamus arcu felis. A erat nam at lectus. Tempus egestas sed sed risus pretium quam vulputate. Aenean sed adipiscing diam donec adipiscing tristique. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Odio facilisis mauris sit amet massa vitae tortor. Volutpat diam ut venenatis tellus. Quis blandit turpis cursus in hac habitasse platea. Ante in nibh mauris cursus mattis molestie a iaculis. Maecenas ultricies mi eget mauris pharetra et ultrices. Egestas congue quisque egestas diam. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pretium nibh ipsum consequat nisl vel. Amet mauris commodo quis imperdiet.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div>                                                            ', '1-500x500.jpg', '1-500x500.jpg', '999.00', 1),
(8, 'I will do beautiful ribbon embroidery work', 'I-will-do-beautiful-ribbon-embroidery-work', '6666.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Diam donec adipiscing tristique risus nec feugiat in. Pharetra convallis posuere morbi leo. Nec nam aliquam sem et tortor consequat. Ornare arcu odio ut sem nulla pharetra diam sit amet. Malesuada bibendum arcu vitae elementum curabitur. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ultricies integer quis auctor elit. Dolor sit amet consectetur adipiscing elit.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Non consectetur a erat nam at lectus urna duis convallis. Vel turpis nunc eget lorem dolor sed viverra ipsum. Etiam dignissim diam quis enim lobortis. Amet consectetur adipiscing elit ut aliquam. Dui id ornare arcu odio ut sem nulla pharetra diam. In vitae turpis massa sed. Facilisis gravida neque convallis a cras semper auctor neque. Faucibus vitae aliquet nec ullamcorper sit. Ornare lectus sit amet est placerat in egestas erat imperdiet. In hac habitasse platea dictumst quisque.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Et malesuada fames ac turpis egestas integer eget. Nunc eget lorem dolor sed. Urna et pharetra pharetra massa massa ultricies. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Turpis cursus in hac habitasse. Non curabitur gravida arcu ac. Felis eget velit aliquet sagittis id consectetur purus ut. Malesuada proin libero nunc consequat interdum. Cursus vitae congue mauris rhoncus aenean vel. Praesent tristique magna sit amet. Velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Magnis dis parturient montes nascetur ridiculus mus mauris. Purus semper eget duis at tellus at urna.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Viverra vitae congue eu consequat. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Odio eu feugiat pretium nibh. Lectus sit amet est placerat in. Semper auctor neque vitae tempus quam pellentesque nec nam aliquam. Scelerisque viverra mauris in aliquam sem fringilla ut morbi. Scelerisque in dictum non consectetur. Est sit amet facilisis magna etiam tempor orci eu lobortis. Massa tincidunt nunc pulvinar sapien. Venenatis urna cursus eget nunc scelerisque viverra mauris. Habitant morbi tristique senectus et netus et malesuada fames. Pellentesque id nibh tortor id. Eget nunc lobortis mattis aliquam faucibus. Tincidunt augue interdum velit euismod in pellentesque. Non nisi est sit amet facilisis magna etiam tempor. Lacus vel facilisis volutpat est velit</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div>                                                            ', '7cfc8427fdf6475e1858b6cd07617d63.jpg', '7cfc8427fdf6475e1858b6cd07617d63.jpg', '7779.00', 1),
(9, 'I will create beautiful ribbon designs', 'I-will-create-beautiful-ribbon-designs', '1200.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae suscipit tellus mauris a diam maecenas sed enim. Eu augue ut lectus arcu. Iaculis urna id volutpat lacus laoreet non curabitur. Hendrerit gravida rutrum quisque non tellus orci ac. Nam at lectus urna duis convallis convallis tellus id. Lorem dolor sed viverra ipsum nunc. Amet consectetur adipiscing elit ut. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Amet volutpat consequat mauris nunc congue nisi vitae suscipit. Quam vulputate dignissim suspendisse in est ante in nibh. Aenean sed adipiscing diam donec adipiscing. Proin sed libero enim sed faucibus turpis. Nulla porttitor massa id neque aliquam. Venenatis cras sed felis eget. Aliquam ut porttitor leo a diam sollicitudin. Elit at imperdiet dui accumsan sit amet nulla. Malesuada fames ac turpis egestas. Nisi porta lorem mollis aliquam. Purus faucibus ornare suspendisse sed. Faucibus nisl tincidunt eget nullam non nisi est.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Proin sed libero enim sed. A diam sollicitudin tempor id eu nisl. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Ante metus dictum at tempor commodo. Mus mauris vitae ultricies leo integer. Vitae et leo duis ut diam quam. Placerat in egestas erat imperdiet sed euismod. Diam ut venenatis tellus in metus. Consectetur adipiscing elit duis tristique. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Est ullamcorper eget nulla facilisi etiam dignissim diam.</span></font></div>                                                            ', 'f32f370fae919fedcef0d8a85a52f61c--ribbon-work-ribbon-embroidery.jpg', 'f32f370fae919fedcef0d8a85a52f61c--ribbon-work-ribbon-embroidery.jpg', '0.00', 1),
(10, 'I will make high quality double ply blankets', 'I-will-make-high-quality-double-ply-blankets', '7000.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae suscipit tellus mauris a diam maecenas sed enim. Eu augue ut lectus arcu. Iaculis urna id volutpat lacus laoreet non curabitur. Hendrerit gravida rutrum quisque non tellus orci ac. Nam at lectus urna duis convallis convallis tellus id. Lorem dolor sed viverra ipsum nunc. Amet consectetur adipiscing elit ut. Vitae justo eget magna fermentum iaculis eu non diam phasellus. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Amet volutpat consequat mauris nunc congue nisi vitae suscipit. Quam vulputate dignissim suspendisse in est ante in nibh. Aenean sed adipiscing diam donec adipiscing. Proin sed libero enim sed faucibus turpis. Nulla porttitor massa id neque aliquam. Venenatis cras sed felis eget. Aliquam ut porttitor leo a diam sollicitudin. Elit at imperdiet dui accumsan sit amet nulla. Malesuada fames ac turpis egestas. Nisi porta lorem mollis aliquam. Purus faucibus ornare suspendisse sed. Faucibus nisl tincidunt eget nullam non nisi est.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Proin sed libero enim sed. A diam sollicitudin tempor id eu nisl. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Ante metus dictum at tempor commodo. Mus mauris vitae ultricies leo integer. Vitae et leo duis ut diam quam. Placerat in egestas erat imperdiet sed euismod. Diam ut venenatis tellus in metus. Consectetur adipiscing elit duis tristique. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Est ullamcorper eget nulla facilisi etiam dignissim diam.</span></font></div>                                                            ', 'double-ply-mink-blankets-500x500.jpg', 'double-ply-mink-blankets-500x500.jpg', '8576.00', 1),
(11, 'I will make faux fur throw blankets ', 'I-will-make-faux-fur-throw-blankets', '7564.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique risus nec feugiat in fermentum. Et odio pellentesque diam volutpat commodo sed. Convallis aenean et tortor at risus viverra adipiscing at in. Ut venenatis tellus in metus. Sem viverra aliquet eget sit amet tellus cras adipiscing. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lacus luctus accumsan tortor posuere ac ut consequat semper. Odio ut enim blandit volutpat maecenas. Tincidunt ornare massa eget egestas purus viverra. Praesent semper feugiat nibh sed pulvinar. Vitae semper quis lectus nulla at volutpat diam ut.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Morbi tristique senectus et netus et malesuada fames ac. Augue neque gravida in fermentum et sollicitudin. Mattis vulputate enim nulla aliquet. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Velit aliquet sagittis id consectetur purus. Sed risus pretium quam vulputate dignissim suspendisse in. Ultrices dui sapien eget mi proin sed libero. Eget nulla facilisi etiam dignissim diam quis. Magna etiam tempor orci eu lobortis. Gravida neque convallis a cras semper auctor neque.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Nascetur ridiculus mus mauris vitae ultricies leo. Est velit egestas dui id ornare arcu odio ut sem. Eu sem integer vitae justo eget magna. Nisi porta lorem mollis aliquam ut. Penatibus et magnis dis parturient. Purus non enim praesent elementum. Consectetur purus ut faucibus pulvinar elementum. Ac odio tempor orci dapibus ultrices in iaculis nunc sed. Mattis aliquam faucibus purus in massa tempor nec. Est ultricies integer quis auctor elit sed. Semper viverra nam libero justo laoreet. Consectetur a erat nam at lectus urna duis convallis. Non sodales neque sodales ut. Ultrices sagittis orci a scelerisque purus. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Auctor elit sed vulputate mi sit. Eget nulla facilisi etiam dignissim diam. Urna id volutpat lacus laoreet non curabitur gravida arcu ac.</span></font></div>                                                            ', 'faux-fur-throw-c.jpg', 'faux-fur-throw-c.jpg', '8999.00', 1),
(12, 'I will create stunning terry towels', 'I-will-create-stunning-terry-towels', '1300.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique risus nec feugiat in fermentum. Et odio pellentesque diam volutpat commodo sed. Convallis aenean et tortor at risus viverra adipiscing at in. Ut venenatis tellus in metus. Sem viverra aliquet eget sit amet tellus cras adipiscing. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lacus luctus accumsan tortor posuere ac ut consequat semper. Odio ut enim blandit volutpat maecenas. Tincidunt ornare massa eget egestas purus viverra. Praesent semper feugiat nibh sed pulvinar. Vitae semper quis lectus nulla at volutpat diam ut.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Morbi tristique senectus et netus et malesuada fames ac. Augue neque gravida in fermentum et sollicitudin. Mattis vulputate enim nulla aliquet. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Velit aliquet sagittis id consectetur purus. Sed risus pretium quam vulputate dignissim suspendisse in. Ultrices dui sapien eget mi proin sed libero. Eget nulla facilisi etiam dignissim diam quis. Magna etiam tempor orci eu lobortis. Gravida neque convallis a cras semper auctor neque.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Nascetur ridiculus mus mauris vitae ultricies leo. Est velit egestas dui id ornare arcu odio ut sem. Eu sem integer vitae justo eget magna. Nisi porta lorem mollis aliquam ut. Penatibus et magnis dis parturient. Purus non enim praesent elementum. Consectetur purus ut faucibus pulvinar elementum. Ac odio tempor orci dapibus ultrices in iaculis nunc sed. Mattis aliquam faucibus purus in massa tempor nec. Est ultricies integer quis auctor elit sed. Semper viverra nam libero justo laoreet. Consectetur a erat nam at lectus urna duis convallis. Non sodales neque sodales ut. Ultrices sagittis orci a scelerisque purus. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Auctor elit sed vulputate mi sit. Eget nulla facilisi etiam dignissim diam. Urna id volutpat lacus laoreet non curabitur gravida arcu ac.</span></font></div>                                                            ', 'hcg45-terry-towels-500x500.jpg', 'hcg45-terry-towels-500x500.jpg', '0.00', 1),
(13, 'I will make high quality hand made towels', 'I-will-make-high-quality-hand-made-towels', '6985.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est lorem ipsum dolor sit amet. Egestas congue quisque egestas diam in arcu cursus. Id consectetur purus ut faucibus pulvinar elementum integer. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Elementum facilisis leo vel fringilla. Ac ut consequat semper viverra nam libero. Suspendisse faucibus interdum posuere lorem ipsum. Tempor orci eu lobortis elementum nibh. Mattis vulputate enim nulla aliquet porttitor lacus. Accumsan sit amet nulla facilisi. Feugiat nibh sed pulvinar proin gravida hendrerit. Hac habitasse platea dictumst vestibulum rhoncus est. Interdum velit euismod in pellentesque massa.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Nec feugiat nisl pretium fusce id velit. In cursus turpis massa tincidunt. Eu feugiat pretium nibh ipsum consequat nisl vel pretium. Pharetra convallis posuere morbi leo urna molestie at. Convallis convallis tellus id interdum velit. Quis lectus nulla at volutpat diam. Vel eros donec ac odio tempor orci dapibus. In arcu cursus euismod quis viverra nibh cras. Mauris a diam maecenas sed enim ut sem viverra. Viverra adipiscing at in tellus integer feugiat. A diam maecenas sed enim ut sem viverra aliquet. Quam id leo in vitae. Orci ac auctor augue mauris.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Quisque non tellus orci ac. Nunc vel risus commodo viverra maecenas accumsan lacus vel facilisis. Nibh sed pulvinar proin gravida. Sodales ut eu sem integer vitae justo eget magna fermentum. Scelerisque felis imperdiet proin fermentum leo vel orci porta non. Sed augue lacus viverra vitae congue eu consequat ac. Adipiscing at in tellus integer feugiat scelerisque varius. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. At auctor urna nunc id cursus metus aliquam eleifend. Accumsan lacus vel facilisis volutpat est velit egestas. Nisl nisi scelerisque eu ultrices vitae auctor eu.</span></font></div>                                                            ', 'terry-towel-500x500.png', 'terry-towel-500x500.png', '7000.00', 1),
(14, 'I will make outstanding towels within no time', 'I-will-make-outstanding-towels-within-no-time', '1000.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nulla facilisi etiam dignissim. Elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi. Varius morbi enim nunc faucibus a. Volutpat consequat mauris nunc congue nisi vitae suscipit. Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Enim tortor at auctor urna nunc id cursus metus. Sed vulputate odio ut enim blandit volutpat maecenas. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. Volutpat diam ut venenatis tellus in metus.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Massa tincidunt dui ut ornare lectus sit. Vel fringilla est ullamcorper eget nulla. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Bibendum ut tristique et egestas quis. Egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam. Mauris nunc congue nisi vitae. Vivamus arcu felis bibendum ut tristique et. Accumsan tortor posuere ac ut consequat semper. Et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Morbi tristique senectus et netus et malesuada fames. Aliquam purus sit amet luctus venenatis lectus magna fringilla. Quam quisque id diam vel quam elementum pulvinar etiam. Sed augue lacus viverra vitae congue.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Laoreet non curabitur gravida arcu ac tortor dignissim convallis. Convallis posuere morbi leo urna molestie. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Nisi scelerisque eu ultrices vitae auctor eu. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Convallis aenean et tortor at risus. Consequat nisl vel pretium lectus quam id leo in vitae. Amet nulla facilisi morbi tempus iaculis urna. Eu sem integer vitae justo eget magna fermentum iaculis eu. Tincidunt augue interdum velit euismod in pellentesque massa. Cras sed felis eget velit aliquet sagittis id consectetur purus. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Semper quis lectus nulla at volutpat diam. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. Non sodales neque sodales ut etiam sit. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Molestie at elementum eu facilisis sed.</span></font></div>                                                            ', 'terry-8.jpg', 'terry-8.jpg', '0.00', 1),
(15, 'I will do hand embroidery on table clothes', 'I-will-do-hand-embroidery-on-table-clothes', '1400.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non odio euismod lacinia at quis risus sed vulputate odio. Quis hendrerit dolor magna eget est. Viverra accumsan in nisl nisi scelerisque eu. Orci nulla pellentesque dignissim enim sit amet venenatis urna. Turpis massa tincidunt dui ut ornare. Purus ut faucibus pulvinar elementum integer enim neque volutpat ac. Tortor at auctor urna nunc id cursus metus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet. Risus commodo viverra maecenas accumsan lacus. Nulla facilisi etiam dignissim diam. Sit amet dictum sit amet justo donec enim. Tempor orci dapibus ultrices in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Leo duis ut diam quam nulla porttitor massa. Euismod lacinia at quis risus sed vulputate. Tristique et egestas quis ipsum.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Etiam non quam lacus suspendisse faucibus. Amet purus gravida quis blandit. In pellentesque massa placerat duis ultricies lacus sed. Tempor commodo ullamcorper a lacus. Velit laoreet id donec ultrices tincidunt. Sit amet consectetur adipiscing elit ut aliquam. Elit sed vulputate mi sit. Ut sem nulla pharetra diam. At auctor urna nunc id cursus metus. Elit duis tristique sollicitudin nibh sit amet commodo. Vel turpis nunc eget lorem.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Imperdiet nulla malesuada pellentesque elit eget gravida. Morbi non arcu risus quis varius quam quisque. Mi sit amet mauris commodo quis. Id velit ut tortor pretium viverra suspendisse. Arcu vitae elementum curabitur vitae. At augue eget arcu dictum. In vitae turpis massa sed elementum. Ante metus dictum at tempor commodo ullamcorper a. Morbi tincidunt ornare massa eget. Justo donec enim diam vulputate ut pharetra sit amet. Egestas sed sed risus pretium quam vulputate dignissim suspendisse in. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum.</span></font></div>                                                            ', '648662895_145.jpg', '648662895_145.jpg', '0.00', 1),
(16, 'I will provide hand made carpets and rugs', 'I-will-provide-hand-made-carpets-and-rugs', '5632.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget magna fermentum iaculis eu non. Accumsan tortor posuere ac ut consequat semper viverra nam libero. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Malesuada bibendum arcu vitae elementum. Mi eget mauris pharetra et. Ut diam quam nulla porttitor massa. Sed libero enim sed faucibus. Phasellus egestas tellus rutrum tellus. Pulvinar elementum integer enim neque volutpat ac. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Consectetur lorem donec massa sapien faucibus. Vitae et leo duis ut diam quam. Turpis nunc eget lorem dolor.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>In nibh mauris cursus mattis molestie a iaculis. Sed viverra ipsum nunc aliquet bibendum enim facilisis. Diam volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Posuere urna nec tincidunt praesent semper. Orci ac auctor augue mauris augue neque gravida. Sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Tellus id interdum velit laoreet. Semper risus in hendrerit gravida rutrum quisque non. Sed velit dignissim sodales ut eu sem. Volutpat ac tincidunt vitae semper quis lectus. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Diam sollicitudin tempor id eu nisl nunc mi ipsum. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Integer eget aliquet nibh praesent tristique magna sit amet purus. Nunc mattis enim ut tellus elementum sagittis vitae. Fringilla phasellus faucibus scelerisque eleifend. Tempor nec feugiat nisl pretium fusce. Nisl tincidunt eget nullam non nisi est sit. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Ut enim blandit volutpat maecenas. Eget sit amet tellus cras. Mauris nunc congue nisi vitae suscipit. Sed faucibus turpis in eu. Aliquam ut porttitor leo a diam sollicitudin. Id diam vel quam elementum pulvinar etiam. Nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi. Ornare lectus sit amet est placerat in. Est placerat in egestas erat. Quis commodo odio aenean sed adipiscing. Amet aliquam id diam maecenas.</span></font></div>                                                            ', 'Turkish_rugs_and_carpets_res.jpg', 'Turkish_rugs_and_carpets_res.jpg', '9999.00', 1);
INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `status`) VALUES
(17, 'I will make astonishing carpets and beautiful rugs', 'I-will-make-astonishing-carpets-and-beautiful-rugs', '6753.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis elementum nibh tellus molestie nunc non blandit massa. Etiam non quam lacus suspendisse. Sed libero enim sed faucibus turpis in eu. Magna ac placerat vestibulum lectus mauris ultrices eros. Odio tempor orci dapibus ultrices in. Est pellentesque elit ullamcorper dignissim. Ultrices in iaculis nunc sed augue lacus. Sit amet nulla facilisi morbi tempus iaculis. Quis blandit turpis cursus in hac habitasse platea. Egestas pretium aenean pharetra magna ac placerat vestibulum. Sed enim ut sem viverra aliquet eget. Facilisis sed odio morbi quis commodo odio aenean sed. Convallis tellus id interdum velit laoreet id. Sed libero enim sed faucibus turpis in eu mi bibendum. Etiam erat velit scelerisque in dictum non consectetur a erat.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Nisl condimentum id venenatis a. Purus in massa tempor nec. Lacus sed viverra tellus in. Cursus mattis molestie a iaculis at erat pellentesque. Lectus arcu bibendum at varius vel pharetra vel turpis. Morbi tristique senectus et netus. Ut ornare lectus sit amet est placerat in egestas. Est velit egestas dui id ornare arcu odio ut. Non arcu risus quis varius. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Iaculis nunc sed augue lacus viverra vitae congue. Eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Elit duis tristique sollicitudin nibh sit amet commodo. Ut tellus elementum sagittis vitae et leo duis. Pharetra vel turpis nunc eget lorem dolor sed viverra. Amet volutpat consequat mauris nunc congue nisi vitae suscipit. Libero volutpat sed cras ornare arcu dui vivamus arcu felis. Massa id neque aliquam vestibulum morbi blandit cursus risus. Nunc eget lorem dolor sed viverra. Maecenas pharetra convallis posuere morbi leo. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Mauris sit amet massa vitae. Cursus sit amet dictum sit amet justo donec. Lectus mauris ultrices eros in cursus turpis. Sit amet porttitor eget dolor morbi non arcu.</span></font></div>                                                            ', 'carpets-and-rugs-2.jpg', 'carpets-and-rugs-2.jpg', '7000.00', 1),
(18, 'I will make best quality and light weight rugs', 'I-will-make-best-quality-and-light-weight-rugs', '1500.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cursus sit amet dictum sit. Proin sed libero enim sed faucibus turpis in eu mi. Aenean et tortor at risus viverra adipiscing at in. Ante in nibh mauris cursus mattis molestie a iaculis. Justo donec enim diam vulputate ut pharetra. Quis risus sed vulputate odio ut enim blandit volutpat maecenas. Eu nisl nunc mi ipsum faucibus vitae aliquet. Quis vel eros donec ac odio tempor. Venenatis tellus in metus vulputate eu scelerisque felis. Vel pretium lectus quam id leo in. Tellus cras adipiscing enim eu turpis egestas pretium aenean. Tincidunt tortor aliquam nulla facilisi. Dui nunc mattis enim ut tellus elementum sagittis. Eget mi proin sed libero enim sed faucibus turpis. Dapibus ultrices in iaculis nunc sed. Faucibus vitae aliquet nec ullamcorper sit. In nisl nisi scelerisque eu. Commodo nulla facilisi nullam vehicula ipsum a. Natoque penatibus et magnis dis parturient montes nascetur.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Id consectetur purus ut faucibus pulvinar. Enim neque volutpat ac tincidunt vitae semper quis. Venenatis a condimentum vitae sapien. Lobortis scelerisque fermentum dui faucibus in ornare. Egestas congue quisque egestas diam. Ac felis donec et odio pellentesque diam volutpat commodo. Adipiscing commodo elit at imperdiet dui. Eget arcu dictum varius duis at consectetur. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Congue eu consequat ac felis donec. Elit sed vulputate mi sit amet mauris. Placerat in egestas erat imperdiet sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Tellus in metus vulputate eu scelerisque felis. Volutpat blandit aliquam etiam erat velit scelerisque. Quisque egestas diam in arcu cursus euismod quis viverra nibh.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Nec nam aliquam sem et tortor consequat. Ornare arcu odio ut sem nulla pharetra. Aliquam nulla facilisi cras fermentum odio eu. Dignissim suspendisse in est ante in nibh mauris cursus. In metus vulputate eu scelerisque felis imperdiet. Id volutpat lacus laoreet non. Accumsan in nisl nisi scelerisque eu ultrices vitae. Dignissim suspendisse in est ante in nibh mauris cursus mattis. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Nec dui nunc mattis enim ut tellus elementum sagittis. Dui vivamus arcu felis bibendum ut tristique et egestas. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Dolor magna eget est lorem. Placerat vestibulum lectus mauris ultrices eros in cursus turpis.</span></font></div>                                                            ', 'different-types-of-carpets.jpg', 'different-types-of-carpets.jpg', '0.00', 1),
(19, 'I will make clothes according to your choice', 'I-will-make-clothes-according-to-your-choice', '2000.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat consequat mauris nunc congue nisi vitae. Neque vitae tempus quam pellentesque nec. Mollis aliquam ut porttitor leo a. Urna nec tincidunt praesent semper feugiat nibh. Enim nec dui nunc mattis enim ut tellus elementum sagittis. Pellentesque elit eget gravida cum sociis. Scelerisque viverra mauris in aliquam. Id leo in vitae turpis massa sed elementum tempus. Placerat duis ultricies lacus sed turpis tincidunt.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Suscipit adipiscing bibendum est ultricies integer quis auctor. Suspendisse sed nisi lacus sed. Purus in massa tempor nec. Aliquet enim tortor at auctor. Et leo duis ut diam quam nulla porttitor massa id. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Magna ac placerat vestibulum lectus mauris. Tortor condimentum lacinia quis vel eros. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Faucibus ornare suspendisse sed nisi lacus. Duis convallis convallis tellus id interdum velit laoreet. Bibendum arcu vitae elementum curabitur vitae nunc. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Urna porttitor rhoncus dolor purus non enim praesent elementum facilisis. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Egestas congue quisque egestas diam in arcu cursus euismod quis. Pharetra sit amet aliquam id. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Nibh tortor id aliquet lectus proin nibh. In aliquam sem fringilla ut morbi tincidunt augue interdum velit.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Proin nibh nisl condimentum id venenatis a condimentum vitae. Turpis egestas integer eget aliquet nibh praesent tristique. Diam vel quam elementum pulvinar etiam non quam lacus. Dictumst quisque sagittis purus sit. Eget nullam non nisi est sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Ultricies integer quis auctor elit sed vulputate. Auctor neque vitae tempus quam pellentesque nec. Sed adipiscing diam donec adipiscing tristique risus nec. Sollicitudin nibh sit amet commodo nulla facilisi. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Ipsum dolor sit amet consectetur. Dignissim enim sit amet venenatis. In arcu cursus euismod quis viverra. Sit amet luctus venenatis lectus magna. Volutpat blandit aliquam etiam erat velit scelerisque in dictum non. Sollicitudin tempor id eu nisl nunc mi. Urna duis convallis convallis tellus id interdum velit laoreet. Netus et malesuada fames ac turpis egestas.</span></font></div>                                                            ', 'handmadebarbiedresses1.jpg', 'handmadebarbiedresses1.jpg', '0.00', 1),
(20, 'I will design painting of your choice', 'I-will-design-painting-of-your-choice', '5900.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat consequat mauris nunc congue nisi vitae. Neque vitae tempus quam pellentesque nec. Mollis aliquam ut porttitor leo a. Urna nec tincidunt praesent semper feugiat nibh. Enim nec dui nunc mattis enim ut tellus elementum sagittis. Pellentesque elit eget gravida cum sociis. Scelerisque viverra mauris in aliquam. Id leo in vitae turpis massa sed elementum tempus. Placerat duis ultricies lacus sed turpis tincidunt.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Suscipit adipiscing bibendum est ultricies integer quis auctor. Suspendisse sed nisi lacus sed. Purus in massa tempor nec. Aliquet enim tortor at auctor. Et leo duis ut diam quam nulla porttitor massa id. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Magna ac placerat vestibulum lectus mauris. Tortor condimentum lacinia quis vel eros. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Faucibus ornare suspendisse sed nisi lacus. Duis convallis convallis tellus id interdum velit laoreet. Bibendum arcu vitae elementum curabitur vitae nunc. Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Urna porttitor rhoncus dolor purus non enim praesent elementum facilisis. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Egestas congue quisque egestas diam in arcu cursus euismod quis. Pharetra sit amet aliquam id. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Nibh tortor id aliquet lectus proin nibh. In aliquam sem fringilla ut morbi tincidunt augue interdum velit.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Donec et odio pellentesque diam volutpat commodo sed egestas egestas. Proin nibh nisl condimentum id venenatis a condimentum vitae. Turpis egestas integer eget aliquet nibh praesent tristique. Diam vel quam elementum pulvinar etiam non quam lacus. Dictumst quisque sagittis purus sit. Eget nullam non nisi est sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Ultricies integer quis auctor elit sed vulputate. Auctor neque vitae tempus quam pellentesque nec. Sed adipiscing diam donec adipiscing tristique risus nec. Sollicitudin nibh sit amet commodo nulla facilisi. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Ipsum dolor sit amet consectetur. Dignissim enim sit amet venenatis. In arcu cursus euismod quis viverra. Sit amet luctus venenatis lectus magna. Volutpat blandit aliquam etiam erat velit scelerisque in dictum non. Sollicitudin tempor id eu nisl nunc mi. Urna duis convallis convallis tellus id interdum velit laoreet. Netus et malesuada fames ac turpis egestas.</span></font></div>                                                            ', 'HTB16KOTHVXXXXaWXXXXq6xXFXXXH.jpg', 'HTB16KOTHVXXXXaWXXXXq6xXFXXXH.jpg', '8000.00', 1),
(21, 'I will make beautiful sketches', 'I-will-make-beautiful-sketches', '4000.00', '<div xss=removed><font face="Arial, Verdana"><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Lorem sed risus ultricies tristique nulla. Non tellus orci ac auctor augue. Id leo in vitae turpis massa sed elementum tempus. Ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia. Rhoncus mattis rhoncus urna neque viverra. Luctus accumsan tortor posuere ac ut consequat semper viverra. Nisi vitae suscipit tellus mauris a diam maecenas sed. Penatibus et magnis dis parturient montes nascetur ridiculus mus mauris. Tristique senectus et netus et malesuada fames ac turpis. Scelerisque viverra mauris in aliquam sem fringilla ut morbi. Vitae justo eget magna fermentum iaculis eu non. A erat nam at lectus.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Libero enim sed faucibus turpis in eu. Dolor sit amet consectetur adipiscing. Enim sit amet venenatis urna cursus eget. Nunc sed augue lacus viverra vitae. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Tortor dignissim convallis aenean et tortor at risus viverra. Nec feugiat nisl pretium fusce id velit ut tortor. A scelerisque purus semper eget duis at tellus at. Mi quis hendrerit dolor magna eget est lorem ipsum. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. Volutpat blandit aliquam etiam erat. Amet risus nullam eget felis eget. Non consectetur a erat nam at. Lacus vel facilisis volutpat est. Quis vel eros donec ac odio tempor. Amet purus gravida quis blandit turpis cursus in hac habitasse. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Amet massa vitae tortor condimentum lacinia quis vel eros. Non arcu risus quis varius quam.</span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed><br></span></font></div><div xss=removed><font face="Arial, Verdana"><span xss=removed>Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Facilisis sed odio morbi quis commodo odio. Curabitur gravida arcu ac tortor dignissim convallis aenean et tortor. Suspendisse sed nisi lacus sed viverra tellus. Interdum velit euismod in pellentesque massa placerat duis. Pulvinar mattis nunc sed blandit. Nisi porta lorem mollis aliquam ut. Nascetur ridiculus mus mauris vitae ultricies leo. Leo vel fringilla est ullamcorper eget. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Aliquet bibendum enim facilisis gravida neque. Semper quis lectus nulla at volutpat diam. Lorem ipsum dolor sit amet consectetur adipiscing elit. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. At in tellus integer feugiat scelerisque varius morbi enim. Tempor commodo ullamcorper a lacus vestibulum. Donec ultrices tincidunt arcu non sodales neque sodales. Aliquam nulla facilisi cras fermentum odio eu. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit.</span></font></div>                                                            ', 'Handmade-Abstract-Butterfly-Picture-Home-Decor-Oil-Painting-On-Canvas-Modern-Animals-Wall-Paintings-For-Room_jpg_640x640.jpg', 'Handmade-Abstract-Butterfly-Picture-Home-Decor-Oil-Painting-On-Canvas-Modern-Animals-Wall-Paintings-For-Room_jpg_640x640.jpg', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colors`
--

CREATE TABLE IF NOT EXISTS `store_item_colors` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_colors`
--

INSERT INTO `store_item_colors` (`id`, `item_id`, `color`) VALUES
(1, 1, 'Black'),
(2, 1, 'Blue'),
(3, 1, 'Red'),
(4, 7, 'Black'),
(5, 7, 'Blue'),
(6, 7, 'Red'),
(7, 14, 'Black'),
(8, 14, 'Purple'),
(9, 14, 'Pink'),
(10, 14, 'Blue'),
(11, 14, 'White');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_sizes`
--

CREATE TABLE IF NOT EXISTS `store_item_sizes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_sizes`
--

INSERT INTO `store_item_sizes` (`id`, `item_id`, `size`) VALUES
(1, 1, 'Small'),
(2, 1, 'Medium'),
(3, 1, 'Large'),
(4, 14, 'Small'),
(5, 14, 'Medium'),
(6, 14, 'Medium'),
(7, 14, 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE IF NOT EXISTS `store_orders` (
  `id` int(11) NOT NULL,
  `order_ref` varchar(6) NOT NULL,
  `date_created` int(11) NOT NULL,
  `paypal_id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `order_status` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `mc_gross` decimal(7,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_orders`
--

INSERT INTO `store_orders` (`id`, `order_ref`, `date_created`, `paypal_id`, `session_id`, `opened`, `order_status`, `shopper_id`, `mc_gross`) VALUES
(1, 'sdfas', 1509818064, 1, '12232313131313123', 0, 0, 1, '0.00'),
(2, '3iukj', 1509818065, 2, '12312312312', 1, 0, 1, '0.00'),
(3, 'BNRNAK', 1526595154, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 0, '0.00'),
(4, 'XWUYTS', 1526595188, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(5, 'VET5C4', 1526595190, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(6, 'AYNTT7', 1526595201, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(7, 'QJYUW3', 1526595278, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(8, 'XRYMQW', 1526595389, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(9, 'ZRRZ7W', 1526595423, 88, '228hgtrvco71qvng1l24lsft1adon1tt', 0, 0, 9, '0.00'),
(10, 'AJEP3M', 1526596492, 88, 'n06mpivld2c1nkge711bhu1abihr6j53', 0, 0, 0, '0.00'),
(11, 'FYJZTV', 1526596492, 88, 'n06mpivld2c1nkge711bhu1abihr6j53', 0, 0, 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `store_order_status`
--

CREATE TABLE IF NOT EXISTS `store_order_status` (
  `id` int(11) NOT NULL,
  `status_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_order_status`
--

INSERT INTO `store_order_status` (`id`, `status_title`) VALUES
(2, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `store_shoppertrack`
--

CREATE TABLE IF NOT EXISTS `store_shoppertrack` (
  `id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tax` decimal(7,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(70) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_color` varchar(70) NOT NULL,
  `date_added` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `ip_address` int(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_shoppertrack`
--

INSERT INTO `store_shoppertrack` (`id`, `session_id`, `item_title`, `price`, `tax`, `item_id`, `item_size`, `item_qty`, `item_color`, `date_added`, `shopper_id`, `ip_address`) VALUES
(1, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(2, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(3, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(4, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(5, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(6, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(7, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(8, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(9, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(10, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(11, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(12, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(13, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(14, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(15, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(16, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(17, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(18, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(19, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(20, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(21, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(22, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(23, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(24, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(25, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(26, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(27, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(28, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(29, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(30, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(31, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(32, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(33, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(34, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(35, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(36, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(37, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(38, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(39, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(40, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(41, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(42, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(43, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(44, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(45, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(46, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(47, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(48, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(49, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(50, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(51, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(52, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(53, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(54, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(55, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(56, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(57, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(58, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(59, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(60, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(61, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(62, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(63, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(64, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(65, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(66, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(67, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(68, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(69, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(70, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(71, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(72, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(73, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(74, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(75, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(76, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(77, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(78, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(79, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(80, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(81, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(82, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(83, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(84, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(85, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(86, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(87, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(88, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(89, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(90, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(91, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(92, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(93, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(94, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(95, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(96, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(97, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(98, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(99, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(100, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(101, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(102, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(103, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(104, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(105, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(106, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(107, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(108, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(109, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(110, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(111, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(112, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(113, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(114, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(115, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(116, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(117, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(118, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(119, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(120, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(121, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(122, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(123, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(124, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(125, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(126, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(127, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(128, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(129, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(130, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(131, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(132, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(133, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(134, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(135, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(136, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(137, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(138, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(139, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(140, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(141, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(142, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(143, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(144, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(145, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(146, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(147, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(148, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(149, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(150, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(151, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(152, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(153, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(154, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(155, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(156, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(157, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(158, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(159, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(160, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(161, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(162, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(163, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(164, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(165, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(166, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(167, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(168, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(169, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(170, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(171, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(172, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(173, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(174, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(175, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(176, '228hgtrvco71qvng1l24lsft1adon1tt', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 1, '', 1526594429, 9, 0),
(177, 'n06mpivld2c1nkge711bhu1abihr6j53', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 2, '', 1526596487, 0, 0),
(178, 'n06mpivld2c1nkge711bhu1abihr6j53', 'Loreal Elvive Green', '50.00', '0.00', 1, '', 2, '', 1526596487, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE IF NOT EXISTS `webpages` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`) VALUES
(1, '', 'Homepage', 'homepage, main home page', 'This is the homepage of the CiShop', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"<br>'),
(2, 'contactus', 'Contact Us', 'Contact Us', 'This is the contact us page', 'It contains main info of contacts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_blocks`
--
ALTER TABLE `homepage_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_offers`
--
ALTER TABLE `homepage_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_galleries`
--
ALTER TABLE `item_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_cookies`
--
ALTER TABLE `site_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_accounts`
--
ALTER TABLE `store_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_basket`
--
ALTER TABLE `store_basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order_status`
--
ALTER TABLE `store_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_shoppertrack`
--
ALTER TABLE `store_shoppertrack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `homepage_blocks`
--
ALTER TABLE `homepage_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `homepage_offers`
--
ALTER TABLE `homepage_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `item_galleries`
--
ALTER TABLE `item_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_cookies`
--
ALTER TABLE `site_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `store_basket`
--
ALTER TABLE `store_basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `store_order_status`
--
ALTER TABLE `store_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `store_shoppertrack`
--
ALTER TABLE `store_shoppertrack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
