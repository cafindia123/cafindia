-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2021 at 04:02 PM
-- Server version: 5.7.32
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaisalme_cefindia`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_reports`
--

CREATE TABLE `annual_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `designation`, `description`, `order`, `type`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anish Sengupta', 'Manager Programmes', NULL, 1, NULL, 'authors/January2021/QKq9qzrFYrJM2ssXs3Sp.jpg', 'A', '2021-01-24 18:57:19', '2021-01-28 03:48:15', NULL),
(2, 'Udaya Agarwal', 'Manager Programmes', NULL, 1, NULL, 'authors/January2021/6bDEW9Z4LClaB8q4ZpWi.jpg', 'D', '2021-01-24 18:57:50', '2021-03-17 04:43:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `sub_title`, `link`, `link_text`, `description`, `order`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'A colourful journey TO OVERCOME DISABILITY', 'https://cafindia.jaisalmercity.com/media/Stories-Of-Hope', 'Discover a better way to give', NULL, 3, 'banners/July2021/qB4vCdNpPujUVl8xXxg4.jpg', 'A', '2020-10-25 01:40:38', '2021-07-05 08:29:17', NULL),
(2, 'CAF India\'s GAYE programme gives', 'ABHISHEK, A CHANCE TO WORK TOWARDS HIS DREAMS', 'https://cafindia.jaisalmercity.com/content-details/stories-of-hope/abhishek-strikes-the-right-chords', 'Discover a better way to give', NULL, 1, 'banners\\November2020\\S79PkL7rlc21pWR5rKZF.jpg', 'A', '2020-10-25 01:46:15', '2021-04-15 09:18:43', NULL),
(3, 'More children have started', 'COMING TO SCHOOL BECAUSE OF THE NUTRITIOUS FOOD', 'https://cafindia.jaisalmercity.com/media/Stories-Of-Hope', 'Discover a better way to give', NULL, 2, 'banners\\November2020\\YFHR2jSyd0HMZNNGnWge.jpg', 'A', '2020-10-25 12:13:19', '2021-04-15 09:19:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'CAF India’s COVID Response Campaign – We did it, but we have miles to go', NULL, '<p>As the COVID-19 pandemic tightens its grip around the nation and case count reaching a new high every day, it&rsquo;s becoming gradually arduous to contain the pandemic. CAF India has been in the forefront to help vulnerable communities &lsquo;Build Back Better&rsquo; and bring on board the organization&rsquo;s extensive experience in supporting disaster relief &amp; rehabilitation operations and further linking them to sustainability by promoting resilience.&nbsp;&nbsp;</p>\r\n<p>I got the opportunity to be a part of the team that planned the outreach campaign that so far has been able to raise over Rs 15 crore and has reached out to over a million people with life-saving interventions. Today CAF India is reaching out to over 13 lakhs vulnerable population in the under resourced locations of 68 districts in 19 States and 2 Union Territories to contain the pandemic. The organization has covered every strata of the population like construction workers, daily wage earners, migrant labours, frontline health workers, police personnel, homeless population, elderly, refugee communities, transgender communities, mother and children. There has been significant work done in providing Protective Gears to Municipal Corporations, Health Departments and also contributed to the CM Relief fund in 6 States.&nbsp;</p>\r\n<p><img src=\"http://cafindia.jaisalmercity.com/public/storage/blogs/January2021/anish_blog_img2-1024x768.jpeg\" alt=\"\" /></p>', 'blogs/January2021/BBpLcMVAFAJRImN1OC2V.jpg', 'caf-india-s-covid-response-campaign-we-did-it-but-we-have-miles-to-go', NULL, NULL, 'A', '2021-01-26 16:33:46', '2021-01-28 03:45:07', NULL),
(3, 2, 'Let us uphold the spirit of NGO workers, who continue to work in the face of adversity', NULL, '<p>The lockdown affected the lives of some of the most vulnerable communities across the country, such as migrant labourers, waste pickers, single mothers, artisans and sex workers. It is to cushion the impact of the crisis on these sections, and to ensure their access to essentials, that not-for-profit organizations are sending out appeals for funds.</p>\r\n<p>The lockdown affected the lives of some of the most vulnerable communities across the country, such as migrant labourers, waste pickers, single mothers, artisans and sex workers. It is to cushion the impact of the crisis on these sections, and to ensure their access to essentials, that not-for-profit organizations are sending out appeals for funds.</p>\r\n<p><img src=\"http://cafindia.jaisalmercity.com/public/storage/blogs/January2021/udaya_blog_pic1.jpg\" alt=\"\" /></p>', 'blogs/January2021/H4WWCe7r4wyHJJPKOfH7.jpg', 'let-us-uphold-the-spirit-of-ngo-workers-who-continue-to-work-in-the-face-of-adversity', NULL, NULL, 'A', '2021-01-26 16:38:03', '2021-03-17 04:43:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_management`
--

CREATE TABLE `campaign_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_the_campaign` text COLLATE utf8mb4_unicode_ci,
  `appeal` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_impact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_amount` int(11) DEFAULT NULL,
  `minimum_amount` int(11) DEFAULT NULL,
  `mode_of_contribution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_management`
--

INSERT INTO `campaign_management` (`id`, `title`, `slug`, `about_the_campaign`, `appeal`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `document`, `campaign_target`, `social_impact`, `maximum_amount`, `minimum_amount`, `mode_of_contribution`, `link2`, `link2_text`, `link2_type`) VALUES
(2, 'Help underprivileged children enjoy fun activities', 'help-underprivileged-children-enjoy-fun-activities', '<section>\r\n<div class=\"container\">\r\n<div class=\"row ml-1 mt-5 mb-3\">\r\n<h3 style=\"font-weight: bold; color: #d04b20;\">DONARS, PLEASE NOTE</h3>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4\" style=\"border-right: 3px solid #D04B20;\">\r\n<p style=\"text-align: justify;\">The funds will be spent on initiatives that will help underprivileged families bounce back from COVID-19, the lockdown and its onslaught. The cost includes 10 percent operational costs as well.</p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4\" style=\"border-right: 3px solid #D04B20;\">\r\n<p style=\"text-align: justify;\">In case you choose to give recurring donations, you can cease the donations at any time you like.</p>\r\n<p><span style=\"font-weight: bold;\">Our support team will help you out: </span></p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4\">\r\n<p style=\"text-align: justify;\">All tax exemptions,receipts and documents will be provided.</p>\r\n<p>Get in touch:<br /><span style=\"font-weight: bold;\">contact@cafindia.org</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section>\r\n<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<div class=\"col-md-12 col-sm-6 mt-5\">\r\n<h2 style=\"font-weight: bold;\">CAF INDIA IMPACT</h2>\r\n<p style=\"font-size: 19px;\">is india most effective campaign</p>\r\n</div>\r\n</div>\r\n<img src=\"/assets/img/1.jpg\" width=\"100%\" /></div>\r\n</section>\r\n<section style=\"position: relative;\"><img src=\"/assets/img/2.jpg\" width=\"100%\" />\r\n<div class=\"give-now-btn\">\r\n<div class=\"give-now-btn-inner\">&nbsp;</div>\r\n</div>\r\n</section>', 'dasdd', 'campaign-management/February2021/7gwIIUhZbvbJhlE58Au5.jpg', NULL, 'https://cafindia.jaisalmercity.com/campaign/details/help-underprivileged-children-enjoy-fun-activities', 'Learn More', 'BUTTON', 1, 'A', '2021-01-18 10:08:00', '2021-04-12 06:05:53', NULL, '[{\"download_link\":\"campaign-management\\/January2021\\/ypQmnEM4HROdF1YExLqX.jpg\",\"original_name\":\"happy-new-year-wishes-video-sparkle-shine-ad-design-templat.jpg\"}]', 'sdasdasd', 'dasdsd', 2000, 1000, 'BCNB', 'https://cafindia.jaisalmercity.com/campaign/details/help-underprivileged-children-enjoy-fun-activities', 'Give Now', 'BUTTON'),
(3, 'Support the nutrition of poor girls to aid education', 'support-the-nutrition-of-poor-girls-to-aid-education', '<section>\r\n<div class=\"container\">\r\n<div class=\"row ml-1 mt-5 mb-3\">\r\n<h3 style=\"font-weight: bold; color: #d04b20;\">DONARS, PLEASE NOTE</h3>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4\" style=\"border-right: 3px solid #D04B20;\">\r\n<p style=\"text-align: justify;\">The funds will be spent on initiatives that will help underprivileged families bounce back from COVID-19, the lockdown and its onslaught. The cost includes 10 percent operational costs as well.</p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4\" style=\"border-right: 3px solid #D04B20;\">\r\n<p style=\"text-align: justify;\">In case you choose to give recurring donations, you can cease the donations at any time you like.</p>\r\n<p><span style=\"font-weight: bold;\">Our support team will help you out: </span></p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4\">\r\n<p style=\"text-align: justify;\">All tax exemptions,receipts and documents will be provided.</p>\r\n<p>Get in touch:<br /><span style=\"font-weight: bold;\">contact@cafindia.org</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section>\r\n<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<div class=\"col-md-12 col-sm-6 mt-5\">\r\n<h2 style=\"font-weight: bold;\">CAF INDIA IMPACT</h2>\r\n<p style=\"font-size: 19px;\">is india most effective campaign</p>\r\n</div>\r\n</div>\r\n<img src=\"/assets/img/1.jpg\" width=\"100%\" /></div>\r\n</section>\r\n<section style=\"position: relative;\"><img src=\"/assets/img/2.jpg\" width=\"100%\" />\r\n<div class=\"give-now-btn\">\r\n<div class=\"give-now-btn-inner\">&nbsp;</div>\r\n</div>\r\n</section>', 'Beneficiaries under this program', 'campaign-management/February2021/XrzPXGPOZFSp326NFq9L.jpg', NULL, 'https://cafindia.jaisalmercity.com/campaign/details/support-the-nutrition-of-poor-girls-to-aid-education', 'Learn More', 'BUTTON', 1, 'A', '2021-02-23 20:22:00', '2021-04-12 06:05:25', NULL, '[{\"download_link\":\"campaign-management\\/February2021\\/w335Vw7PAghjOcmquvBK.jpg\",\"original_name\":\"6QZ9u1L3n7V1kJ0NHGvg.jpg\"}]', NULL, NULL, 1111, 111, 'BCNB', 'https://cafindia.jaisalmercity.com/campaign/details/support-the-nutrition-of-poor-girls-to-aid-education', 'Give Now', 'BUTTON'),
(5, 'Test Donation - Need to Support to Kids in Rural Area where no source of educations.', 'test-donation', '<p>TEST</p>', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-06-03 10:46:00', '2021-06-04 03:20:13', NULL, '[]', NULL, NULL, NULL, NULL, 'BCNB', NULL, NULL, 'BUTTON');

-- --------------------------------------------------------

--
-- Table structure for table `career_management`
--

CREATE TABLE `career_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(158) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_management`
--

INSERT INTO `career_management` (`id`, `name`, `email`, `message`, `file`, `ip_address`, `status`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Test Job oldd', '1', '<p>Test Job</p>', '[{\"download_link\":\"career-management\\/March2021\\/NLDZXBX54gFAZ1llrX4V.jpg\",\"original_name\":\"pexels-karolina-grabowska-4379912.jpg\"}]', 'Vasant Kunj, New Delhi', 'A', 'test-job-oldd', NULL, '2021-03-09 06:54:37', '2021-03-18 17:38:11', NULL),
(5, 'Test2 job new', '12', '<p>Treat this job post writing exercise just as you would any other important piece of company marketing. Get multiple people to read it and provide you with honest feedback. Make sure you have fixed any errors before you post the job to hundreds of job boards.</p>', '[{\"download_link\":\"career-management\\/March2021\\/e7gNtEqCvSyATuRyv6FR.jpg\",\"original_name\":\"gaye_newsletter_emailer640_feb2021.jpg\"}]', 'delhi', 'A', 'test2-job-new', NULL, '2021-03-15 04:20:05', '2021-03-18 17:35:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `image`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, NULL, 1, 'Who We Are', NULL, 'who-we-are', 'A', '2020-11-27 13:05:38', '2020-11-27 13:05:38', NULL),
(7, 6, 1, 'About Us', NULL, 'about-us', 'A', '2020-11-27 13:06:04', '2020-11-27 13:07:44', NULL),
(8, 6, 1, 'Global Alliance', NULL, 'global-alliance', 'A', '2020-11-27 13:07:26', '2020-11-27 13:07:26', NULL),
(9, NULL, 2, 'What We Do', NULL, 'what-we-do', 'A', '2020-11-28 11:55:18', '2020-11-28 11:55:18', NULL),
(10, NULL, 3, 'Media', NULL, 'media', 'A', '2020-11-28 11:56:41', '2020-11-28 11:56:41', NULL),
(11, 6, 1, 'Our Governance', NULL, 'our-governance', 'A', '2020-11-28 13:26:33', '2020-11-28 13:32:36', NULL),
(12, 11, 1, 'Board', NULL, 'board', 'A', '2020-11-28 13:33:26', '2020-12-03 23:42:27', NULL),
(18, 11, 1, 'Senior Management Team', NULL, 'senior-management-team', 'A', '2020-12-03 23:59:38', '2020-12-03 23:59:38', NULL),
(19, 6, 1, 'Annual Reports And Financials', NULL, 'Annual-Reports-And-Financials', 'A', '2020-12-04 00:01:09', '2021-01-21 08:49:10', NULL),
(20, 6, 1, 'Work With Us', NULL, 'work-with-us', 'A', '2020-12-04 00:03:10', '2020-12-04 00:03:10', NULL),
(21, 9, 1, 'Thematic Impact', NULL, 'thematic-impact', 'A', '2020-12-04 00:08:05', '2020-12-04 02:46:00', NULL),
(22, 9, 1, 'Campaigns And Appeals', NULL, 'Campaigns-And-Appeals', 'A', '2020-12-04 00:08:59', '2021-01-21 08:31:56', NULL),
(23, 9, 1, 'Connect Workshop', NULL, 'connect-workshop', 'A', '2020-12-04 00:09:37', '2020-12-04 00:09:37', NULL),
(24, 9, 1, 'NGO Validation', NULL, 'ngo-validation', 'A', '2020-12-04 00:12:39', '2020-12-04 00:12:39', NULL),
(25, 9, 1, 'Volunteer With Us', NULL, 'Volunteer-With-Us', 'A', '2020-12-04 00:13:27', '2021-01-21 08:31:20', NULL),
(26, 10, 1, 'Publications', NULL, 'publications', 'A', '2020-12-04 00:17:23', '2020-12-04 00:17:23', NULL),
(27, 10, 1, 'Press Releases', NULL, 'press-releases', 'A', '2020-12-04 00:27:45', '2020-12-04 00:27:45', NULL),
(28, 10, 1, 'In The News', NULL, 'In-The-News', 'A', '2020-12-04 00:28:16', '2021-01-21 08:30:14', NULL),
(29, 10, 1, 'Blogs', NULL, 'blogs', 'A', '2020-12-04 00:28:49', '2020-12-04 00:28:49', NULL),
(30, 10, 1, 'Stories Of Hope', NULL, 'Stories-Of-Hope', 'A', '2020-12-04 00:29:20', '2021-01-21 08:29:20', NULL),
(31, 10, 1, 'Awards And Accolades', NULL, 'Awards-And-Accolades', 'A', '2020-12-04 00:29:43', '2021-04-09 08:23:20', NULL),
(33, 10, 1, 'testing under media parent', NULL, 'testing-under-media-parent', 'A', '2021-03-17 04:02:02', '2021-03-17 04:02:02', NULL),
(35, 9, 1, 'Thematic impact', NULL, 'thematic-impacts', 'A', '2021-05-19 06:45:33', '2021-05-19 06:45:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cause_management`
--

CREATE TABLE `cause_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_management`
--

INSERT INTO `cause_management` (`id`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `document`) VALUES
(4, 'testing by deepak', '<p>testing by deepak</p>', 'cause-management/March2021/ECAa1YqzmiF5e6QE4sM6.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-16 10:08:29', '2021-03-16 10:08:29', NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `ip_address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'testing KK', 'kk@test.com', 'This is test', NULL, 'A', '2020-11-25 14:40:43', '2020-11-25 14:40:43', NULL),
(2, 'Ram', 'ramr2@gmail.com', 'Hell testing', NULL, 'A', '2021-01-04 06:25:53', '2021-01-04 06:25:53', NULL),
(3, 'Hand Wash', 'admin@admin.com', 'dasasaS', NULL, 'A', '2021-01-14 06:57:47', '2021-01-14 06:57:47', NULL),
(4, 'testing mail from mohit', 'marketing.edudotnet@gmail.com', 'this is testing mail for testing by mohit bohra', NULL, 'A', '2021-01-18 06:59:40', '2021-01-18 06:59:40', NULL),
(5, 'h', 'jhjg@gmail.com', 'trujh', NULL, 'A', '2021-01-23 07:36:01', '2021-01-23 07:36:01', NULL),
(6, 'Hand Wash', 'admin@admin.com', 'kkk', NULL, 'A', '2021-01-28 08:52:46', '2021-01-28 08:52:46', NULL),
(7, 'reet', 'wew@sdsd.com', 'terterte', NULL, 'A', '2021-02-05 19:17:52', '2021-02-05 19:17:52', NULL),
(8, 'asdas lopkopk', 'sdsfsdf@sdasd.com', 'dw wcwc', NULL, 'A', '2021-02-17 17:58:46', '2021-02-17 17:58:46', NULL),
(9, 'Deepak Sharma', 'deepak.sharma@cafindia.org', 'Hi', NULL, 'A', '2021-03-09 06:47:47', '2021-03-09 06:47:47', NULL),
(10, 'asdas lopkopk', 'sdsfsdf@sdasd.COM', 'SSDSD', NULL, 'A', '2021-03-14 17:23:26', '2021-03-14 17:23:26', NULL),
(11, 'asdas lopkopk', 'testtet@sdasd.com', 'TEST', NULL, 'A', '2021-03-14 17:25:04', '2021-03-14 17:25:04', NULL),
(12, 'Deepak Sharma', 'deepak.sharma@cafindia.org', 'test again after ram feedback', NULL, 'A', '2021-03-15 04:11:05', '2021-03-15 04:11:05', NULL),
(13, 'Deepak Sharma', 'deepak.sharma@cafindia.org', 'dfdsf', NULL, 'A', '2021-03-17 04:37:43', '2021-03-17 04:37:43', NULL),
(14, 'sdsasd', 'asdasdd@gmail.com', 'sdasdasd', NULL, 'A', '2021-03-31 06:57:36', '2021-03-31 06:57:36', NULL),
(15, 'fdfsdfdsff', 'marketing.edudotnet@2logics.com', 'dfdsfsdff', NULL, 'A', '2021-03-31 07:20:24', '2021-03-31 07:20:24', NULL),
(16, 'test', 'test@gmail.com', 'dadasd test mail', NULL, 'A', '2021-04-12 10:32:54', '2021-04-12 10:32:54', NULL),
(17, 'll', 'admin@admin.com', 'jkkk', NULL, 'A', '2021-04-14 06:14:38', '2021-04-14 06:14:38', NULL),
(18, 'jj', 'admin@admin.com', 'jkkkkk', NULL, 'A', '2021-04-14 06:15:06', '2021-04-14 06:15:06', NULL),
(19, 'mohit bohra', 'mohit@gmail.com', 'this is testing mail', NULL, 'A', '2021-04-19 05:57:32', '2021-04-19 05:57:32', NULL),
(20, 'Barbara Atyson', 'barbaratysonhw@yahoo.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site cafindia.jaisalmercity.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $449\r\n\r\n*All prices above are in USD and include an engaging, and captivating video, full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nKind Regards,\r\nBarbara', NULL, 'A', '2021-05-23 22:47:02', '2021-05-23 22:47:02', NULL),
(21, 'Rakesh Sharma', 'rakeshr2@gmail.com', 'this is testing mail', NULL, 'A', '2021-06-14 05:48:38', '2021-06-14 05:48:38', NULL),
(22, 'Rahul', 'rahul.bhasin@cafindia.org', 'TESTING', NULL, 'A', '2021-08-16 12:01:11', '2021-08-16 12:01:11', NULL),
(23, 'Mohit Kumar', 'mohit1@gmail.com', 'this is testing massage to you .', NULL, 'A', '2021-09-03 12:29:02', '2021-09-03 12:29:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 1, '{\"default\":1}', 4),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"required\"}}', 6),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'hidden', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(58, 8, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(59, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 8, 'order', 'number', 'Order', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"edit\":{\"rule\":\"sometimes\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"add\":{\"rule\":\"required\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"resize\":{\"width\":\"500\",\"height\":\"544\"},\"quality\":\"70%\",\"upsize\":true}', 6),
(62, 8, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 7),
(63, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(65, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(66, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 2),
(68, 9, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 4),
(69, 9, 'description', 'text', 'Description', 0, 0, 0, 0, 0, 0, '{}', 6),
(70, 9, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 7),
(71, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"description\":\"Please upload the image of width=1440px,height=828 dimension\",\"validation\":{\"edit\":{\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"add\":{\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"resize\":{\"width\":\"1440\",\"height\":\"828\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(72, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 9),
(73, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 10),
(74, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(75, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(76, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 11, 'parent_id', 'select_dropdown', 'Parent', 0, 1, 0, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(78, 11, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(79, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(80, 11, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"required\"}}', 5),
(81, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(82, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(83, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(84, 12, 'author_id', 'text', 'Author Id', 1, 0, 1, 1, 0, 1, '{}', 3),
(85, 12, 'category_id', 'text', 'Category Id', 0, 0, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required|unique:primary_pages,category_id\"}}', 4),
(86, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(87, 12, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 14),
(88, 12, 'excerpt', 'rich_text_box', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 6),
(89, 12, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 8),
(90, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 9),
(91, 12, 'slug', 'text', 'Slug', 1, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:primary_pages,slug\"}}', 10),
(92, 12, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 11),
(93, 12, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 12),
(94, 12, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 13),
(95, 12, 'featured', 'checkbox', 'Featured', 1, 0, 0, 1, 1, 0, '{}', 15),
(96, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 16),
(97, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(98, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 19),
(99, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 14, 'link', 'text', 'Link', 0, 0, 0, 0, 0, 0, '{}', 3),
(102, 14, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 4),
(103, 14, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(104, 14, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 6),
(105, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(106, 14, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(107, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(108, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(109, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(117, 9, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(118, 9, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 5),
(119, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 2),
(121, 16, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(122, 16, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 4),
(123, 16, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 5),
(124, 16, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(125, 16, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 7),
(126, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"description\":\"Please upload the image of width=1440px,height=828 dimension\",\"validation\":{\"edit\":{\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"add\":{\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"resize\":{\"width\":\"1440\",\"height\":\"828\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(127, 16, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 9),
(128, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(129, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(130, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(131, 8, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"OGT\",\"options\":{\"OGT\":\"Our Governance TRUSTEES\",\"FT\":\"FORMER TRUSTEES\"}}', 6),
(132, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 23, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(135, 23, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 23, 'ip_address', 'text', 'Ip Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(137, 23, 'status', 'text', 'Status', 1, 0, 0, 0, 0, 0, '{}', 6),
(138, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(139, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(140, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(141, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 24, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 24, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 24, 'status', 'text', 'Status', 1, 0, 0, 0, 0, 0, '{}', 4),
(145, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(146, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(147, 24, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(148, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 6),
(149, 1, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(150, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 0, 0, 0, 0, 0, '{}', 13),
(151, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 0, 0, 0, 0, 0, '{}', 14),
(152, 1, 'current_team_id', 'text', 'Current Team Id', 0, 0, 0, 0, 0, 0, '{}', 15),
(153, 1, 'profile_photo_path', 'text', 'Profile Photo Path', 0, 0, 0, 0, 0, 0, '{}', 16),
(154, 11, 'primary_category_belongsto_primary_category_relationship', 'relationship', 'Parent', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\PrimaryCategory\",\"table\":\"primary_categories\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(155, 12, 'primary_page_belongsto_primary_category_relationship', 'relationship', 'Primary Category', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\PrimaryCategory\",\"table\":\"primary_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(156, 4, 'category_belongsto_category_relationship', 'relationship', 'Parent', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(157, 4, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(158, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(159, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(160, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(161, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 16),
(194, 11, 'image', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"50\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 9),
(195, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 26, 'primary_page_id', 'text', 'Primary Page', 1, 0, 0, 0, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(197, 26, 'template_type', 'text', 'Template Type', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(198, 26, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, 'null', 5),
(199, 26, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 6),
(200, 26, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(201, 26, 'video_url', 'text', 'Video Url', 0, 0, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 8),
(202, 26, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 9),
(203, 26, 'link_text', 'text', 'Link Text', 0, 0, 1, 1, 1, 1, '{}', 10),
(204, 26, 'link_type', 'text', 'Link Type', 0, 0, 1, 1, 1, 1, '{}', 11),
(205, 26, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 12),
(206, 26, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 13),
(207, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(208, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(209, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 16),
(218, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(219, 29, 'primary_page_section_id', 'text', 'Primary Page Section', 1, 0, 0, 0, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(220, 29, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(221, 29, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(222, 29, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(223, 29, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 6),
(224, 29, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(225, 29, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 8),
(226, 29, 'image_icon', 'select_dropdown', 'Image Icon', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Is Image\",\"2\":\"Is Icon\",\"3\":\"Without Image\\/Icon\"}}', 9),
(227, 29, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 10),
(228, 29, 'status', 'text', 'Status', 1, 0, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(229, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(230, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(231, 29, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(232, 12, 'showing_order', 'text', 'Showing Order', 1, 0, 0, 0, 0, 0, '{}', 18),
(233, 26, 'columns_in_rows', 'text', 'Columns In Rows', 1, 1, 1, 1, 1, 1, '{}', 17),
(234, 12, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 20),
(235, 12, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 21),
(236, 12, 'link_type', 'select_dropdown', 'Link Type', 0, 0, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 22),
(237, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(238, 32, 'name', 'text', 'Job Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(239, 32, 'email', 'text', 'Experience', 0, 1, 1, 1, 1, 1, '{}', 3),
(240, 32, 'message', 'rich_text_box', 'Job Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(241, 32, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 6),
(242, 32, 'ip_address', 'text', 'Location', 0, 1, 1, 1, 1, 0, '{}', 5),
(243, 32, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 7),
(244, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(245, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(246, 32, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(247, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(248, 33, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(249, 33, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(250, 33, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(251, 33, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 5),
(252, 33, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 6),
(253, 33, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(254, 33, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 8),
(255, 33, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 9),
(256, 33, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 10),
(257, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(258, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(259, 33, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(260, 33, 'document', 'file', 'Document', 0, 0, 1, 1, 1, 1, '{}', 14),
(261, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(262, 34, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(263, 34, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(264, 34, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(265, 34, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 5),
(266, 34, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 6),
(267, 34, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(268, 34, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 8),
(269, 34, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 9),
(270, 34, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 10),
(271, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(272, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(273, 34, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(274, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(275, 35, 'name_of_the_NGO', 'text', 'Name Of The NGO*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 2),
(276, 35, 'date_of_registration', 'text', 'Date Of Registration', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 3),
(277, 35, 'registration_certificate_number', 'text', 'Registration Certificate Number', 1, 1, 1, 1, 1, 1, '{}', 4),
(278, 35, '12A_certificate_number', 'text', '12A Certificate Number*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(279, 35, 'location_of_registration', 'text', 'Location Of Registration*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 6),
(280, 35, 'legal_status', 'select_dropdown', 'Legal Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"Society\",\"options\":{\"Society\":\"Society\",\"Trust\":\"Trust\",\"Section 8\\/25\":\"Section 8\\/25\"}}', 7),
(281, 35, 'PAN', 'text', 'PAN', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 8),
(282, 35, 'TAN', 'text', 'TAN', 0, 1, 1, 1, 1, 1, '{}', 9),
(283, 35, 'FCRA_number', 'text', 'FCRA Number', 0, 1, 1, 1, 1, 1, '{}', 10),
(284, 35, 'DARPAN_UNIQUE_ID', 'text', 'DARPAN UNIQUE ID', 0, 1, 1, 1, 1, 1, '{}', 11),
(285, 35, 'state_of_operation', 'text', 'State Of Operation*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 12),
(286, 35, 'district_of_operation', 'text', 'District Of Operation*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 13),
(287, 35, 'website', 'text', 'Website Urlwebsite/Blog (URL, if available)', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 14),
(288, 35, 'are_you_in_social_media', 'radio_btn', 'Are you in Social Media?', 1, 1, 1, 1, 1, 1, '{\"default\":\"Y\",\"options\":{\"Y\":\"Yes\",\"N\":\"No\"}}', 15),
(289, 35, 'registered_address', 'text', 'Registered Address*', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 16),
(290, 35, 'correspondence_address', 'text', 'Correspondence Address', 0, 1, 1, 1, 1, 1, '{}', 17),
(291, 35, 'income_tax_exemption', 'text', 'Income Tax Exemption', 0, 1, 1, 1, 1, 1, '{}', 18),
(292, 35, 'thematic_sector_of_work', 'text', 'Thematic Sector Of Work', 1, 1, 1, 1, 1, 1, '{}', 19),
(293, 35, 'chief_functionary_name', 'text', 'Chief Functionary Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 20),
(294, 35, 'chief_functionary_email', 'text', 'Chief Functionary Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 21),
(295, 35, 'chief_functionary_number', 'text', 'Chief Functionary Number(use comma for multiple)', 0, 1, 1, 1, 1, 1, '{}', 22),
(296, 35, 'contact_person_name', 'text', 'Contact Person Name', 0, 1, 1, 1, 1, 1, '{}', 23),
(297, 35, 'contact_person_email', 'text', 'Contact Person Email', 0, 1, 1, 1, 1, 1, '{}', 24),
(298, 35, 'contact_person_number', 'text', 'Contact Person Number', 0, 1, 1, 1, 1, 1, '{}', 25),
(299, 35, 'local_and_national_network', 'text', 'List of all local and national network you are member of', 0, 1, 1, 1, 1, 1, '{}', 26),
(300, 35, 'financia_year', 'text', 'Financia Year', 0, 1, 1, 1, 1, 1, '{}', 27),
(301, 35, 'gross_amount', 'text', 'Gross Amount', 0, 1, 1, 1, 1, 1, '{}', 28),
(302, 35, 'sponsored_by', 'radio_btn', 'Sponsored By', 1, 1, 1, 1, 1, 1, '{\"description\":\"Have you been validated by CAF?\",\"default\":\"Y\",\"options\":{\"Y\":\"Yes\",\"N\":\"No\"}}', 29),
(303, 35, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 30),
(304, 35, 'description', 'text', 'Description', 0, 0, 0, 0, 0, 0, '{}', 31),
(305, 35, 'image', 'text', 'Image', 0, 0, 0, 0, 0, 0, '{}', 32),
(306, 35, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 33),
(307, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 34),
(308, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 35),
(309, 35, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 36),
(321, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(322, 38, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(323, 38, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(324, 38, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(325, 38, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 5),
(326, 38, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 6),
(327, 38, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(328, 38, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 8),
(329, 38, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 9),
(330, 38, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 10),
(331, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 11),
(332, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(333, 38, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(334, 38, 'document', 'file', 'Document', 0, 1, 1, 1, 1, 1, '{}', 14),
(335, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(336, 42, 'about_the_campaign', 'rich_text_box', 'About The Campaign', 0, 1, 1, 1, 1, 1, '{}', 3),
(337, 42, 'appeal', 'text', 'Appeal', 0, 1, 1, 1, 1, 1, '{}', 4),
(338, 42, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(339, 42, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(340, 42, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 8),
(341, 42, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(342, 42, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 10),
(343, 42, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 14),
(344, 42, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 15),
(345, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(346, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(347, 42, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 18),
(348, 42, 'document', 'file', 'Document', 0, 1, 1, 1, 1, 1, '{}', 19),
(349, 42, 'campaign_target', 'text', 'Campaign Target', 0, 1, 1, 1, 1, 1, '{}', 20),
(350, 42, 'social_impact', 'text', 'Social Impact', 0, 1, 1, 1, 1, 1, '{}', 21),
(352, 42, 'mode_of_contribution', 'select_dropdown', 'Mode Of Contribution', 0, 1, 1, 1, 1, 1, '{\"default\":\"BCNB\",\"options\":{\"BCNB\":\"By Card\\/Net Banking\",\"BC\":\"By Cheque\"}}', 24),
(353, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(354, 43, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(355, 43, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(356, 43, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 4),
(357, 43, 'mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 5),
(358, 43, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, '{}', 6),
(359, 43, 'nationality', 'text', 'Nationality', 0, 1, 1, 1, 1, 1, '{}', 7),
(360, 43, 'givig_amount', 'text', 'Givig Amount', 1, 0, 0, 0, 0, 0, '{}', 12),
(361, 43, 'payment_mode', 'select_dropdown', 'Payment Mode', 0, 1, 1, 1, 1, 1, '{\"options\":{\"Credit Card\":\"Credit Card\",\"Debit Card\":\"Debit Card\",\"Net Banking\":\"Net Banking\"}}', 10),
(362, 43, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 13),
(363, 43, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 14),
(364, 43, 'state', 'text', 'State', 0, 1, 1, 1, 1, 1, '{}', 15),
(365, 43, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 16),
(366, 43, 'pan_number', 'text', 'Pan Number', 0, 1, 1, 1, 1, 1, '{}', 17),
(367, 43, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 18),
(368, 43, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 19),
(369, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(370, 43, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 21),
(371, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(372, 42, 'maximum_amount', 'number', 'Maximum Amount', 0, 1, 1, 1, 1, 1, '{}', 22),
(373, 42, 'minimum_amount', 'number', 'Minimum Amount', 0, 1, 1, 1, 1, 1, '{}', 23),
(374, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(375, 44, 'footer_page_section_id', 'text', 'Footer Page Section Id', 1, 1, 1, 0, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(376, 44, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(377, 44, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(378, 44, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(379, 44, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 6),
(380, 44, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(381, 44, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 8),
(382, 44, 'image_icon', 'select_dropdown', 'Image Icon', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Is Image\",\"2\":\"Is Icon\",\"3\":\"Without Image\\/Icon\"}}', 9),
(383, 44, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 10),
(384, 44, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(385, 44, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(386, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(387, 44, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(388, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(389, 45, 'footer_page_id', 'text', 'Footer Page Id', 1, 1, 1, 0, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(390, 45, 'template_type', 'text', 'Template Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(391, 45, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(392, 45, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(393, 45, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(394, 45, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 9),
(395, 45, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 10),
(396, 45, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 11),
(397, 45, 'link_type', 'text', 'Link Type', 0, 1, 1, 1, 1, 1, '{}', 12),
(398, 45, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 13),
(399, 45, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 14),
(400, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 15),
(401, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(402, 45, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 17),
(403, 45, 'columns_in_rows', 'text', 'Columns In Rows', 1, 1, 1, 1, 1, 1, '{}', 18),
(404, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(405, 47, 'theme_type', 'select_dropdown', 'Theme Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(406, 47, 'alignment_type', 'select_dropdown', 'Alignment Type', 0, 0, 0, 0, 0, 0, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(407, 47, 'primary_page_id', 'hidden', 'Primary Page Id', 0, 0, 0, 0, 1, 1, '{\"default\":\"0\"}', 4),
(408, 47, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(409, 47, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 6),
(410, 47, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 0, '{}', 7),
(411, 47, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 8),
(412, 47, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(413, 47, 'link_type', 'select_dropdown', 'Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 10),
(415, 47, 'order', 'hidden', 'Order', 0, 0, 0, 0, 0, 0, '{\"default\":\"0\"}', 12),
(416, 47, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 13),
(417, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 14),
(418, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(419, 47, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 16),
(420, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(421, 48, 'author_id', 'text', 'Author Id', 0, 0, 0, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"}}', 3),
(422, 48, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(423, 48, 'excerpt', 'text', 'Excerpt', 0, 0, 0, 0, 0, 0, '{}', 5),
(424, 48, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 6),
(425, 48, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(426, 48, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:blogs,slug\"}}', 8),
(427, 48, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(428, 48, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 10),
(429, 48, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(430, 48, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(431, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(432, 48, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(433, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(434, 49, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(435, 49, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(436, 49, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(437, 49, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 5),
(438, 49, 'type', 'select_dropdown', 'Type', 0, 0, 0, 0, 0, 0, '{\"default\":\"OGT\",\"options\":{\"OGT\":\"Our Governance TRUSTEES\",\"FT\":\"FORMER TRUSTEES\"}}', 6),
(439, 49, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"edit\":{\"rule\":\"sometimes\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"add\":{\"rule\":\"required\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"resize\":{\"width\":\"500\",\"height\":\"544\"},\"quality\":\"70%\",\"upsize\":true}', 7),
(440, 49, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(441, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 9),
(442, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(443, 49, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(444, 48, 'blog_belongsto_author_relationship', 'relationship', 'Author', 0, 1, 1, 1, 1, 1, '{\"scope\":\"status\",\"model\":\"App\\\\Models\\\\Author\",\"table\":\"authors\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(445, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(446, 50, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(447, 50, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(448, 50, 'image', 'text', 'Image', 0, 0, 0, 0, 0, 1, '{}', 4),
(449, 50, 'link', 'text', 'Link', 0, 0, 0, 0, 0, 0, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 5),
(450, 50, 'link_text', 'text', 'Link Text', 0, 0, 0, 0, 0, 0, '{}', 6),
(451, 50, 'link_type', 'text', 'Link Type', 0, 0, 0, 0, 0, 0, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 7),
(452, 50, 'status', 'text', 'Status', 1, 0, 0, 0, 0, 0, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(453, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 1, '{}', 9),
(454, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(455, 50, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(458, 12, 'primary_page_belongstomany_featured_story_relationship', 'relationship', 'Related Material', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Blog\",\"table\":\"blogs\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"primary_page_featured_stories\",\"pivot\":\"1\",\"taggable\":\"0\"}', 24),
(459, 4, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(460, 42, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(461, 42, 'slug', 'hidden', 'Slug', 1, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:campaign_management,slug\"}}', 5),
(462, 12, 'primary_page_belongstomany_blog_relationship', 'relationship', 'Blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Blog\",\"table\":\"blogs\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"primary_page_blogs\",\"pivot\":\"1\",\"taggable\":\"0\"}', 27),
(463, 12, 'alignment_type', 'select_dropdown', 'Featured Story Alignment', 0, 1, 1, 1, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"TR\":\"Top Right\",\"IB\":\"Inside Blog Container\"}}', 23),
(464, 1, 'contact_number', 'text', 'Contact Number', 0, 0, 1, 1, 1, 1, '{}', 17),
(465, 1, 'dob', 'text', 'Dob', 0, 0, 1, 1, 1, 1, '{}', 18),
(466, 1, 'address', 'text', 'Address', 0, 0, 1, 1, 1, 1, '{}', 19),
(467, 1, 'country', 'text', 'Country', 0, 0, 1, 1, 1, 1, '{}', 20),
(468, 1, 'state', 'text', 'State', 0, 0, 1, 1, 1, 1, '{}', 21),
(469, 1, 'city', 'text', 'City', 0, 0, 1, 1, 1, 1, '{}', 22),
(470, 1, 'pin_code', 'text', 'Pin Code', 0, 0, 1, 1, 1, 1, '{}', 23),
(471, 1, 'tax_paying_status', 'text', 'Tax Paying Status', 0, 0, 1, 1, 1, 1, '{}', 24),
(472, 32, 'slug', 'hidden', 'Slug', 0, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:career_management,slug\"}}', 8),
(473, 32, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(474, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(475, 51, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 0, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(476, 51, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(477, 51, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(478, 51, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 5),
(479, 51, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(480, 51, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(481, 51, 'link_text', 'hidden', 'Link Text', 0, 0, 0, 0, 1, 1, '{}', 8),
(482, 51, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(483, 51, 'order', 'hidden', 'Order', 0, 0, 0, 0, 1, 0, '{\"default\":\"0\"}', 10),
(484, 51, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(485, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(486, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(487, 51, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(488, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(489, 52, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(490, 52, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(491, 52, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(492, 52, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(493, 52, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(494, 52, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(495, 52, 'link_text', 'text', 'Link Text', 0, 0, 0, 0, 0, 0, '{}', 8),
(496, 52, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(497, 52, 'order', 'hidden', 'Order', 0, 0, 0, 0, 1, 1, '{\"default\":\"0\"}', 10),
(498, 52, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(499, 52, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(500, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(501, 52, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(502, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(503, 53, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(504, 53, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(505, 53, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(506, 53, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(507, 53, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(508, 53, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(509, 53, 'link_text', 'text', 'Link Text', 0, 0, 0, 0, 0, 0, '{}', 8),
(510, 53, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 0, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(511, 53, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{\"default\":\"0\"}', 10),
(512, 53, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(513, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(514, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(515, 53, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(516, 54, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(517, 54, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(518, 54, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(519, 54, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(520, 54, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(521, 54, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(522, 54, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(523, 54, 'link_text', 'hidden', 'Link Text', 0, 0, 0, 0, 1, 1, '{}', 8),
(524, 54, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(525, 54, 'order', 'hidden', 'Order', 0, 0, 0, 0, 1, 1, '{\"default\":\"0\"}', 10),
(526, 54, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(527, 54, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(528, 54, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(529, 54, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(530, 56, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(531, 56, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(532, 56, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 0, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(533, 56, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(534, 56, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(535, 56, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(536, 56, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(537, 56, 'link_text', 'hidden', 'Link Text', 0, 0, 0, 0, 1, 0, '{}', 8),
(538, 56, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(539, 56, 'order', 'hidden', 'Order', 0, 0, 0, 0, 1, 1, '{\"default\":\"0\"}', 10),
(540, 56, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(541, 56, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(542, 56, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(543, 56, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(544, 57, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(545, 57, 'theme_type', 'hidden', 'Theme Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Blue\",\"R\":\"Red\"}}', 2),
(546, 57, 'alignment_type', 'hidden', 'Alignment Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"B\",\"options\":{\"B\":\"Bottom\",\"R\":\"Right\"}}', 3),
(547, 57, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(548, 57, 'description', 'radio_btn', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(549, 57, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(550, 57, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 7),
(551, 57, 'link_text', 'hidden', 'Link Text', 0, 0, 0, 0, 1, 0, '{}', 8),
(552, 57, 'link_type', 'hidden', 'Link Type', 0, 0, 0, 0, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 9),
(553, 57, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{\"default\":\"0\"}', 10),
(554, 57, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 11),
(555, 57, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 12),
(556, 57, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(557, 57, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(558, 12, 'story_of_hope', 'checkbox', 'Story Of Hope', 1, 1, 1, 1, 1, 1, '{}', 25),
(559, 12, 'join_us_block', 'checkbox', 'Show Mailing Block', 1, 1, 1, 1, 1, 1, '{}', 28),
(561, 12, 'body_heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 7),
(562, 26, 'bg_style', 'select_dropdown', 'Background Style', 0, 1, 1, 1, 1, 1, '{\"default\":\"auto\",\"options\":{\"auto\":\"AUTO\",\"white\":\"WHITE\",\"light\":\"LIGHT\",\"dark\":\"DARK\"}}', 3),
(563, 11, 'redirect', 'text', 'Redirect', 0, 0, 1, 1, 1, 1, '{}', 6),
(564, 12, 'blog_heading', 'text', 'Blogs Heading', 0, 1, 1, 1, 1, 1, '{}', 26),
(565, 45, 'layout_style', 'number', 'Layout Style', 0, 1, 1, 1, 1, 1, '{}', 4),
(566, 44, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 15),
(567, 44, 'layout_template', 'number', 'Layout Template', 0, 1, 1, 1, 1, 1, '{}', 16),
(568, 42, 'link2', 'text', 'Second Link', 0, 1, 1, 1, 1, 1, '{\"description\":\"Link Format Like This :- https:\\/\\/exm.com OR https:\\/\\/www.exm.com\",\"validation\":{\"rule\":\"sometimes|nullable|url\"}}', 11),
(569, 42, 'link2_text', 'text', 'Second Link Text', 0, 1, 1, 1, 1, 1, '{}', 12),
(570, 42, 'link2_type', 'text', 'Second Link Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUTTON\",\"options\":{\"BUTTON\":\"BUTTON\",\"HYPERLINK\":\"HYPERLINK\"}}', 13),
(571, 43, 'donor_type', 'text', 'Donor Type', 0, 1, 1, 1, 1, 1, '{}', 8),
(572, 43, 'payment_method', 'select_dropdown', 'Payment Method', 0, 1, 1, 1, 1, 1, '{\"options\":{\"One Time Donation\":\"One Time Donation\",\"Monthly Donation\":\"Monthly Donation\"}}', 9),
(573, 43, 'donation_amount', 'text', 'Donation Amount', 0, 1, 1, 1, 1, 1, '{}', 11),
(574, 59, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(575, 59, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(576, 59, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(577, 59, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(578, 59, 'order', 'text', 'Order', 0, 0, 0, 0, 0, 0, '{}', 5),
(579, 59, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"Our Team\",\"options\":{\"Our Team\":\"Our Team\"}}', 6),
(580, 59, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"edit\":{\"rule\":\"sometimes\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"add\":{\"rule\":\"required\",\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"messages\":{\"dimensions\":\"Please upload the image of width=1440px,height=828 dimension\"}},\"resize\":{\"width\":\"500\",\"height\":\"544\"},\"quality\":\"70%\",\"upsize\":true}', 7),
(581, 59, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"A\",\"options\":{\"D\":\"INACTIVE\",\"A\":\"ACTIVE\"}}', 8),
(582, 59, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 9),
(583, 59, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(584, 59, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(585, 45, 'bg_style', 'select_dropdown', 'Background Style', 0, 1, 1, 1, 1, 1, '{\"default\":\"auto\",\"options\":{\"auto\":\"AUTO\",\"white\":\"WHITE\",\"light\":\"LIGHT\",\"dark\":\"DARK\"}}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'App\\Http\\Controllers\\UserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-19 04:19:24', '2021-03-10 19:10:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'App\\Http\\Controllers\\RoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-19 04:19:24', '2020-11-25 13:05:27'),
(4, 'categories', 'categories', 'Footer Navigation', 'Footer Navigations', 'voyager-categories', 'App\\Models\\Category', NULL, 'App\\Http\\Controllers\\PrimaryCategoryController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-19 04:19:24', '2021-03-22 11:41:22'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-19 04:19:25', '2020-11-28 13:38:07'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-19 04:19:25', '2021-01-16 19:39:44'),
(8, 'trustees', 'trustees', 'Trustee', 'Trustees', 'voyager-group', 'App\\Models\\Trustee', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"order\",\"order_display_column\":\"order\",\"order_direction\":\"asc\",\"default_search_key\":\"order\",\"scope\":null}', '2020-10-24 14:23:31', '2020-11-30 11:17:10'),
(9, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"order\",\"scope\":null}', '2020-10-24 14:27:15', '2021-01-27 17:58:30'),
(11, 'primary_categories', 'primary-categories', 'Main Navigation', 'Main Navigations', 'voyager-news', 'App\\Models\\PrimaryCategory', NULL, 'App\\Http\\Controllers\\PrimaryCategoryController', NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"order\",\"scope\":null}', '2020-10-25 11:47:46', '2021-03-31 07:26:26'),
(12, 'primary_pages', 'primary-pages', 'Main Page', 'Main Pages', 'voyager-window-list', 'App\\Models\\PrimaryPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-25 12:05:05', '2021-03-31 12:47:45'),
(14, 'editors', 'editors', 'Editor', 'Editors', 'voyager-news', 'App\\Models\\Editor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(16, 'right_side_banners', 'right-side-banners', 'Right Side Banner', 'Right Side Banners', 'voyager-photos', 'App\\Models\\RightSideBanner', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"order\",\"scope\":null}', '2020-11-21 14:09:35', '2021-01-27 17:58:40'),
(22, 'contact_us', 'contact-us', 'Contact Us', 'Contact Us', 'voyager-mail', 'App\\Models\\ContactU', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-22 13:33:13', '2020-11-22 13:33:13'),
(23, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(24, 'newsletter_subscriptions', 'newsletter-subscriptions', 'Newsletter Subscription', 'Newsletter Subscriptions', 'voyager-mail', 'App\\Models\\NewsletterSubscription', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(26, 'primary_page_sections', 'primary-page-sections', 'Primary Page Section', 'Primary Page Sections', NULL, 'App\\Models\\PrimaryPageSection', NULL, 'App\\Http\\Controllers\\PrimarySubPageController', NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-30 13:00:17', '2021-04-01 10:31:56'),
(29, 'primary_page_section_cards', 'primary-page-section-cards', 'Primary Page Section Card', 'Primary Page Section Cards', 'voyager-news', 'App\\Models\\PrimaryPageSectionCard', NULL, 'App\\Http\\Controllers\\PrimarySubPageController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-30 13:53:56', '2021-03-25 11:51:44'),
(32, 'career_management', 'career-management', 'Career Management', 'Career Managements', 'voyager-list', 'App\\Models\\CareerManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-06 19:21:56', '2021-03-18 17:37:22'),
(33, 'cause_management', 'cause-management', 'Cause Management', 'Cause Managements', 'voyager-window-list', 'App\\Models\\CauseManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-06 19:36:19', '2021-01-06 19:37:20'),
(34, 'gallery_management', 'gallery-management', 'Gallery Management', 'Gallery Managements', 'voyager-images', 'App\\Models\\GalleryManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(35, 'ngo_management', 'ngo-management', 'Ngo Management', 'Ngo Managements', 'voyager-list', 'App\\Models\\NgoManagement', NULL, NULL, 'Note: Strick (*) mark use for the mandatory fields', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-06 20:05:18', '2021-01-14 17:13:08'),
(38, 'resource_management', 'resource-management', 'Resource Management', 'Resource Managements', 'voyager-window-list', 'App\\Models\\ResourceManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(42, 'campaign_management', 'campaign-management', 'Campaign Management', 'Campaign Managements', 'voyager-list', 'App\\Models\\CampaignManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-06 20:50:39', '2021-04-06 11:27:20'),
(43, 'donations', 'donations', 'Donation', 'Donations', 'voyager-wallet', 'App\\Models\\Donation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-14 17:13:57', '2021-04-13 08:35:59'),
(44, 'footer_page_section_cards', 'footer-page-section-cards', 'Footer Page Section Card', 'Footer Page Section Cards', NULL, 'App\\Models\\FooterPageSectionCard', NULL, 'App\\Http\\Controllers\\FooterSubPageController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-21 17:08:24', '2021-04-06 05:12:34'),
(45, 'footer_page_sections', 'footer-page-sections', 'Footer Page Section', 'Footer Page Sections', NULL, 'App\\Models\\FooterPageSection', NULL, 'App\\Http\\Controllers\\FooterSubPageController', NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-21 17:09:18', '2021-04-24 06:50:14'),
(47, 'featured_stories', 'featured-stories', 'Featured Story', 'Featured Stories', 'voyager-list', 'App\\Models\\FeaturedStory', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-22 17:33:39', '2021-02-03 17:19:32'),
(48, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-documentation', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-23 19:37:03', '2021-03-18 17:50:38'),
(49, 'authors', 'authors', 'Author', 'Authors', 'voyager-edit', 'App\\Models\\Author', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(50, 'notifications', 'notifications', 'Notification', 'Notifications', 'voyager-bell', 'App\\Models\\Notification', NULL, 'App\\Http\\Controllers\\NotificationController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-01 18:51:31', '2021-02-03 18:39:07'),
(51, 'publications', 'publications', 'Publication', 'Publications', 'voyager-list', 'App\\Models\\Publication', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-18 19:35:18', '2021-03-18 19:36:46'),
(52, 'stories_of_hopes', 'stories-of-hopes', 'Stories Of Hope', 'Stories Of Hopes', 'voyager-list', 'App\\Models\\StoriesOfHope', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(53, 'press_releases', 'press-releases', 'Press Release', 'Press Releases', 'voyager-list', 'App\\Models\\PressRelease', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(54, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', 'voyager-list', 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(56, 'in_the_news', 'in-the-news', 'In The News', 'In The News', 'voyager-list', 'App\\Models\\InTheNews', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(57, 'annual_reports', 'annual-reports', 'Annual Report', 'Annual Reports', 'voyager-list', 'App\\Models\\AnnualReport', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(59, 'our_teams', 'our-teams', 'Our Team', 'Our Teams', 'voyager-group', 'App\\OurTeam', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"order\",\"order_display_column\":\"order\",\"order_direction\":\"asc\",\"default_search_key\":\"order\",\"scope\":null}', '2021-04-10 09:00:01', '2021-04-15 12:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `givig_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `donor_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation_amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `name`, `email`, `user_id`, `mobile`, `organization`, `nationality`, `givig_amount`, `payment_mode`, `address`, `country`, `state`, `city`, `pan_number`, `status`, `created_at`, `updated_at`, `deleted_at`, `donor_type`, `payment_method`, `donation_amount`) VALUES
(9, 'mahesh', 'mahesh@gmail.com', NULL, 2147483647, 'MBA', 'India', 500.00, 'By Card', 'Test demo address', 'india', 'Rajasthan', 'jofhpur', '45646465', 'D', '2021-02-01 10:36:51', '2021-02-01 10:36:51', NULL, NULL, NULL, NULL),
(11, 'Nikhil Sharma', 'nikhil.rsharma@hotmail.com', NULL, 2147483647, 'TEST', 'INDIAN', 50.00, 'By Card', 'Address', 'India', 'Rajasthan', 'Jodhpur', 'xxxxx0000x', 'D', '2021-04-08 08:12:35', '2021-04-08 08:12:35', NULL, NULL, NULL, NULL),
(13, 'Aryan', 'aryan.solanki@cafindia.org', NULL, 2147483647, NULL, 'Indian', 0.00, 'Debit Card Card', '215', 'Canada', 'up', 'noida', 'klpds7905d', 'A', '2021-05-20 12:57:24', '2021-05-20 12:57:24', NULL, 'Indian Donors', 'One Time Donation', 750),
(14, 'Aryan', 'aryan.solanki@cafindia.org', NULL, 2147483647, NULL, 'Indian', 0.00, 'Credit Card', '215', 'Canada', 'up', 'noida', 'ccccc7777j', 'A', '2021-05-21 05:48:14', '2021-05-21 05:48:14', NULL, 'Indian Donors', 'One Time Donation', 750),
(15, 'test', 'test@gmail.com', NULL, 2147483647, NULL, 'Indian', 0.00, 'Debit Card Card', 'test address', 'india', 'rahathan', 'jodhpss', 'BAJPC4350M', 'A', '2021-06-14 06:15:13', '2021-06-14 06:15:13', NULL, 'Indian Donors', 'Monthly Donation', 100),
(16, 'Manish Rawat', 'manish.rawat@cafindia.org', NULL, 2147483647, NULL, 'Indian', 0.00, 'Net Banking', '972, Sector, R>K. Puram', 'India', 'Delhi', 'New Delhi', 'ALUPR3652G', 'A', '2021-08-16 10:39:45', '2021-08-16 10:39:45', NULL, 'Indian Donors', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`id`, `title`, `link`, `slug`, `content`, `order`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Two Decades', NULL, 'two-decades', '<p style=\"text-align: center;\"><strong>Two Decades</strong></p>', 1, NULL, 'A', '2020-10-25 13:11:08', '2020-10-25 13:11:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_stories`
--

CREATE TABLE `featured_stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_stories`
--

INSERT INTO `featured_stories` (`id`, `theme_type`, `alignment_type`, `primary_page_id`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'B', NULL, 1, 'Featured Story', '<p><strong>Devi Will Win The Race</strong></p>\r\n<p>Hailing from a small village, called Kuranda in Nagercoil, Devi, 14 joined Isha Vidhya (a unit of Isha Education) as a pre-schooler. In this short span of time, Devi and her family have been through several ups and downs.</p>', 'featured-stories/March2021/uAzB3olmAa0aybSKaruN.PNG', 'http://cafindia.jaisalmercity.com/contact-us', 'Read More', 'HYPERLINK', 1, 'A', '2021-01-27 18:37:43', '2021-03-11 11:47:25', NULL),
(8, 'R', NULL, 5, 'Join our mailing list for Individual Giving', '<p>Stay up to date on global charitable giving news &amp; trends, read stories of philanthropay and learn how the philanthropic landscape is changing.</p>', NULL, 'https://cafindia.jaisalmercity.com/register', 'CLICK HERE TO SIGN-UP', 'BUTTON', 1, 'A', '2021-01-27 18:51:14', '2021-03-03 14:09:27', NULL),
(9, 'B', NULL, 0, 'Related Materials', '<p><a href=\"https://cafindia.jaisalmercity.com/blog/details/let-us-uphold-the-spirit-of-ngo-workers-who-continue-to-work-in-the-face-of-adversity\"><img style=\"float: left;\" src=\"https://cafindia.jaisalmercity.com/public/storage/featured-stories/March2021/oie_xHVZozSWSRN2.png\" alt=\"\" />BLOG: The lockdown affected the lives of some of the most vulnerable communities across the country...</a></p>\r\n<p><a href=\"https://cafindia.jaisalmercity.com/blog/details/caf-india-s-covid-response-campaign-we-did-it-but-we-have-miles-to-go\"><img style=\"float: left;\" src=\"https://cafindia.jaisalmercity.com/public/storage/featured-stories/March2021/oie_xHVZozSWSRN2.png\" alt=\"\" />BLOG: As the COVID-19 pandemic tightens its grip around the nation and case count reaching a new high every day...</a></p>', NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-03 16:30:13', '2021-03-03 16:33:37', NULL),
(10, 'B', NULL, 0, 'Featured Story 11', '<p>Test Test test</p>', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'HYPERLINK', 1, 'A', '2021-03-15 09:39:26', '2021-03-15 09:39:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footer_page_sections`
--

CREATE TABLE `footer_page_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer_page_id` int(11) NOT NULL,
  `template_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CARDS',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `columns_in_rows` int(11) NOT NULL DEFAULT '4',
  `layout_style` tinyint(4) DEFAULT '1',
  `bg_style` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'auto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_page_sections`
--

INSERT INTO `footer_page_sections` (`id`, `footer_page_id`, `template_type`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `columns_in_rows`, `layout_style`, `bg_style`) VALUES
(45, 6, 'MEDIA', 'We are CAF India', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"EN-IN\" style=\"mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; color: black; mso-themecolor: text1; mso-ansi-language: EN-IN;\">For over two decades, we have revived India&rsquo;s rich tradition of giving and made it more strategic. Breaking stereotypes about charity, we work with some of the most credible NGOs to make sure that not a single penny of our donations go waste. </span></p>', 'footer-page-sections/January2021/cvaXj9VDeclmg5A60KmL.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Read our Brochure', 'HYPERLINK', 2, 'A', '2021-01-22 07:10:41', '2021-04-13 07:22:59', NULL, 2, 1, 'auto'),
(50, 6, 'CARDS', 'Impact Stories', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 3, 'A', '2021-01-22 08:10:13', '2021-04-13 07:22:52', NULL, 3, 1, 'auto'),
(51, 6, 'CARDS', 'Knowledge Centre', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 4, 'A', '2021-01-22 11:21:35', '2021-04-13 07:22:44', NULL, 3, 3, 'auto'),
(53, 26, 'CARDS', 'CAF India Annual Reports', '<p class=\"MsoNormal\">We believe in honesty and conduct our operations with utmost transparency. Every year, we publish our annual reports, which outline our achievements and impact during the course of the year and along with our audited financial statements and vision for the next year.&nbsp;</p>\r\n<p class=\"MsoNormal\">Full disclosure of our activities and performance is available for all to see within these PDF documents.</p>', 'footer-page-sections/January2021/vU3qBJIn4ULkVwCCczS4.jpg', NULL, 'http://cafindia.jaisalmercity.com/who-we-are/Annual-Reports-And-Financials', 'Read More..', 'HYPERLINK', NULL, 'A', '2021-01-23 07:22:14', '2021-09-03 07:52:05', NULL, 4, 1, 'auto'),
(54, 7, 'MEDIA', 'Meet the Board of Trustees', '<p class=\"MsoNormal\">We have an independent Board of Trustees, chaired by Mr Som Mittal, former chairman and president of NASSCOM. The Board meets every quarter to assess the progress and the way forward.</p>', 'footer-page-sections/January2021/iNIbGRd5nCLq1d8Xj6nT.jpg', NULL, 'https://cafindia.jaisalmercity.com/trustees', 'Board of Trustees', 'BUTTON', NULL, 'A', '2021-01-23 08:05:06', '2021-04-10 08:18:49', NULL, 2, 1, 'auto'),
(55, 7, 'MEDIA', 'Meet the Executive Team', '<p class=\"MsoNormal\">Our Executive Team spearheads a highly motivated team committed to make giving more effective and impactful in India.</p>', 'footer-page-sections/January2021/yw9zRPknpX9J2hBchXPy.jpg', NULL, 'https://cafindia.jaisalmercity.com/team', 'Executive Team (SMT)', 'BUTTON', NULL, 'A', '2021-01-23 08:08:32', '2021-04-15 12:50:55', NULL, 2, 1, 'auto'),
(59, 33, 'MEDIA', 'About us', '<p>We exist because we want to make giving go further. Learn more about us-- our work and our journey over the past two decades.</p>', 'footer-page-sections/March2021/mgI8o1WoBMPxgiS1d2ZQ.jpg', 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'https://cafindia.jaisalmercity.com/who-we-are/about-us', 'Learn More', 'HYPERLINK', NULL, 'A', '2021-03-03 11:07:45', '2021-04-20 09:00:29', NULL, 2, 1, 'auto'),
(60, 33, 'CARDS', 'About CAF India', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-03-03 13:24:46', '2021-04-16 05:16:47', NULL, 2, 1, 'auto'),
(61, 33, 'CARDS', 'Our Core Values', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-03-03 13:28:58', '2021-03-03 13:28:58', NULL, 4, 1, 'auto'),
(62, 33, 'MEDIA', 'Global Aliance', '<p>We are a part of a global network called CAF Global Aliance, which makes us in tune with global giving trends and best practices&nbsp;</p>\r\n<p>&nbsp;</p>', 'footer-page-sections/May2021/gEplYkJUI4HyqSKqpxHt.jpg', NULL, 'https://cafindia.jaisalmercity.com/who-we-are/global-alliance', 'Learn more..', 'HYPERLINK', NULL, 'A', '2021-03-03 13:36:13', '2021-05-19 07:35:29', NULL, 2, 1, 'auto'),
(63, 33, 'MEDIA', 'Governance', '<p>&nbsp;Find out more about our trustees and our Executive Management Team</p>\r\n<p><a href=\"https://cafindia.jaisalmercity.com/trustees\">Meet the trustees</a></p>\r\n<p><a href=\"https://cafindia.jaisalmercity.com/team\">Meet the Executive Management Team</a></p>', 'footer-page-sections/April2021/zhLwPQFZwmuOZPWDkFgl.jpg', NULL, NULL, NULL, 'HYPERLINK', NULL, 'A', '2021-03-03 13:41:41', '2021-04-20 09:02:26', NULL, 2, 1, 'auto'),
(64, 33, 'MEDIA', 'Annual Reports and Financials', '<p>Learn more about our work through our annual reports and our financial statements.</p>', 'footer-page-sections/May2021/VY5vN5g97TkIQvBSmWI6.jpg', NULL, 'https://cafindia.jaisalmercity.com/who-we-are/Annual-Reports-And-Financials', 'Click here to read', 'HYPERLINK', NULL, 'A', '2021-03-03 13:43:29', '2021-05-19 07:36:02', NULL, 2, 1, 'auto'),
(65, 30, 'CUSTOM', 'Latest News', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-03-16 04:59:24', '2021-04-06 06:42:21', NULL, 4, 1, 'auto'),
(66, 36, 'CUSTOM', NULL, NULL, 'footer-page-sections/April2021/HZSPJ9bzEK3XyMCfjs0P.jpg', NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-03 13:01:04', '2021-04-05 13:23:51', NULL, 4, 2, 'auto'),
(69, 34, 'CUSTOM', 'Latest Publications', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-06 03:44:06', '2021-04-06 03:44:06', NULL, 2, 1, 'auto'),
(70, 29, 'CUSTOM', 'Latest Press Release', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-06 06:31:53', '2021-04-06 10:12:44', NULL, 2, 1, 'auto'),
(71, 28, 'MEDIA', 'CONNECT Workshops', '<p>We conduct multiple capacity building workshops for NGOs called CONNECT &ndash; an acronym for Commune Network Nurture Engage Collaborate Transform.</p>', 'footer-page-sections/April2021/iG5pcQdfhSE1Ew7MIioS.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'BUTTON', NULL, 'A', '2021-04-06 10:09:23', '2021-04-06 10:09:55', NULL, 2, 1, 'auto'),
(72, 28, 'MEDIA', 'Why CONNECT?', '<p>Through these workshops, challenges faced during the programme implementation are addressed. CAF India has tailored training programmes, for NGOs implementing CSR grants, and NGOs implement payroll grants.</p>\r\n<p><strong>Infograph on Benefits of CONNECT</strong>&nbsp;</p>\r\n<p>The Capacity Building Interventions will broadly cover the following aspects :</p>\r\n<ul>\r\n<li>NGO governance</li>\r\n<li>Legal, regulatory and fiscal compliances</li>\r\n<li>Programme &amp; financial management</li>\r\n<li>Monitoring &amp; Evaluation - logical framework,&nbsp;</li>\r\n<li>Result-based management</li>\r\n<li>Need assessment</li>\r\n<li>Writing effective project proposals</li>\r\n<li>Resource mobilization &amp; fundraising</li>\r\n<li>Building effective partnerships</li>\r\n<li>Documentation &amp; report writing</li>\r\n<li>Policies development in NGOs</li>\r\n<li>Building effective HR &amp; financial practices</li>\r\n<li>NGO management</li>\r\n</ul>', 'footer-page-sections/April2021/Bv4JvT0nxWN9SEzTmTKP.jpg', NULL, 'https://cafindia.jaisalmercity.com/for-ngos/capacity-building', 'Learn More', 'BUTTON', NULL, 'A', '2021-04-06 10:11:43', '2021-04-06 10:11:43', NULL, 2, 1, 'auto'),
(73, 31, 'CUSTOM', 'latest posts', NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-10 07:18:34', '2021-04-10 07:18:34', NULL, 2, 3, 'auto'),
(74, 32, 'CUSTOM', NULL, NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-10 07:47:57', '2021-04-10 07:47:57', NULL, 2, 3, 'auto'),
(75, 6, 'CARDS', NULL, NULL, NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-10 08:28:49', '2021-04-24 06:56:04', NULL, 4, 2, 'white'),
(77, 25, 'MEDIA', 'CAF GLOBAL ALLIANCE PARTNERS', '<ul>\r\n<li><a href=\"http://www.cafamerica.org\" target=\"_blank\" rel=\"noopener\">CAF America</a></li>\r\n<li><a href=\"https://good2give.ngo/\" target=\"_blank\" rel=\"noopener\">Good2Give - Australia and New Zealand</a></li>\r\n<li><a href=\"http://www.bcause.bg/en/\" target=\"_blank\" rel=\"noopener\">BCause - Bulgaria</a></li>\r\n<li><a href=\"http://idis.org.br/\" target=\"_blank\" rel=\"noopener\">IDIS - Brazil</a></li>\r\n<li><a href=\"http://www.cafcanada.ca\" target=\"_blank\" rel=\"noopener\">CAF Canada</a></li>\r\n<li><a href=\"http://www.cafrussia.ru/eng\" target=\"_blank\" rel=\"noopener\">CAF Russia</a></li>\r\n<li><a href=\"http://www.cafsouthernafrica.org\" target=\"_blank\" rel=\"noopener\">CAF Southern Africa</a></li>\r\n<li><a href=\"/home\">CAF UK</a></li>\r\n</ul>', 'footer-page-sections/April2021/mLTkcs8nIIzX0BGewPrK.png', NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-21 06:53:46', '2021-04-24 07:01:14', NULL, 2, 1, 'light'),
(78, 25, 'CARDS', 'JOIN THE CAF GLOBAL ALLIANCE', '<p>Are you an organisation that shares our vision of a global generosity movement? Are you looking to join a global network working to strengthen civil society?&nbsp;</p>\r\n<p>What can the CAF Global Alliance offer you?</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-04-21 07:00:20', '2021-04-26 05:49:33', NULL, 4, 1, 'white'),
(79, 25, 'MEDIA', 'CONTACT THE TEAM', '<p>Would you like to learn more?</p>\r\n<p>If you&rsquo;d like to discuss how your organisation can work with the CAF Global Alliance, please get in touch.</p>', 'footer-page-sections/April2021/OmVE3K3fnDrT6RDS2fux.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Get in touch', 'BUTTON', NULL, 'A', '2021-04-22 04:46:53', '2021-04-26 05:56:03', NULL, 2, 1, 'light'),
(80, 10, 'CARDS', 'Creating a Better World', '<p>We work across a cross-section of themes, ensuring that we contribute to India&rsquo;s development story from every aspect.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-17 05:45:07', '2021-05-19 09:52:36', NULL, 4, 1, 'auto'),
(81, 10, 'MEDIA', 'Marching towards our goals', '<p>Our work is in alignment with the developmental goals set by the Indian government as well as the Sustainable Development Goals set by the United Nations.</p>', 'footer-page-sections/May2021/5ABaVcuuPv7lA1todYdE.jpg', NULL, 'https://cafindia.jaisalmercity.com/', 'Download Brochure', 'HYPERLINK', NULL, 'A', '2021-05-17 05:49:54', '2021-05-19 07:37:55', NULL, 2, 1, 'auto'),
(82, 38, 'CARDS', NULL, NULL, NULL, NULL, 'https://cafindia.jaisalmercity.com/', 'Learn more', 'HYPERLINK', NULL, 'A', '2021-05-19 06:17:21', '2021-05-19 06:22:52', NULL, 3, 1, 'auto'),
(83, 40, 'CARDS', 'STEM education', '<p>In our endeavour to inculcate scientific thinking in young minds, we have conceptualised and implemented multiple programmes on Science Technology Engineering and Maths (STEM) Education. They include equipping schools with labs, creation of virtual classrooms, creation of learning material etc.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:03:57', '2021-05-19 07:03:57', NULL, 3, 1, NULL),
(84, 40, 'CARDS', 'Girl Child Education', '<p>Furthering the government&rsquo;s agenda of empowering the girl child, we have implemented projects for girls from tribal and marginalised communities. Through our interventions on girl child education, we have created state of the art libraries, imparted training to teachers and monitored efficient use of the library space. Not only has their quality of life improved, but the projects have improved enrolment, retention and overall learning outcomes.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:12:06', '2021-05-19 07:12:06', NULL, 3, 1, NULL),
(85, 40, 'CARDS', 'Infrastructure Strengthening in Schools', '<p>Infrastructure support and strengthening has been a core area of intervention to provide a secure and conducive environment to school children. We facilitate the repairing and reconstruction of existing infrastructure in schools and anganwadis located in remote geographies. Using the concept of Building As Learning Aid (BALA), we have revamped school infrastructure. Besides construction of boundary walls, classrooms, age and gender-friendly sanitation infrastructure, we encourage tree plantation in schools to keep the environment clean, green and healthy.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:12:56', '2021-05-19 07:12:56', NULL, 3, 1, NULL),
(86, 40, 'CARDS', 'Teacher Training', '<p>A good teacher can inspire hope, ignite the imagination and instil a love of learning. We have therefore supported programmes to create good teachers, who make learning fun. We have integrated technology as a continuous learning and self-assessment tool to further improve teaching practices and enhance student learning environment. Our focus has been to improve the quality of education, especially in government-run primary schools by building capacities of aspiring teachers in digital pedagogical framework trained by state-managed training institutes. We have set up Teacher Resource Laboratories (TRLs) which focus on clearing concepts, and introducing methods to teach science and mathematics at an elementary level.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:13:41', '2021-05-19 07:13:41', NULL, 3, 1, NULL),
(87, 40, 'CARDS', 'Remedial Education', '<p>Through our remedial education programmes, we have been able to send children from underserved communities back to school. We identify children, who have either dropped out, or have never enrolled in schools, or are lagging behind in their class. They are made school-ready by setting up supplementary centres where they are taught using innovative methods. Upon completion of their training, the children are enrolled back to schools at classes appropriate to their learning levels. Children who cannot attend schools in day time due to their engagement in income generating activities are sent to night schools where they are provided supplementary education.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:14:22', '2021-05-19 07:14:22', NULL, 3, 1, NULL),
(88, 40, 'CARDS', 'Support to children with disabilities', '<p>Every child should get equal opportunities in life. But more often than not, the differently-abled are at a disadvantage. To make education inclusive for children with disabilities, we support scholarships, which help the students pursue higher education in science, commerce, arts and music. Our interventions make space for differently-abled children in renowned educational institutions. They also provide residential care, English language improvement, soft skill development, technical training and improved standard of living for the differently abled and underprivileged children. For children who are visually impaired, teachers are trained to educate them through braille-enabled teaching practices.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:14:47', '2021-05-19 07:14:47', NULL, 3, 1, NULL),
(89, 40, 'CARDS', 'Digital Literacy', '<p>The digital revolution has opened doors to multiple possibilities, and we try to put every young individual on the digital bandwagon. Our digital literacy programmes typically stretch over a period of three months, focusing on topics like email etiquette, presentation skills and online research. We have reached out to youth, the visually impaired and students from government and government-aided schools. Special programmes for underserved women ensure access to welfare services, career planning, and financial empowerment.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:15:16', '2021-05-19 07:15:16', NULL, 3, 1, NULL),
(90, 40, 'CARDS', 'Higher Education Support', '<p>We have provided financial assistance to meritorious students, who cannot afford to continue their higher education owing to their financial difficulties. The intervention includes financial assistance, library/book bank facilities and residential skill training programme.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 07:15:42', '2021-05-19 07:15:42', NULL, 3, 1, NULL),
(91, 41, 'CARDS', 'Grey and Storm Water Management', '<p>We have helped create a model sanitation town in Karnataka, with an Integrated waste management system that encompasses, fecal sludge management, solid waste management, grey water management and storm water management. In addition, a small-scale pilot demonstration was also done to look at ways grey and storm water management systems can attract additional resources.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:28:20', '2021-05-19 08:28:20', NULL, 3, 1, NULL),
(92, 41, 'CARDS', 'Water Stewardship programme', '<p>As a part of Climate Smart initiatives, we have supported a Water Stewardship programme in the arid districts of India. This includes construction of water harvesting structures, rehabilitation of traditional structures to increase rain water storage potential, and ground water recharge through aquifer mapping. These measures have helped small and marginal farmers conserve water and overcome issues like soil erosion. They have also been trained to monitor rainfall data, develop water management plans, install water saving units and for sustainable maintenance of the physical infrastructure created in the villages for conserving water.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:28:49', '2021-05-19 08:28:49', NULL, 3, 1, NULL),
(93, 41, 'CARDS', 'Safe and affordable drinking water', '<p>This includes providing access to safe and affordable drinking water to communities residing in the most underserved locations through community-owned-and-operated Safe Water Stations, providing solar-powered water purifying stations to fluoride affected areas and provision of drinking water purification units in schools to promote &ldquo;Happy, Healthy and Active Schools&rdquo;. Also expanding our presence in the flood affected areas by providing drinking water treatment units to reduce the incidence of water borne disease in the aftermath of a disaster.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:29:13', '2021-05-19 08:29:13', NULL, 3, 1, NULL),
(94, 41, 'CARDS', 'Protection and rejuvenation of lakes', '<p>We have supported a &lsquo;Citizen Lake Dashboard&rsquo; which measures the health of lakes in Bangalore. Residents of the areas have been trained in &lsquo;Citizen Science workshops&rsquo; to collect data on water and local flora and fauna. The initiative used wireless data recorders, and research-grade sensors for testing the water quality and manual data collection. And used cloud-based analytics to monitor the health of the lake.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:29:48', '2021-05-19 08:29:48', NULL, 3, 1, NULL),
(95, 42, 'CARDS', 'Technology based support in agriculture', '<p>With mobile technology penetrating rural heartlands of India, we have supported a slew of initiatives that promote mobile-app based courses for farmers. We have supported development of communication platforms to develop a forewarning system about pest attacks to farmers in the coastal regions.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:39:39', '2021-05-19 08:39:39', NULL, 3, 1, NULL),
(96, 42, 'CARDS', 'Climate smart agriculture', '<p>For a monsoon-dependent agrarian economy like India, climate change poses multiple challenges. We introduced a slew of initiatives that will help small and marginal farmers mitigate the challenges. This includes &lsquo;climate adaptation&rsquo; schools in severe drought-prone regions, where farmers are trained on adaptive biophysical practices such as vermicomposting, use of bio-sanitizer tablets etc. Sustainable agricultural interventions have been promoted in desert regions, where model farms were set up to demonstrate best and efficient organic farming practices.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:40:08', '2021-05-19 08:40:08', NULL, 3, 1, NULL),
(97, 42, 'CARDS', 'Inclusion of women in agriculture', '<p>Women are the pillars in a household. We understand the face and thus have supported programmes that empower and train women farmers &ndash; especially from backward communities. Women collectives have been formed to run and manage seed banks and set up facility centres for production and marketing of value chain crops like spices, fruits and vegetables.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:40:43', '2021-05-19 08:40:43', NULL, 3, 1, NULL),
(98, 42, 'CARDS', 'Nutrition Sensitive Agriculture', '<p>Farmers dependant on rainfed agriculture have been trained in agricultural practices that lead to the production of nutritious millets, fruits, vegetables and other livestock-based products in the villages. These programmes focus on producing pesticide-free products. They also focus on improving the nutrition levels of the families especially children, pregnant and lactating mothers. Apart from this, adolescent girls are also sensitised on importance of nutrition-rich balanced diet during adolescence.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:41:15', '2021-05-19 08:41:15', NULL, 3, 1, NULL),
(99, 43, 'CARDS', 'Creating Woman Entrepreneurs', '<p>We are developing the livelihoods of women rescued from trafficking in rural and urban areas as well as women from marginalised communities. They are trained through various entrepreneurship development programmes to run and manage their own enterprises. From micro-entrepreneurship and product designing to creating marketing strategies and getting financial literate, these women are learning it all.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:47:12', '2021-05-19 08:47:12', NULL, 3, 1, NULL),
(100, 43, 'CARDS', 'Reviving traditional arts and crafts-based livelihoods:', '<p>We have helped in the revival of traditional art and crafts-based products by recycling locally available waste materials, thus promoting a unique concept of converting waste to wealth. We ensure structured, long-term development support to establish crafts-based occupation as a sustainable means of income generation and livelihood.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:47:42', '2021-05-19 08:47:42', NULL, 3, 1, NULL),
(101, 43, 'CARDS', 'Leadership Development in youth:', '<p>Leadership development programmes are developed for passionate and enthusiastic youth to enable them lead social change within their communities through leadership and skill development activities. Capacity building on self-awareness, conflict resolution, relationship building, systems thinking and team building as well as organisation development support is given to youth-led start-ups working on issues in education, environment, and community development.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:48:11', '2021-05-19 08:48:11', NULL, 3, 1, NULL),
(102, 43, 'CARDS', 'Livelihood development for disabled:', '<p>Our interventions have created livelihood opportunities for the differently-abled youth, preparing them for the 21st century through skill training programmes. Our beneficiaries face challenges with respect to physical, intellectual, cognitive, mental, sensory and multiple impairments. Many of them also are at a disadvantage because of gender-based violence and discrimination, poverty, caste or minority status. These youngsters have braved all odds to script their success stories.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 08:48:44', '2021-05-19 08:48:44', NULL, 3, 1, NULL),
(103, 43, 'CARDS', 'Skill development for adolescent girls:', '<p>We have helped adolescent girls in tribal areas in enhancing their skills and becoming digitally literate. We have tried to bridge the digital divide and helped the young girls make better life choices.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:05:33', '2021-05-19 09:05:33', NULL, 3, 1, NULL),
(104, 43, 'CARDS', 'Skill development for children', '<p>We have taken a holistic, three-pronged approach to skill underprivileged children and youth, especially adolescent girls. The focus has been to adopt creative learning strategies for digital learning, and vocational skills training. Using innovative methods such as, theatre, art, craft, storytelling, debates, and life skills, etc, we have ensured that the young minds develop both their IQ and EQ.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:05:57', '2021-05-19 09:05:57', NULL, 3, 1, NULL),
(105, 43, 'CARDS', 'Skill development for disabled:', '<p>Youth with physical, mental disabilities and acute spinal injuries receive vocational training in an inclusive environment. Youngsters are thus able to overcome the stigma of disability and learn new vocations such as, becoming digitally literate, mobile phone repairing, notebook binding and tailoring. Not only this, the intervention also supports the costs for caregivers and living expenses for residential students.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:06:26', '2021-05-19 09:06:26', NULL, 3, 1, NULL),
(106, 43, 'CARDS', 'Skill development for migrant families:', '<p>The intervention extends support to migrant communities in urban areas. It provides them skill development trainings, focusing on education and empowerment of girls. Bridge classes are conducted for girls who are drop outs to make them school ready. Initiatives have been taken to reduce gender disparities among the communities by undertaking various awareness raising methods.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:06:53', '2021-05-19 09:06:53', NULL, 3, 1, NULL),
(107, 43, 'CARDS', 'Skill development for women:', '<p>We have supported in creation of Information and Communication Technology (ICT)-enabled Community Resource Centres (CRC) for women of different age groups ranging from six to 55 years and over. These CRCs use webinars and multimedia content to provide vocational training and digital literacy skills.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:07:17', '2021-05-19 09:07:17', NULL, 3, 1, NULL),
(108, 57, 'CARDS', 'Develop systems for Monitoring, Evaluation, Accountability and Learning (MEAL):', '<p>The intervention supports a result-based monitoring system which tracks social development programmes on Child Rights and uses analytics to test assumptions and measure progress, social impact, and outcomes across all the programmes. The initiative focuses on impact measurement of programmes in a quantifiable manner and bring more accountability to the core stakeholder of the programme i.e. children and protection of their rights. This intervention is an example of how efficiently resources and technology can be used for the following: measure coverage, improve efficiency, and offer real-time on ground solutions to beneficiaries.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:27:15', '2021-05-19 09:27:15', NULL, 3, 1, NULL),
(109, 57, 'CARDS', 'Institutional Capacity building of NGOs:', '<p>The programme supports capacity building and establishes scalable models of good governance and financial accountability for non-for-profit organizations in India. The intervention promotes creation of scalable &amp; replicable models of accountability in terms of financial management, governance, legal compliance, control systems, and operational excellence.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:27:42', '2021-05-19 09:27:42', NULL, 3, 1, NULL),
(110, 59, 'CARDS', 'On the Renewable Energy Bandwagon', '<p>We have helped create a &lsquo;Renewable Energy Empowered Model Village&rsquo; by building a sustainable renewable energy-enabled ecosystem. With solar power in its core, this eco-system powers all aspects of the village, which includes education, empowerment, livelihoods, women empowerment, youth skill enhancement etc.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:29:41', '2021-05-19 09:29:41', NULL, 3, 1, NULL),
(111, 59, 'CARDS', 'Creating Green Schools', '<p>The initiative assists schools and educational institutions to become &lsquo;Green Campuses&rsquo;. The schools promote environmental literacy as well as optimize energy efficiency. They promote sustainable mobility thereby reducing air pollution and minimize waste generation. The schools are also solar powered, they harvest rainwater, creating a healthy space for young minds to flourish.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:30:08', '2021-05-19 09:30:08', NULL, 3, 1, NULL),
(112, 55, 'CARDS', 'Support to children with disability:', '<p>We have extended support to children and adolescents (especially girls), who have been suffering from leprosy. We provided them healthcare and education ensuring a life of dignity. In another intervention, we have supported physiotherapy departments of healthcare facilities to assisting infants, children, and young adults overcome neuro-developmental delays and disabilities. The programme supports regular medical screenings in underserved communities, evidence-based research and awareness workshops in schools. We have also supported underprivileged children born with clefts with their surgeries and a comprehensive post-operative care including speech therapy and orthodontic treatment</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:31:23', '2021-05-19 09:31:23', NULL, 3, 1, NULL),
(113, 55, 'CARDS', 'Support to elderly person with disability:', '<p>To empower senior citizens with disabilities we have set up knowledge and community centres for providing them access to online courses, trainings and other awareness programmes</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:31:50', '2021-05-19 09:31:50', NULL, 3, 1, NULL),
(114, 55, 'CARDS', 'Digital literacy for disabled:', '<p>People with disabilities can access opportunities on employment, training, skilling and entrepreneurship through Mobile-Vaani an interactive voice and video-based response system that allows disabled people to create and share digital content and connect as a community.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:32:41', '2021-05-19 09:32:41', NULL, 3, 1, NULL),
(115, 55, 'CARDS', 'Digital literacy for disabled:', '<p>People with disabilities can access opportunities on employment, training, skilling and entrepreneurship through Mobile-Vaani an interactive voice and video-based response system that allows disabled people to create and share digital content and connect as a community.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:32:41', '2021-05-19 09:32:41', NULL, 3, 1, NULL),
(116, 51, 'CARDS', 'Health', '<p>Over the years we have supported a wide range of interventions. While we helped children with complex heart disorders, blood cancer and thalassemia battle their disease; we helped detect cancer in adults and supported palliative homecare and treatment. Besides this, we have helped in immunization of children and expectant mothers from marginalized communities. Holistic support has been extended to people affected with HIV/AIDS and comprehensive specialty eye care services have been provided to people affected with ophthalmic diseases. Interventions have also been designed for improving the quality of life of homeless people, youth and adults suffering from mental health disorders.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:33:29', '2021-05-19 09:33:29', NULL, 3, 1, NULL),
(117, 51, 'CARDS', 'Nutrition', '<p>Malnutrition in India is an issue that needs urgent attention. To respond to the situation and break the cycle of poverty, we have provided nutritious food, dietary supplements to anemic and underweight children and mothers. The aim is to reduce child and maternal mortality rates. As a part of the initiative, we have provided nutritious midday meals in schools and spread awareness among pregnant and lactating mothers about the importance of nutrition.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:33:55', '2021-05-19 09:33:55', NULL, 3, 1, NULL),
(118, 52, 'CARDS', 'Infrastructure support in schools and Anganwadis', '<p>Our interventions have led to the creation of better schools and anganwadis which have well-designed, gender-friendly and age/height appropriate sanitation infrastructures like toilets, and drinking water stations.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:34:44', '2021-05-19 09:34:44', NULL, 3, 1, NULL),
(119, 52, 'CARDS', 'Menstrual Hygiene Management', '<p>The programme promotes reusable, low-cost sanitary pads which are locally manufactured. Women and young girls are made aware of good hygiene practices</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:35:13', '2021-05-19 09:35:13', NULL, 3, 1, NULL),
(120, 52, 'CARDS', 'Water, Sanitation and Hygiene (WASH) awareness in schools', '<p>We have conducted awareness campaigns for proper usage and maintenance of sanitation facilities</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:35:48', '2021-05-19 09:35:48', NULL, 3, 1, NULL),
(121, 52, 'CARDS', 'Provision of Bio-toilets & Incinerators', '<p>The programme is promoting bio toilets and incinerators for safe and hygienic disposal of sanitary pads in government primary schools. This green solution is sustainable and it is backed with capacity building and awareness activities around menstrual hygiene and sanitation.</p>', NULL, NULL, NULL, NULL, 'BUTTON', NULL, 'A', '2021-05-19 09:36:13', '2021-05-19 09:36:13', NULL, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footer_page_section_cards`
--

CREATE TABLE `footer_page_section_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer_page_section_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_icon` int(11) DEFAULT '1',
  `order` int(11) DEFAULT '1',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_template` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_page_section_cards`
--

INSERT INTO `footer_page_section_cards` (`id`, `footer_page_section_id`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `image_icon`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `slug`, `layout_template`) VALUES
(28, 44, 'Banners Testing', '<p>afasfas</p>', 'footer-page-section-cards/January2021/eVpGDJ3cPX2QB6FkyDFC.png', NULL, NULL, 'BUTTON', 1, NULL, 'A', '2021-01-21 18:41:21', '2021-01-21 18:54:02', NULL, NULL, 1),
(29, 50, 'Featured IMPACT Stories', '<p>Learn how Accenture is empowering rural women in Rajasthan.</p>', 'footer-page-section-cards/January2021/2wx7dcqskMz49KcIkKG2.jpg', NULL, 'Learn More', 'HYPERLINK', 1, NULL, 'A', '2021-01-22 11:13:35', '2021-04-10 11:21:50', NULL, 'Featured IMPACT Stories', NULL),
(30, 50, 'Featured IMPACT Stories', '<p>Oracle&rsquo;s effort to save the wild Asiatic Buffalo</p>', 'footer-page-section-cards/January2021/xadbZPJWMaSixjmNhT6O.jpg', NULL, NULL, 'HYPERLINK', 1, NULL, 'A', '2021-01-22 11:16:38', '2021-04-10 11:22:03', NULL, NULL, NULL),
(31, 50, 'Featured IMPACT Stories', '<p>Employees for JLL Support COVID relief work .</p>', 'footer-page-section-cards/January2021/m7G2weaW417CJTShu2Mb.jpg', NULL, 'Learn More', 'HYPERLINK', 1, NULL, 'A', '2021-01-22 11:17:29', '2021-04-10 11:22:16', NULL, NULL, NULL),
(33, 51, 'News from CAF India', '<p>Our media team is one of the leading sources of information and insights on charities and giving.</p>', 'footer-page-section-cards/January2021/GB1c7wMN9hY2p5POTGFg.jpg', 'http://cafindia.jaisalmercity.com/media/press-releases', 'Read Press Releases', 'BUTTON', 1, NULL, 'A', '2021-01-22 11:24:10', '2021-04-10 11:26:36', NULL, NULL, NULL),
(34, 51, 'Our Blogs', '<p>Our in-house bloggers actively express themselves on the current developmental scenario in India.</p>', 'footer-page-section-cards/January2021/M9UaIRs4HdtqeSxa7vBM.jpg', 'http://cafindia.jaisalmercity.com/media/blogs', 'Blogs from CAF India', 'BUTTON', 1, NULL, 'A', '2021-01-22 11:26:05', '2021-04-10 11:20:20', NULL, NULL, NULL),
(35, 51, 'Resource Hub', '<p>Learn more about the laws that govern NGOs and CSR.</p>', 'footer-page-section-cards/January2021/esoKtNMVzivc234Ilbhq.jpg', 'http://cafindia.jaisalmercity.com/', 'Visit our Resource Hub', 'BUTTON', 1, NULL, 'A', '2021-01-22 11:27:13', '2021-04-10 11:27:18', NULL, NULL, NULL),
(36, 51, 'Publications', '<p>Our reports and researches give a deep and an analytical view of philanthropy, CSR and development in India.</p>', 'footer-page-section-cards/January2021/trNQmruOx2SLxuT1PTLJ.jpg', 'https://cafindia.jaisalmercity.com/media/publications', 'View our Publications', 'BUTTON', 1, NULL, 'A', '2021-01-22 12:21:00', '2021-04-20 09:04:34', NULL, NULL, NULL),
(37, 51, 'Our Campaigns', '<p>We create fundraising and volunteering campaigns to allow our donors to engage with causes that are pertinent to India&rsquo;s development goals.</p>', 'footer-page-section-cards/January2021/KkUYylg6lWsAuSqJ1qRg.jpg', 'http://cafindia.jaisalmercity.com/for-companies/Corporate%20Campaigns', 'View our Campaigns', 'BUTTON', 1, NULL, 'A', '2021-01-22 12:22:42', '2021-04-20 09:05:47', NULL, NULL, NULL),
(39, 60, 'Our Vision', '<p>To build a society motivated to give ever more effectively and help transform lives and communities.</p>', 'footer-page-section-cards/April2021/52nuOBBK9BYM7Ej4IOwv.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:25:57', '2021-04-16 04:12:02', NULL, NULL, 1),
(40, 60, 'Our Mission', '<p>To nurture the culture of strategic giving and collaborations for a more equitable and sunstainable society.</p>', 'footer-page-section-cards/April2021/4XLtTIPmGOHbWjXZjWev.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:26:47', '2021-04-16 04:12:22', NULL, NULL, 1),
(41, 61, 'Trust', '<p>We base our mission pursuit on trust. Every dimension of our work is and opportunity to buld it further. We are dependable, open in our thoughts and honest in our deeds.</p>', 'footer-page-section-cards/April2021/x87D1SAlBpEt2r3pDQLn.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:30:06', '2021-04-16 04:22:09', NULL, NULL, 1),
(42, 61, 'Support', '<p>We are passionate about writing India`s development story along with our partners. We walk every step of their journey to realise their dreams and create real impact.</p>', 'footer-page-section-cards/April2021/Kra4VPPGzWVelloVRwWf.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:31:06', '2021-04-16 04:22:28', NULL, NULL, 1),
(43, 61, 'Integrity', '<p>We live honest and refuse to compromise our morals. Our commitment is to remain open, transparent and ethical.</p>', 'footer-page-section-cards/April2021/JINAJ14jDPJ2sENuj5rM.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:31:59', '2021-04-16 04:23:55', NULL, NULL, 1),
(44, 61, 'Inclusivity', '<p>We respect diversity, nurture empathy, exercise equality,equity and democratic values. Our life force is to compassionately forge ahead, with the spirit of \'leaving no one behind\'.</p>', 'footer-page-section-cards/April2021/nKJQ1pRuCWM8gFVGP9mI.png', NULL, NULL, 'HYPERLINK', 2, NULL, 'A', '2021-03-03 13:33:30', '2021-04-16 04:24:14', NULL, NULL, 1),
(46, 66, 'Aarti’s battle with Leprosy', '<p>As a young woman Aarti Devi could not understand why she was developing scaly patches on her hands and feet. She ignored the problem and after some time her hands and feet started deforming. She had leprosy and due to lack of treatment her scaly patches had aggravated. Aarti, now 45, lives in Sundarpur leprosy colony with suffering from leprosy.</p>\r\n<p>Soon after her diagnosis, she was connected to social organisations working on leprosy. She learnt a lot of things from the organisations and started taking care of herself. She hasn&rsquo;t had any wound for six years now. She is completely aware of the self-care techniques and has been practicing them regularly.</p>\r\n<p>She wears a special footwear made of microcellular rubber (MCR), which keep her feet protected and comfortable. Before using the MCR footwear, she used to suffer from wounds on her feet.</p>\r\n<p>Aarti works in Little Flower School in Sunder Nagar and is happy that she is finally able to lead a comfortable life.</p>\r\n<p>(Aarti is being supported by employees of DE Shaw in association with Lepra Society and CAF India)</p>', 'footer-page-section-cards/April2021/NinUDlXoFUeavKbzMuX2.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 05:16:13', '2021-04-06 05:16:13', NULL, 'aarti-s-battle-with-leprosy', NULL),
(47, 69, 'The global response to the Covid-19 pandemic', '<p>During these unprecedented times, civil society&rsquo;s unique role and value has never been more evident. It has stepped up to plug critical gaps in the official response and proved unequivocally that it provides a lifeline and quality of life for millions.</p>', 'footer-page-section-cards/April2021/oZf4m3vL0lIb7BFP6VtX.png', 'https://www.cafonline.org/docs/default-source/about-us-global-alliance/the-global-response-to-the-covid-19-pandemic-caf-global-alliance.pdf', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 05:18:50', '2021-04-06 05:18:50', NULL, 'the-global-response-to-the-covid-19-pandemic', NULL),
(48, 69, 'CAF America Covid-19 reports', '<p>Regular reports from CAF America that tell the story of the unfolding trends and the challenges of charitable organizations facing Covid-19 worldwide.</p>', 'footer-page-section-cards/April2021/03SUn6WeZZwCl1mdy75Y.jpg', 'https://www.cafamerica.org/covid19report/', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:14:19', '2021-04-06 06:14:19', NULL, 'caf-america-covid-19-reports', NULL),
(49, 69, 'Gift Aid Emergency Relief campaign briefing', '<p>We are part of a coalition of charities, campaigning for a two year Gift Aid Emergency Relief package.</p>', 'footer-page-section-cards/April2021/n1FmMNG72Pvw7EEWlIb7.jpg', 'https://www.cafonline.org/docs/default-source/about-us-policy-and-campaigns/briefing---gift-aid-emergency-relief-package_2021.pdf', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:15:30', '2021-04-06 06:15:30', NULL, 'gift-aid-emergency-relief-campaign-briefing', NULL),
(50, 66, 'Abhishek Strikes the Right Chords', '<p>A student of Class V, Abhishek Kumar Paswan aspires to be a musician and make his father proud. Recently he was awarded the Raj Saran Varma Scholarship for excellence in English, a stellar milestone for a child who did not know how to speak English when he joined the school in 2015.</p>\r\n<p>Abhishek is an enthusiastic boy, who has been at the forefront of academics as well as extra-curricular activities. Extremely participative, extrovert, Abhishek loves engaging in deep conversations with teachers, mentors as well as his peers, Abhishek gets involved in any work completely immersing himself with complete commitment.</p>\r\n<p>But Abhishek comes from a humble background. His father, Ashok Kumar Paswan is a tea stall vendor and mother Renu Devi is a domestic help. He and his brother, Deepak are the first people to learn English in their family. Each day, Abhishek ensures to read the English newspaper before reaching school.</p>\r\n<p>&ldquo;Abhishek has shown improvement gradually. He is a very keen and attentive child, just needs to gear up his consistency He is an enthusiastic learner and stays focused on the task at hand,&rdquo; says his class teachers.&rdquo; According to the counseling team, he is a very sensitive and humble child who believes in helping and sharing.</p>\r\n<p>Abhishek&rsquo;s education is being sponsored by the employees of CISCO through Lotus Petal Foundation and CAF India&rsquo;s Employee Giving Programme.</p>', 'footer-page-section-cards/April2021/hJi86CN0JuW0Nx08UACR.png', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:24:36', '2021-04-06 06:24:36', NULL, 'abhishek-strikes-the-right-chords', NULL),
(51, 66, 'Devi Will Win the Race', '<p>Hailing from a small village, called Kuranda in Nagercoil, Devi, 14 joined Isha Vidhya (a unit of Isha Education) as a pre-schooler. In this short span of time, Devi and her family have been through several ups and downs.</p>\r\n<p>The family had dealt a severe blow in 2015, when her father, who worked for a fish-net company met with a near-fatal accident. Her father survived but was unable to work. Having a courageous mother was a boon. Devi had barely passed Class VI, yet her mother was determined to educate her children and empower them to chase their dreams. There were times they slept on an empty stomach, but she did not budge from her commitment.</p>\r\n<p>After two trying years, her mother finally landed a job in a fish-net company. Today, she is the sole bread-winner, earning a humble ₹5,000 a month. With no financial support from relatives or friends, the family somehow manages.</p>\r\n<p>Devi is a scholarship student and her education is sponsored by employees of CISCO through CAF India&rsquo;s Employee Giving Programme. Devi excels in sports. From 2015 to 2018, she has won first prize in running, high jump and long jump. She has also won multiple cash prizes. She aims to buck up in academics and excel there too.</p>\r\n<p>Devi is a sportswoman in the making and with the right encouragement and guidance, she will make a name for herself.</p>', 'footer-page-section-cards/April2021/ANN8trfNJruvZRio7Wiz.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:25:52', '2021-04-06 06:25:52', NULL, 'devi-will-win-the-race', NULL),
(52, 70, 'FCRA Bill 2020: Disallowing re-granting between FCRA compliant organisation will cut short India’s development story', '<p>Re-granting between FCRA compliant organisations ensure better and more accountable management of Funds, that already addresses many of the concerns of govt, says Charities Aid Foundation (CAF) India</p>\r\n<p>New Delhi | September 22, 2020 The FCRA Bill 2020 that will be tabled in Rajya Sabha this week aims to make the non-profit sector more compliant and prevent any misappropriation of funds. As a grant-making organisation, it has been our mission to ensure that grants are utilised efficiently in a transparent manner. However, we would like to draw the attention of the government to one particular clause that disallows transfers between FCRA compliant organisations (re-granting).</p>\r\n<p>Re-granting, through Indian entities, helps in better management of funds, more accountability, curtails misappropriation of funds and helps achieve greater impact on the ground. Grant-making serves as a real enabler for most mid to small size NGOs. The clause, once implemented will curtail the funds of many grant-making organisations along with other FCRA-compliant grassroots organisations.</p>\r\n<p>Grassroots organisations, with their ear to the ground have been the real mover-shakers in terms of furthering India&rsquo;s development agenda at the local and hyperlocal levels. We have seen how NGOs worked selflessly during the COVID-19 lockdown. Now as the country gears up to recover from the socio-economic setbacks brought about by the pandemic, NGOs will be instrumental in addressing challenges at local and hyperlocal levels. The abovementioned clause will clip their wings and disallow them to continue with their good work.</p>\r\n<p>Grassroots organizations are already starved for resources and find the much-needed support through the process of sub granting. Restricting re-granting and drastically reducing admin costs can affect many critical services for poor along with millions of jobs in the NGO sector.</p>\r\n<p>The government must encourage the flow of foreign funds, especially from the Indian diaspora. It not only brings in more money into the social sector, but also creates a pathway for knowledge, technological know-how and skills, which will help in addressing poverty and reducing inequalities &ndash;issues that are crucial for achieving the sustainable development goals set by the United Nations. Through our comprehensive validation programme, we chose the most credible and compliant NGOs to implement developmental programmes. For over two decades, we have seen how re-granting has helped in curtailing misappropriation and efficient utilisation of funds, ensuring a positive impact on the lives of people, their communities and environment. It enables a robust system for monitoring, planning and improving projects that feed into the country&rsquo;s development story.</p>\r\n<p>The government should consider leveraging the strength of the re-granting model rather than removing it. We would urge the government to look at the positives of re-granting and remove the abovementioned clause from the FCRA Bill 2020.</p>\r\n<p>For further details, contact: Anindita Datta Choudhury, Lead, Media and Communications, CAF India : +91-9871515804; anindita.choudhury@cafindia.org</p>', NULL, NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:33:12', '2021-04-06 06:33:12', NULL, 'fcra-bill-2020-disallowing-re-granting-between-fcra-compliant-organisation-will-cut-short-india-s-development-story', NULL),
(53, 70, 'Grassroots NGOs get a platform to showcase their products at CAF India’s NGO MELA: #SHOP4GOOD', '<p>Gurgaon | December 21, 2018 | Charities Aid Foundation (CAF) India kick-started a four-day shopping festival (NGO Mela) #Shop4Good, to mark the beginning of the holiday season today at Palam Triangle, Gurugram. The initiative aims to bring together different NGOs committed for driving social change in our community and give wings to the dreams of many who would otherwise not have an opportunity.</p>\r\n<p>The Mela will not only provide an urban platform to artisans and NGOs coming from remote, rural India and showcase their products/produce but also give an opportunity to urban population to buy organic products/produce painstakingly made by the poor artisans.</p>\r\n<p>Mr. Lila Dhar Batra president of Owners Welfare Association, Palam Triangle, Palam Vihar, Gurugram inaugurated the mela, which will continue till December 24. &ldquo;Every product here has a story to share -- a story of victory over heavy odds. It is our endeavour to identify and partner with NGOs and artisans working at the grassroots level and support them in their mission pursuits,&rdquo; said Ms Meenakshi Batra, CEO, CAF India. Ms Batra added that the mela will not only help these NGOs raise funds, but will also enable these organizations build linkages with the bulk buyers for future. &ldquo;Through participation these rural artisans and NGOs will be able to understand the demand and taste of urban customers. Our objective is to make these NGOs economically sustainable.&rdquo;</p>\r\n<p>Some highlights of Mela are: handloom, handicrafts, jewelry and home decor, natural and organic products. The showstopper at the Mela would be organic products manufactured by the artisans. A workshop for rural women from various Self Help Groups (SHGs) will be conducted during the mela, which will help them to enhance their knowledge and sharpen their skills in product design, packaging, marketing and communication skills etc.</p>\r\n<p>Some NGOs participating in the fair are: Read India, Aadi India, TYCIA Foundation, Ropio Foundation, Literacy India, Urmul Rural Health Research and Development Trust Centre for Appropriate Technology &amp; Development, Ecokarma, Adiyuva, Pranab Mukherjee Foundation, Sadhna, Organic Farmers, Energinee and many more.</p>', NULL, NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:36:32', '2021-04-06 06:36:32', NULL, 'grassroots-ngos-get-a-platform-to-showcase-their-products-at-caf-india-s-ngo-mela-shop4good', NULL),
(54, 65, 'INDIA RANKS 124 IN WORLD GIVING INDEX BUT HAS HIGHEST NUMBER OF PEOPLE DONATING MONEY', NULL, NULL, 'https://indianexpress.com/article/india/india-world-giving-index-donations-5424143/', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:43:24', '2021-04-06 06:43:24', NULL, 'india-ranks-124-in-world-giving-index-but-has-highest-number-of-people-donating-money', NULL),
(55, 65, 'CAF INDIA AND ORACLE CONDUCTED REGIONAL CAPACITY-BUILDING WORKSHOPS FOR NONPROFITS', NULL, NULL, 'http://www.csrmandate.org/caf-india-and-oracle-conducted-regional-capacity-building-workshops-for-nonprofits/', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:44:20', '2021-04-06 06:44:20', NULL, 'caf-india-and-oracle-conducted-regional-capacity-building-workshops-for-nonprofits', NULL),
(56, 65, 'AMENDED CSR PROVISIONS STRINGENT, CAF INDIA’S CEO SAYS', NULL, NULL, 'https://indiacsr.in/amended-csr-provisions-stringent-caf-indias-ceo-says/', NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-06 06:45:09', '2021-04-06 06:45:09', NULL, 'amended-csr-provisions-stringent-caf-india-s-ceo-says', NULL),
(57, 73, 'Let us uphold the spirit of NGO workers, who continue to work in the face of adversity', '<p>The lockdown affected the lives of some of the most vulnerable communities across the country, such as migrant labourers, waste pickers, single mothers, artisans and sex workers. It is to cushion the impact of the crisis on these sections, and to ensure their access to essentials, that not-for-profit organizations are sending out appeals for funds.</p>\r\n<p>Despite a crunch of funds, non-profit organizations have risen up to the occasion, to provide food, rations and hygiene kits to the poor, along with awareness generation about the virus and preventing its spread. They are educating people on social distancing, helping to combat the stigma, providing shelter and setting up community kitchens for those in need.&nbsp;</p>\r\n<p>Sudhanshu Singh founder of Humanitarian Aid International says, &ldquo;Dealing with disasters isn&rsquo;t new to us, I have dealt with so many disasters, but we are in an unusual disaster now, which none of us has experienced before. This time it&rsquo;s so difficult because people can&rsquo;t come out and most of the things one has to do alone, as humanitarian workers, we have to be prepared to deal with uncertainties. We not only served cooked food and provided dry ration, we also started conducting online health care programme, gave sanitation support, and helped sanitation workers.&rdquo;</p>', 'footer-page-section-cards/April2021/9lko1eMC3GK2Qs8vDmPk.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:24:52', '2021-04-10 07:24:52', NULL, 'let-us-uphold-the-spirit-of-ngo-workers-who-continue-to-work-in-the-face-of-adversity', NULL),
(58, 73, 'How do we measure impact of our projects?', '<p>Corporate Social Responsibility (CSR) is not just a mere obligation that corporations have to put up with. Today, as we are surrounded by a myriad of development issues and increasing income gaps, several businesses have realised the importance of their responsibility towards the society. Therefore, through their CSR programmes, businesses are striving hard to make a lasting impact.&nbsp;</p>\r\n<p>It is thus imperative for implementing organisations, (the NGOs who execute the CSR project) to put a rigorous impact monitoring mechanism in place. Monitoring and Evaluation (M&amp;E) of CSR initiatives not only help measure the impact, but also help businesses learn from past experiences and improve delivery system of the CSR activities they undertake.</p>\r\n<p>&nbsp;</p>', 'footer-page-section-cards/April2021/WzVCexO2zzXsAv9zARYN.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:30:46', '2021-04-10 07:30:46', NULL, 'how-do-we-measure-impact-of-our-projects', NULL),
(59, 73, 'We are still celebrating Women’s Day in a Man’s World', '<p><em><strong>In the first of a two-part series, we look at how women are still battling gender-based violence in an unequal world.</strong></em></p>\r\n<p>Every year, on International Women&rsquo;s Day, we all tend to ponder about women&rsquo;s rights and our progress towards an egalitarian society.&nbsp; And every year, we are reminded that women are still living in a man&rsquo;s world. Gender-based violence &ndash; domestic violence, rape, sexual assaults and abuse &ndash; have become a way of life for several women in India.</p>\r\n<p>According to the National Family Health Survey (NFHS)-4 (2015-16), one in three women in India face some form of gender-based violence (GBV). The NFHS-5 has reported an increase in the cases of domestic violence in seven states and union territories and an increase in sexual violence among girls less than 18 years old in nine states and UTs.</p>', 'footer-page-section-cards/April2021/RWyBSycJb0cnwSVVowSa.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:33:20', '2021-04-10 07:33:20', NULL, 'we-are-still-celebrating-women-s-day-in-a-man-s-world', NULL),
(60, 74, 'WEF applauds CAF India’s women of substance', '<p>CEO Meenakshi Batra &amp; Head ResponsibleBusiness &amp; Sustainability,Ramona Bakshi,were felicitated at the Women Economic Forum, Delhi as &lsquo;Iconic Women creating betterworld&rsquo;.During the event Meenakshi shared her opinion on the importance of women in leadership role in tackling global economic challenges. Meenakshi Batra &amp; Ramona Bakshi both were also invited as distinguished panellist to speak at the event.</p>', 'footer-page-section-cards/April2021/3efahF1jxRveQkHZvcDQ.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:51:44', '2021-04-10 07:51:44', NULL, 'wef-applauds-caf-india-s-women-of-substance', NULL),
(61, 74, 'CAF India MarComm Head was felicitated at the Mcube Awards, 2017', '<p>SangeetaThakral, Head, Marketing and Communications, was invited as a member of the Grand Jury at the Masters of Modern Marketing Awards (Mcube), 2017. She played a pivotal role in assessing and nominating the best amongst the equals in the marketing industry.</p>', 'footer-page-section-cards/April2021/OOHvE3QlCRXppmdAK4uh.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:52:34', '2021-04-10 07:52:34', NULL, 'caf-india-marcomm-head-was-felicitated-at-the-mcube-awards-2017', NULL),
(62, 74, 'United Nations General Compact (UNGC) recognizes CAF India for Best Practices in Sustainable Development Goals', '<p>CAF India CEO, Meenakshi Batra along with Director Avijeet Kumar received the Certificate of Merit for leveraging leadership, innovation, and value creation in implementing sustainable development goals in India. CAF India was recognisedamongst the top ten organisations for Best Practises in Sustainable Development Goals (SDGs) UNGC at the global event on &lsquo;Making Global Goals LocalBusiness&rsquo;</p>', 'footer-page-section-cards/April2021/CtOZJeQYzI4gEJmQn1Nl.jpg', NULL, NULL, 'BUTTON', NULL, NULL, 'A', '2021-04-10 07:53:39', '2021-04-10 07:53:39', NULL, 'united-nations-general-compact-ungc-recognizes-caf-india-for-best-practices-in-sustainable-development-goals', NULL),
(64, 75, 'Impactful Individual Giving', '<p>We give our individual donors and families a chance to pitch into India&rsquo;s development story.</p>', 'footer-page-section-cards/April2021/fDgOzRDcfWGziyzQUMnb.png', 'https://cafindia.jaisalmercity.com/For-Individuals', 'Read More', 'BUTTON', 2, NULL, 'A', '2021-04-10 09:10:11', '2021-04-16 05:01:11', NULL, 'impactful-individual-giving', NULL),
(65, 75, 'Business for Social Good', '<p>We help businesses achieve greater social impact.</p>', 'footer-page-section-cards/April2021/9ZiTnvWistGHpk5mlRnP.png', 'https://cafindia.jaisalmercity.com/for-companies', 'Read More', 'BUTTON', 2, NULL, 'A', '2021-04-10 09:11:52', '2021-04-16 05:01:33', NULL, 'business-for-social-good', NULL),
(66, 75, 'Empowering Civil Society', '<p>We help Civil Society thrive, with sustainable sources of funding.</p>', 'footer-page-section-cards/April2021/10FsXQdFAMEso7BV8DHq.png', 'https://cafindia.jaisalmercity.com/for-ngos', 'Read More', 'BUTTON', 2, NULL, 'A', '2021-04-10 09:13:08', '2021-04-16 05:01:57', NULL, 'empowering-civil-society', NULL),
(67, 75, 'Reaching out to Institutions', '<p>We support philanthropic initiatives of national and international institutions and foundations.</p>', 'footer-page-section-cards/April2021/EjhMvkQjKTVUnWaogkp5.png', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations', 'Read More', 'BUTTON', 2, NULL, 'A', '2021-04-10 09:14:39', '2021-04-16 05:02:21', NULL, 'reaching-out-to-institutions', NULL),
(68, 78, 'Access to global experts', '<p>The ability to exchange ideas and share knowledge with your peers.</p>', 'footer-page-section-cards/April2021/3lfEmeDLSXT5AEu2uxiU.png', NULL, NULL, 'BUTTON', 2, NULL, 'A', '2021-04-21 07:01:32', '2021-04-21 07:01:32', NULL, 'access-to-global-experts', NULL),
(69, 78, 'A strong culture of giving', '<p>Innovative products and services to help individual and corporate giving.</p>', 'footer-page-section-cards/April2021/36oEz6H7e7k6mOtwBsAY.png', NULL, NULL, 'BUTTON', 2, NULL, 'A', '2021-04-21 07:02:38', '2021-04-21 07:02:38', NULL, 'a-strong-culture-of-giving', NULL),
(70, 78, 'A global and local understanding of giving', '<p>Gain unique sector insight through <a href=\"/about-us/research/caf-international-research-hub\">our international research</a> and <a href=\"/about-us/blog-home/giving-thought\">Giving Thought think tank</a>.</p>', 'footer-page-section-cards/April2021/GpnRES4bxPCAX2a4XcoN.png', NULL, NULL, 'BUTTON', 2, NULL, 'A', '2021-04-22 04:15:33', '2021-04-22 04:23:22', NULL, 'a-global-and-local-understanding-of-giving', NULL),
(71, 78, 'Understanding and influence', '<p>The potential to influence public policy through advocacy initiatives.</p>', 'footer-page-section-cards/April2021/CEOQrdNTwCQthk2A6hYI.png', NULL, NULL, 'BUTTON', 2, NULL, 'A', '2021-04-22 04:16:49', '2021-04-22 04:16:49', NULL, 'understanding-and-influence', NULL),
(72, 82, 'Thematic impact', '<p><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">We&nbsp;</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">are cause universal and&nbsp;</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">work across multiple thematic areas to ensure&nbsp;</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">a&nbsp;</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">holistic</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">&nbsp;socio-economic impact</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">&nbsp;</span><span class=\"NormalTextRun  BCX0 SCXW167112118\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">on India&rsquo;s development story</span></p>', 'footer-page-section-cards/May2021/F73lUta7QzE5e81mNgRD.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impact', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:18:58', '2021-05-19 06:49:11', NULL, 'thematic-impact', NULL),
(73, 82, 'CONNECT Workshop', '<p><span class=\"TextRun SCXW10513054 BCX0\" lang=\"EN-US\" style=\"place-content: normal; place-items: normal; place-self: auto; alignment-baseline: auto; animation: 0s ease 0s 1 normal none running none; appearance: none; aspect-ratio: auto; backdrop-filter: none; backface-visibility: visible; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0); background-blend-mode: normal; baseline-shift: 0px; border-image: none 100% / 1 / 0 stretch; border-collapse: separate; border-end-end-radius: 0px; border-end-start-radius: 0px; border-spacing: 0px; border-start-end-radius: 0px; border-start-start-radius: 0px; border-radius: 0px; inset: auto; box-shadow: none; box-sizing: content-box; break-after: auto; break-before: auto; break-inside: auto; buffered-rendering: auto; caption-side: top; caret-color: #000000; clear: none; clip: auto; clip-path: none; clip-rule: nonzero; color: #000000; color-interpolation: srgb; color-interpolation-filters: linearrgb; color-rendering: auto; color-scheme: normal; columns: auto auto; column-fill: balance; gap: normal; column-rule: 0px none #000000; column-span: none; contain: none; contain-intrinsic-size: auto; content: normal; content-visibility: visible; counter-increment: none; counter-reset: none; counter-set: none; cursor: text; cx: 0px; cy: 0px; d: none; direction: ltr; display: inline; dominant-baseline: auto; empty-cells: show; fill: #000000; fill-opacity: 1; fill-rule: nonzero; filter: none; flex: 0 1 auto; flex-flow: row nowrap; float: none; flood-color: #000000; flood-opacity: 1; font-family: WordVisi_MSFontService, Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-feature-settings: normal; font-kerning: none; font-optical-sizing: auto; font-size: 14.6667px; font-stretch: 100%; font-variant-ligatures: no-common-ligatures no-discretionary-ligatures no-historical-ligatures no-contextual; font-variant-numeric: normal; font-variant-east-asian: normal; font-variation-settings: normal; forced-color-adjust: auto; grid-area: auto / auto / auto / auto; grid-auto-columns: auto; grid-auto-flow: row; grid-auto-rows: auto; grid-template-areas: none; grid-template-columns: none; grid-template-rows: none; height: auto; hyphens: manual; image-orientation: from-image; image-rendering: auto; inline-size: auto; inset-block: auto; inset-inline: auto; isolation: auto; lighting-color: #ffffff; line-height: 19.425px; list-style: outside none disc; margin: 0px; marker: none; mask: none; mask-type: luminance; max-height: none; max-width: none; min-height: 0px; min-width: 0px; mix-blend-mode: normal; object-fit: fill; object-position: 50% 50%; offset: none 0px auto 0deg; opacity: 1; order: 0; outline: #000000 none 0px; outline-offset: 0px; overflow: visible; overflow-anchor: auto; overflow-clip-margin: 0px; overflow-wrap: break-word; overscroll-behavior-block: auto; overscroll-behavior-inline: auto; overscroll-behavior: auto; padding: 0px; page: auto; paint-order: normal; perspective: none; perspective-origin: 0px 0px; pointer-events: auto; position: static; quotes: auto; r: 0px; resize: none; ruby-position: over; rx: auto; ry: auto; scroll-behavior: auto; scroll-margin-block: 0px; scroll-margin: 0px; scroll-margin-inline: 0px; scroll-padding-block: auto; scroll-padding: auto; scroll-padding-inline: auto; scroll-snap-align: none; scroll-snap-stop: normal; scroll-snap-type: none; shape-image-threshold: 0; shape-margin: 0px; shape-outside: none; shape-rendering: auto; speak: normal; stop-color: #000000; stop-opacity: 1; stroke: none; stroke-dasharray: none; stroke-dashoffset: 0px; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 4; stroke-opacity: 1; stroke-width: 1px; tab-size: 8; table-layout: auto; text-align-last: auto; text-anchor: start; text-combine-upright: none; text-decoration-style: solid; text-decoration-color: #000000; text-decoration-skip-ink: auto; text-orientation: mixed; text-overflow: clip; text-rendering: auto; text-shadow: none; text-size-adjust: auto; text-underline-offset: auto; text-underline-position: auto; touch-action: auto; transform: none; transform-box: view-box; transform-origin: 0px 0px; transform-style: flat; transition: all 0s ease 0s; unicode-bidi: normal; user-select: text; vector-effect: none; vertical-align: baseline; visibility: visible; -webkit-app-region: none; border-block-end: 0px none #000000; border-block-start: 0px none #000000; border-inline-end: 0px none #000000; -webkit-border-image: none; border-inline-start: 0px none #000000; -webkit-box-align: stretch; -webkit-box-decoration-break: slice; -webkit-box-direction: normal; -webkit-box-flex: 0; -webkit-box-ordinal-group: 1; -webkit-box-orient: horizontal; -webkit-box-pack: start; -webkit-font-smoothing: auto; -webkit-highlight: none; -webkit-hyphenate-character: auto; -webkit-line-break: after-white-space; -webkit-locale: \'en-US\'; block-size: auto; margin-block: 0px; margin-inline: 0px; -webkit-mask-box-image-source: none; -webkit-mask-box-image-slice: 0 fill; -webkit-mask-box-image-width: auto; -webkit-mask-box-image-outset: 0; -webkit-mask-box-image-repeat: stretch; -webkit-mask: none 0% 0% / auto repeat border-box border-box; -webkit-mask-composite: source-over; max-block-size: none; max-inline-size: none; min-block-size: 0px; min-inline-size: 0px; padding-block: 0px; padding-inline: 0px; -webkit-print-color-adjust: economy; -webkit-rtl-ordering: logical; -webkit-ruby-position: before; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-combine: none; -webkit-text-emphasis: none #000000; -webkit-text-emphasis-position: over right; -webkit-text-fill-color: #000000; -webkit-text-orientation: vertical-right; -webkit-text-security: none; -webkit-text-stroke-color: #000000; -webkit-user-drag: none; -webkit-user-modify: read-write; -webkit-writing-mode: horizontal-tb; width: auto; will-change: auto; word-break: normal; writing-mode: horizontal-tb; x: 0px; y: 0px; z-index: auto; zoom: 1; border: 0px none #000000;\" xml:lang=\"EN-US\" data-contrast=\"none\"><span class=\"NormalTextRun SCXW10513054 BCX0\">We conduct multiple capacity building workshops for NGOs called CONNECT &ndash; an acronym for Commune Network Nurture Engage Collaborate Transform.</span></span></p>', 'footer-page-section-cards/May2021/23jthb2Twt1H17N4IyKV.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:19:40', '2021-05-19 06:19:40', NULL, 'connect-workshop', NULL),
(74, 82, 'NGO Validation', '<p><span class=\"NormalTextRun SCXW255968063 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">We work through our vast network of NGO partners, who undergo a stringent due diligence process&nbsp;</span><span class=\"NormalTextRun SCXW255968063 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">and thus are some of the most credible NGOs in the country.</span></p>', 'footer-page-section-cards/May2021/nBDyUEPpJUAh6LulbBgI.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:20:09', '2021-05-19 06:23:28', NULL, 'ngo-validation', NULL),
(75, 82, 'Volunteering Opportunities', '<p><span class=\"NormalTextRun SCXW133230553 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">We offer employees and students with opportunities to donate their time and volunteer for&nbsp;</span><span class=\"NormalTextRun SCXW133230553 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">a</span><span class=\"NormalTextRun SCXW133230553 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">&nbsp;</span><span class=\"NormalTextRun SCXW133230553 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">cause close to their heart</span></p>', 'footer-page-section-cards/May2021/GI7hqi8WrW3gvBiRkdBf.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:21:32', '2021-05-19 06:21:32', NULL, 'volunteering-opportunities', NULL),
(76, 82, 'Events', '<p><span class=\"NormalTextRun  BCX0 SCXW16185738\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #1f497d; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">AF India is&nbsp;</span><span class=\"NormalTextRun SpellingErrorV2 SpellingErrorHighlight  BCX0 SCXW16185738\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; background-color: #ffe5e5; background-repeat: repeat-x; background-position: left bottom; border-bottom: 1px solid transparent; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">catalysing</span><span class=\"NormalTextRun  BCX0 SCXW16185738\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #1f497d; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">&nbsp;India&rsquo;s philanthropic, CSR and SDG landscape to transform lives and communities by&nbsp;</span><span class=\"NormalTextRun SpellingErrorV2  BCX0 SCXW16185738\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; background-repeat: repeat-x; background-position: left bottom; border-bottom: 1px solid transparent; color: #1f497d; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">organising</span><span class=\"NormalTextRun  BCX0 SCXW16185738\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; color: #1f497d; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif; font-size: 14.6667px; font-variant-ligatures: none;\">&nbsp;and participating in various forums events</span></p>', 'footer-page-section-cards/May2021/2fC8iU2iS6UiaIaSOkaP.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:22:10', '2021-05-19 06:22:10', NULL, 'events', NULL),
(77, 82, 'Work With Us', '<p><span class=\"TextRun SCXW13767419 BCX0\" lang=\"EN-GB\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-size: 12pt; line-height: 20.5042px; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif;\" xml:lang=\"EN-GB\" data-contrast=\"none\"><span class=\"NormalTextRun SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">We</span><span class=\"NormalTextRun SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">&nbsp;</span><span class=\"NormalTextRun SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">ar</span><span class=\"NormalTextRun SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">e</span><span class=\"NormalTextRun SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">&nbsp;committed to creating a great place to work and grow. Find out more about what it\'s like to work here - and the benefits we have to offer.</span></span><span class=\"EOP SCXW13767419 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 20.5042px; font-family: Calibri, Calibri_EmbeddedFont, Calibri_MSFontService, sans-serif;\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335551550&quot;:1,&quot;335551620&quot;:1,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\">&nbsp;</span></p>', 'footer-page-section-cards/May2021/dzLOoaDeZiCcFJ7QxjFs.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 06:22:42', '2021-05-19 06:22:42', NULL, 'work-with-us', NULL),
(78, 80, 'Education', '<p>Going by the motto &lsquo;education for all&rsquo;, we have worked in the education sector through our diverse set of interventions.</p>', 'footer-page-section-cards/May2021/DPscAY6YOILtKuA9GeLb.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/education', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 06:51:25', '2021-05-19 06:51:25', NULL, 'education', NULL),
(79, 80, 'Water', '<p>Our programmes are focused to address the issue of water scarcity, increase water access, treatment of wastewater and minimize wasteful practices</p>', 'footer-page-section-cards/May2021/175ssES38949haUi2p0W.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/water', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:01:04', '2021-05-19 07:01:04', NULL, 'water', NULL),
(80, 80, 'Agriculture', '<p>We promote climate-resilient farming practices that ensure sustainable livelihood for farmers across India</p>', 'footer-page-section-cards/May2021/PSa6nCsVnLT5WwTFVyRL.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/agriculture', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:02:40', '2021-05-19 07:02:40', NULL, 'agriculture', NULL),
(81, 83, 'AARTI’S BATTLE WITH LEPROSY', NULL, 'footer-page-section-cards/May2021/Gcsf8GrcU2iWGnzlcPHg.jpg', 'https://cafindia.jaisalmercity.com/content-details/stories-of-hope/aarti-s-battle-with-leprosy', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 07:06:48', '2021-05-19 07:06:48', NULL, 'aarti-s-battle-with-leprosy', NULL),
(82, 83, 'ABHISHEK STRIKES THE RIGHT CHORDS', NULL, 'footer-page-section-cards/May2021/NcuMXg8uxb08UaTl8NcQ.png', 'https://cafindia.jaisalmercity.com/content-details/stories-of-hope/abhishek-strikes-the-right-chords', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 07:07:33', '2021-05-19 07:09:58', NULL, 'abhishek-strikes-the-right-chords', NULL),
(83, 83, 'DEVI WILL WIN THE RACE', NULL, 'footer-page-section-cards/May2021/uwrEhwgtkYCkohTFsUC0.jpg', 'https://cafindia.jaisalmercity.com/content-details/stories-of-hope/devi-will-win-the-race', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 07:08:40', '2021-05-19 07:10:09', NULL, 'devi-will-win-the-race', NULL),
(84, 80, 'Skills and Livelihoods', '<p>We believe that learning should never stop. Learning a new skill can transform lives</p>', 'footer-page-section-cards/May2021/NwV5Iszmffr6wqucYCIH.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/skills-and-livelihoods', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:33:12', '2021-05-19 07:33:12', NULL, 'skills-and-livelihoods', NULL),
(85, 80, 'Health and Nutrition', '<p>We are committed to support the healthcare delivery system of India, so that no one is left behind for the want of treatment.</p>', 'footer-page-section-cards/May2021/wsH9QTQIhQkhGDKMbYpo.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/health-and-nutrition', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:35:20', '2021-05-19 07:35:20', NULL, 'health-and-nutrition', NULL),
(86, 80, 'Sanitation', '<p>In tandem with the Swachh Bharat Mission, our programmes are focused on building sanitation infrastructure and create awareness about importance of hygiene and bring about a positive behavioral change among communities</p>', 'footer-page-section-cards/May2021/XrLAAgCNEEZUaOLSFpwE.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/sanitation', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:38:41', '2021-05-19 07:38:41', NULL, 'sanitation', NULL),
(87, 80, 'Disability', '<p>Our endeavour is to ensure that people with disabilities get the respect and opportunities they deserve</p>', 'footer-page-section-cards/May2021/u7L8ZdBXGypwqVuRzb6T.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/disability', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 07:42:03', '2021-05-19 07:42:03', NULL, 'disability', NULL),
(88, 80, 'Elderly Care', NULL, 'footer-page-section-cards/May2021/utpUjNnUWLRk5GjOnTD0.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/elderly-care', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 08:11:17', '2021-05-19 08:11:17', NULL, 'elderly-care', NULL),
(89, 80, 'Institution Building', NULL, 'footer-page-section-cards/May2021/YfPLY9lTyNgX95opGQYF.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/institution-building', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 08:12:43', '2021-05-19 08:12:43', NULL, 'institution-building', NULL),
(90, 80, 'Wildlife', NULL, 'footer-page-section-cards/May2021/eCPrg9qL1g2IV1ukmFQK.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/wildlife', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 08:13:52', '2021-05-19 08:13:52', NULL, 'wildlife', NULL),
(91, 80, 'Environment', '<p>We work towards building a clean and green India by empowering rural communities to adopt an environment friendly sustainable lifestyle</p>', 'footer-page-section-cards/May2021/ixFjeZFxf4IiBRAy0jk1.jpg', 'https://cafindia.jaisalmercity.com/what-we-do/thematic-impacts/environment', 'Learn more', 'HYPERLINK', 1, NULL, 'A', '2021-05-19 08:15:16', '2021-05-19 08:15:16', NULL, 'environment', NULL),
(92, 91, 'Title', NULL, 'footer-page-section-cards/May2021/F95MbAQBNpna4n2UIPcL.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:33:30', '2021-05-19 08:33:30', NULL, 'title', NULL);
INSERT INTO `footer_page_section_cards` (`id`, `footer_page_section_id`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `image_icon`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `slug`, `layout_template`) VALUES
(93, 91, 'Title', NULL, 'footer-page-section-cards/May2021/1skCHBsyLS1rDubeVkN9.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:34:10', '2021-05-19 08:34:10', NULL, 'title', NULL),
(94, 91, 'Title', NULL, 'footer-page-section-cards/May2021/ms81ijVB9PB8FZr2VMzS.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:34:33', '2021-05-19 08:34:33', NULL, 'title', NULL),
(95, 92, 'Title', NULL, 'footer-page-section-cards/May2021/vtp22tCws8VL4X3Aw1KW.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:34:55', '2021-05-19 08:34:55', NULL, 'title', NULL),
(96, 92, 'Title', NULL, 'footer-page-section-cards/May2021/Enh5wOmAhl7YzJXtWpFu.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:35:19', '2021-05-19 08:35:19', NULL, 'title', NULL),
(97, 92, 'Title', NULL, 'footer-page-section-cards/May2021/JDlHT8eOMc22Cq1293Dx.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:35:45', '2021-05-19 08:35:45', NULL, 'title', NULL),
(98, 93, 'Title', NULL, 'footer-page-section-cards/May2021/89IYltFU7wrGEO2yhLs8.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:36:04', '2021-05-19 08:36:04', NULL, 'title', NULL),
(99, 93, 'Title', NULL, 'footer-page-section-cards/May2021/RejtTabKzzfHusSz1qBX.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:36:25', '2021-05-19 08:36:25', NULL, 'title', NULL),
(100, 94, 'Title', NULL, 'footer-page-section-cards/May2021/oWEr01e9lgnK8TGFeKXe.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:36:53', '2021-05-19 08:36:53', NULL, 'title', NULL),
(101, 95, 'Title', NULL, 'footer-page-section-cards/May2021/g7APlnkQ7Qj2VxAKB3Ok.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:41:45', '2021-05-19 08:41:45', NULL, 'title', NULL),
(102, 95, 'Title', NULL, 'footer-page-section-cards/May2021/JE21Uwkuianxb6pXPl3e.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:42:26', '2021-05-19 08:42:26', NULL, 'title', NULL),
(103, 95, 'Title', NULL, 'footer-page-section-cards/May2021/hwyLvFCtxu3DSIbnGEZQ.jpg', 'https://cafindia.jaisalmercity.com/', 'Learn more', 'BUTTON', 1, NULL, 'A', '2021-05-19 08:42:49', '2021-05-19 08:42:49', NULL, 'title', NULL),
(104, 53, 'Annual Report 2019-20', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/53_66f39b8c687094cb8f363283ed199c00</p>', 'footer-page-section-cards/September2021/H6gKMTNCz4CFjF4iLNfD.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:38:46', '2021-09-14 09:13:53', NULL, 'annual-report-2019-20', NULL),
(105, 53, 'Annual Report 2018-19', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/47_304171177fd532050c40cf72a900dad8</p>', 'footer-page-section-cards/September2021/UhqqjaVf8iiYwkvtfLUm.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:39:20', '2021-09-14 09:14:40', NULL, 'annual-report-2018-19', NULL),
(106, 53, 'Annual Report 2017-18', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/46_51be401910177967eeb8a39e72507f71</p>', 'footer-page-section-cards/September2021/MQbZNl09DuYFnOI78XlT.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:40:07', '2021-09-14 09:15:01', NULL, 'annual-report-2017-18', NULL),
(107, 53, 'Annual Report 2016-17', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/45_f51516ba582f37d2b51fd27961cbaafd</p>', 'footer-page-section-cards/September2021/cevgLfuoFcGBdObHLHc6.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:40:37', '2021-09-14 09:15:37', NULL, 'annual-report-2016-17', NULL),
(108, 53, 'Annual Report 2015-16', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/42_8d95ad34801afca32de1970acc41957b</p>', 'footer-page-section-cards/September2021/R1MSrQCUKeQfPOp6Z3a0.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:41:08', '2021-09-14 09:15:58', NULL, 'annual-report-2015-16', NULL),
(109, 53, 'Annual Report 2014-15', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/18_f4cdb34356de43c26be7fa4d52512d7d</p>', 'footer-page-section-cards/September2021/rNTyMiwKvt619zXypB63.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:42:27', '2021-09-14 09:16:19', NULL, 'annual-report-2014-15', NULL),
(110, 53, 'Annual Report 2013-14', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/8_a155436ecadc325dde595b7900c10959</p>', 'footer-page-section-cards/September2021/1MsL8Ik9F1WfHX852JLH.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:47:46', '2021-09-14 09:16:44', NULL, 'annual-report-2013-14', NULL),
(111, 53, 'Annual Report 2012-13', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/40_6796bfbbab68fe58b61fafa8e072a632</p>', 'footer-page-section-cards/September2021/ftHIx5deJW2WzbewhBQ9.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:48:56', '2021-09-14 09:17:09', NULL, 'annual-report-2012-13', NULL),
(112, 53, 'Annual Report 2011-12', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/13_cee678832d5a1a52eb8185996bdbe8d4</p>', 'footer-page-section-cards/September2021/auJfvVR5RNGpqdRS7OGg.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:49:37', '2021-09-14 09:17:31', NULL, 'annual-report-2011-12', NULL),
(113, 53, 'Annual Report 2009-10', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/6_12d19e86b75b30044fb9479d6422548b</p>', 'footer-page-section-cards/September2021/FZjd5iptu5JU1yZXZ4DF.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:50:31', '2021-09-14 09:17:56', NULL, 'annual-report-2009-10', NULL),
(114, 53, 'Annual Report 2008-09', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/7_92dc9d3dbd4e1f299c399ca42c2f16dd</p>', 'footer-page-section-cards/September2021/JtvD3bOEdHy1kzf8HQnO.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:51:06', '2021-09-14 09:18:16', NULL, 'annual-report-2008-09', NULL),
(115, 53, 'Annual Report 2007-08', '<p>https://www.cafindia.org/media-center/caf-annual-report/item/download/7_92dc9d3dbd4e1f299c399ca42c2f16dd</p>', 'footer-page-section-cards/September2021/THRXt1jE1yeIa2UCby9E.jpg', NULL, 'Download', 'BUTTON', 1, NULL, 'A', '2021-09-03 07:51:36', '2021-09-14 09:18:34', NULL, 'annual-report-2007-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_management`
--

CREATE TABLE `gallery_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_management`
--

INSERT INTO `gallery_management` (`id`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Discount', '<p>dada</p>', NULL, 'http://cafindia.jaisalmercity.com/', 'http://cafindia.jaisalmercity.com/', 'http://cafindia.jaisalmercity.com/', 'BUTTON', 1, 'A', '2021-01-18 07:46:00', '2021-01-18 07:51:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `in_the_news`
--

CREATE TABLE `in_the_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-19 04:19:24', '2021-04-29 12:56:04'),
(2, 'Site Menu', '2021-03-22 11:36:32', '2021-04-29 12:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-19 04:19:24', '2020-10-19 04:19:24', 'voyager.dashboard', NULL),
(2, 1, 'Media Library', '', '_self', 'voyager-images', '#000000', NULL, 11, '2020-10-19 04:19:24', '2021-04-10 08:50:06', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2020-10-19 04:19:24', '2020-10-25 12:10:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-10-19 04:19:24', '2020-10-25 12:10:26', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2020-10-19 04:19:24', '2021-04-10 08:50:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-10-19 04:19:24', '2020-10-25 12:09:40', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-10-19 04:19:24', '2021-01-23 19:40:07', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-10-19 04:19:24', '2021-01-23 19:40:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-10-19 04:19:24', '2021-01-23 19:40:07', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2020-10-19 04:19:24', '2021-04-10 08:50:06', 'voyager.settings.index', NULL),
(11, 1, 'Footer Navigations', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2020-10-19 04:19:24', '2021-04-10 08:50:06', 'voyager.categories.index', 'null'),
(12, 1, 'Footer Pages', '', '_self', 'voyager-news', '#000000', 28, 2, '2020-10-19 04:19:25', '2021-01-23 19:39:45', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 28, 3, '2020-10-19 04:19:25', '2021-01-23 19:39:45', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-10-19 04:19:25', '2021-01-23 19:40:07', 'voyager.hooks', NULL),
(15, 1, 'Trustees', '', '_self', 'voyager-group', NULL, NULL, 4, '2020-10-24 14:23:32', '2020-10-25 12:09:40', 'voyager.trustees.index', NULL),
(16, 1, 'Main Slider', '', '_self', 'voyager-photos', '#000000', 26, 1, '2020-10-24 14:27:15', '2020-11-23 12:14:19', 'voyager.banners.index', 'null'),
(17, 1, 'Main Navigations', '', '_self', 'voyager-news', '#000000', NULL, 7, '2020-10-25 11:47:46', '2021-04-10 08:50:06', 'voyager.primary-categories.index', 'null'),
(18, 1, 'Main Pages', '', '_self', 'voyager-window-list', '#000000', 28, 1, '2020-10-25 12:05:05', '2020-11-27 12:18:06', 'voyager.primary-pages.index', 'null'),
(19, 1, 'Editors', '', '_self', 'voyager-news', NULL, NULL, 10, '2020-10-25 13:10:07', '2021-04-10 08:50:06', 'voyager.editors.index', NULL),
(21, 1, 'Right Slider', '', '_self', 'voyager-photos', '#000000', 26, 2, '2020-11-21 14:09:35', '2020-11-23 12:14:41', 'voyager.right-side-banners.index', 'null'),
(25, 1, 'Contacts', '', '_self', 'voyager-mail', NULL, NULL, 14, '2020-11-22 13:36:39', '2021-04-10 08:50:06', 'voyager.contacts.index', NULL),
(26, 1, 'Banners', '', '_self', 'voyager-photos', '#000000', NULL, 6, '2020-11-23 12:13:00', '2021-04-10 08:50:06', NULL, ''),
(27, 1, 'Newsletter Subscriptions', '', '_self', 'voyager-mail', NULL, NULL, 15, '2020-11-25 12:50:22', '2021-04-10 08:50:06', 'voyager.newsletter-subscriptions.index', NULL),
(28, 1, 'CMS', '', '_self', 'voyager-window-list', '#000000', NULL, 9, '2020-11-27 12:08:50', '2021-04-10 08:50:06', NULL, ''),
(30, 1, 'Primary Page Sections', '', '_self', NULL, NULL, NULL, 16, '2020-11-30 13:00:18', '2021-04-10 08:50:06', 'voyager.primary-page-sections.index', NULL),
(31, 1, 'Primary Page Section Cards', '', '_self', 'voyager-news', NULL, NULL, 17, '2020-11-30 13:53:56', '2021-04-10 08:50:06', 'voyager.primary-page-section-cards.index', NULL),
(33, 1, 'Career Managements', '', '_self', 'voyager-list', NULL, NULL, 18, '2021-01-06 19:21:56', '2021-04-10 08:50:06', 'voyager.career-management.index', NULL),
(34, 1, 'Cause Managements', '', '_self', 'voyager-window-list', NULL, NULL, 19, '2021-01-06 19:36:19', '2021-04-10 08:50:06', 'voyager.cause-management.index', NULL),
(35, 1, 'Gallery Managements', '', '_self', 'voyager-images', NULL, NULL, 20, '2021-01-06 19:43:07', '2021-04-10 08:50:06', 'voyager.gallery-management.index', NULL),
(36, 1, 'Ngo Managements', '', '_self', 'voyager-list', NULL, 45, 2, '2021-01-06 20:05:18', '2021-01-23 19:42:21', 'voyager.ngo-management.index', NULL),
(38, 1, 'Resource Managements', '', '_self', 'voyager-window-list', NULL, NULL, 21, '2021-01-06 20:21:21', '2021-04-10 08:50:06', 'voyager.resource-management.index', NULL),
(39, 1, 'Campaign Managements', '', '_self', 'voyager-list', NULL, 45, 3, '2021-01-06 20:50:39', '2021-01-23 19:42:30', 'voyager.campaign-management.index', NULL),
(40, 1, 'Donations', '', '_self', 'voyager-wallet', NULL, 45, 1, '2021-01-14 17:13:57', '2021-01-23 19:42:16', 'voyager.donations.index', NULL),
(41, 1, 'Footer Page Section Cards', '', '_self', NULL, NULL, NULL, 22, '2021-01-21 17:08:25', '2021-04-10 08:50:06', 'voyager.footer-page-section-cards.index', NULL),
(42, 1, 'Footer Page Sections', '', '_self', NULL, NULL, NULL, 23, '2021-01-21 17:09:18', '2021-04-10 08:50:06', 'voyager.footer-page-sections.index', NULL),
(43, 1, 'Featured Stories', '', '_self', 'voyager-list', NULL, 28, 6, '2021-01-22 17:33:39', '2021-01-30 20:19:11', 'voyager.featured-stories.index', NULL),
(44, 1, 'Blogs', '', '_self', 'voyager-documentation', NULL, 28, 5, '2021-01-23 19:37:04', '2021-01-25 10:15:28', 'voyager.blogs.index', NULL),
(45, 1, 'Report Management', '', '_self', 'voyager-data', '#000000', NULL, 24, '2021-01-23 19:42:01', '2021-04-10 08:50:06', NULL, ''),
(46, 1, 'Authors', '', '_self', 'voyager-edit', NULL, 28, 4, '2021-01-24 18:55:39', '2021-01-25 10:15:28', 'voyager.authors.index', NULL),
(47, 1, 'Notifications', '', '_self', 'voyager-bell', NULL, NULL, 25, '2021-02-01 18:51:31', '2021-04-10 08:50:06', 'voyager.notifications.index', NULL),
(51, 1, 'Newsletters', '', '_self', 'voyager-list', NULL, NULL, 29, '2021-03-18 19:58:58', '2021-04-10 08:50:06', 'voyager.newsletters.index', NULL),
(54, 1, 'Team', '', '_self', 'voyager-group', '#000000', NULL, 5, '2021-04-10 08:49:41', '2021-04-15 12:45:29', 'voyager.our-teams.index', 'null'),
(55, 1, 'Our Teams', '', '_self', 'voyager-group', NULL, NULL, 32, '2021-04-10 09:00:02', '2021-04-10 09:00:02', 'voyager.our-teams.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_01_01_000000_add_voyager_user_fields', 1),
(2, '2016_01_01_000000_create_data_types_table', 1),
(3, '2016_05_19_173453_create_menu_table', 1),
(4, '2016_10_21_190000_create_roles_table', 1),
(5, '2016_10_21_190000_create_settings_table', 1),
(6, '2016_11_30_135954_create_permission_table', 1),
(7, '2016_11_30_141208_create_permission_role_table', 1),
(8, '2016_12_26_201236_data_types__add__server_side', 1),
(9, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(10, '2017_01_14_005015_create_translations_table', 1),
(11, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(12, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(13, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(14, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(15, '2017_08_05_000000_add_group_to_settings_table', 1),
(16, '2017_11_26_013050_add_user_role_relationship', 1),
(17, '2017_11_26_015000_create_user_roles_table', 1),
(18, '2018_03_11_000000_add_user_settings', 1),
(19, '2018_03_14_000000_add_details_to_data_types_table', 1),
(20, '2018_03_16_000000_make_settings_value_nullable', 1),
(21, '2016_01_01_000000_create_pages_table', 2),
(22, '2016_01_01_000000_create_posts_table', 2),
(23, '2016_02_15_204651_create_categories_table', 2),
(24, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriptions`
--

CREATE TABLE `newsletter_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscriptions`
--

INSERT INTO `newsletter_subscriptions` (`id`, `name`, `email`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'CSR POLICY AND STRATEGY DEVELOPMENT', 'admin@admin.com', 'A', '2021-01-18 07:13:31', '2021-01-18 07:13:31', NULL),
(13, 'CSR POLICY AND STRATEGY DEVELOPMENT', 'CSR POLICY AND STRATEGY DEVELOPMENT', 'A', '2021-01-18 07:13:00', '2021-01-18 07:14:02', NULL),
(15, 'sdsd', 'kk@gmail.com', 'A', '2021-01-20 18:23:09', '2021-01-20 18:23:09', NULL),
(16, 'admin', 'admin@admin1.com', 'A', '2021-01-28 08:49:32', '2021-01-28 08:49:32', NULL),
(17, 'Deepak Sharma', 'deepak.sharma@cafindia.org', 'A', '2021-03-09 06:51:20', '2021-03-09 06:51:20', NULL),
(18, 'sdsd', 'sdsd@sdsad.com', 'A', '2021-03-31 07:10:48', '2021-03-31 07:10:48', NULL),
(19, 'shiv121', 'shiv121@gmail.com', 'A', '2021-03-31 07:20:58', '2021-03-31 07:20:58', NULL),
(20, 'shiv121', 'shiv121@test.com', 'A', '2021-03-31 07:21:25', '2021-03-31 07:21:25', NULL),
(21, 'shiv121', 'shiv121@jjj.com', 'A', '2021-03-31 07:22:17', '2021-03-31 07:22:17', NULL),
(22, 'test', 'test@gmail.com', 'A', '2021-04-08 05:35:13', '2021-04-08 05:35:13', NULL),
(23, 'hashimfk', 'hashimfk@gmail.com', 'A', '2021-04-13 10:15:19', '2021-04-13 10:15:19', NULL),
(24, 'ram123', 'ram123@gmail.com', 'A', '2021-04-13 10:24:46', '2021-04-13 10:24:46', NULL),
(25, 'Mohit Kumar', 'mohit@gmail.com', 'A', '2021-04-21 06:15:10', '2021-04-21 06:15:10', NULL),
(26, 'Mohit Kumar', 'test121@gmail.com', 'A', '2021-06-14 06:55:12', '2021-06-14 06:55:12', NULL),
(27, 'Test1', 'testone@gmail.com', 'A', '2021-07-21 10:33:03', '2021-07-21 10:33:03', NULL),
(28, 'mohit1', 'mohit1@gmail.com', 'A', '2021-09-03 07:23:50', '2021-09-03 07:23:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_management`
--

CREATE TABLE `ngo_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_of_the_NGO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_registration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_certificate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `12A_certificate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_of_registration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TAN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FCRA_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DARPAN_UNIQUE_ID` int(11) DEFAULT NULL,
  `state_of_operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_of_operation` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `are_you_in_social_media` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `registered_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correspondence_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_tax_exemption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thematic_sector_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chief_functionary_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chief_functionary_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chief_functionary_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_and_national_network` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financia_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_amount` int(11) DEFAULT NULL,
  `sponsored_by` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `order` int(11) DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `deleted_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Testing Notification', 'Testing Notification', NULL, NULL, NULL, NULL, 'A', 1612446756, 1612446756, NULL),
(12, 'Testing Notification', 'Testing Notification', NULL, NULL, NULL, NULL, 'A', 1612446848, 1612446848, NULL),
(14, 'Do you any questions for me please contact', '464564564v56y', NULL, NULL, NULL, NULL, 'A', 1613586459, 1613586459, NULL),
(15, 'Do you any questions for me please contact', '464564564v56y', NULL, NULL, NULL, NULL, 'A', 1613586575, 1613586575, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `name`, `designation`, `description`, `order`, `type`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Meenakshi Batra', 'Chief Executive Officer', '<p>Meenakshi Batra is a seasoned professional with over 24 years of experience in the international development, CSR and not-for-profit sector. She has served in leadership roles with international development and humanitarian agencies in South and Southeast Asia. Meenakshi has successfully led large country programmes in India, Afghanistan, Bangladesh, Nepal, Sri Lanka and Indonesia working with leading organizations such as DFID, Oxfam, etc. Child and human rights, poverty and vulnerabilities, equity and social exclusion, gender and masculinities are some of the areas where Meenakshi has extensive experience. </p><p> Meenakshi has been conferred with many prestigious awards for her work in the developments sector - Indian Women Achiever Award (IWAA), NGO Women Leadership Award, Women in Leadership Award and many more.  Paving the way forward for a meaningful developmental discourse in the country, Meenakshi has helped pen many position papers such as Achieving Inclusive and Sustainable Industrialization by Promoting SMEs, Strengthening growth of not-for-profits through Inclusive Partnerships, Online Giving in India: Insights To Improve Results, Study on Corporate Foundations- An Emerging Development Paradigm.  </p><p> Along with heading CAF India as the CEO, Meenakshi also serves on the boards of prominent organizations such as VANI, LEPRA and Resource Alliance. She has been nominated as the convener of MSD10 constituted by Bureau of Indian Standards (BIS) to draft the requirement standards of CSR in India. Meenakshi has also served on various committees as a Member such as CII Regional Committee on Affirmative Action, CII Core Group on compendium on Industry-NGO Partnership Models, CII Core Group on CSR-CSO Bridge, CII pro-bono task force and CII Chennai CSR group. Along with being an ASPIRE Founder Fellow, she is on the CSR committees of European Business Group (EBG) and the Confederation of Indian Industries (CII). </p><p> Meenakshi holds a Post Graduate degree in Child Development and Family Welfare. She has undertaken advanced studies in the areas of environment education from Centre for Environment Education, gender and social development from London School of Economics and Wye College UK. </p>', NULL, 'Our Team', 'our-teams/June2021/fYMB0WEenCXoiDkDjpAR.png', 'A', '2021-04-15 12:48:45', '2021-06-05 07:27:22', NULL),
(2, 'Avijeet Kumar', 'Chief of Operations', '<p>Avijeet Kumar has more than 20 years of work experience in the development sector, teaching and research. He has worked with HelpAge India as Director of Programmes for more than eight years before joining CAF India. He is a graduate in sociology from Delhi University and a National Scholar in the Department of Sociology, Delhi School of Economics. He has extensive experience in designing CSR strategies for several companies. His deep understanding of the social development sector has helped build capacities and in organizational development of non-profits. Mr. Avijeet contributed substantially to one of the largest rights based projects in India as part of the ‘Poorest Areas Civil Society (PACS) programme, an initiative to strengthen the awareness and capabilities of poor older persons to demand and exercise their rights and entitlements and thereby improve their quality of life. </p><p> He also holds an M.Phil. degree from Jawaharlal Nehru University, New Delhi and has done a certificate course in designing and implementation of social programmes at the University of Cape Town, South Africa. </p><p> Avijeet has been invited to prestigious forums and events across the country, to share his knowledge on various social development sector issues, including the World CSR Congress, CII & UNICEF Conference on Swachh Bharat Abhiyaan, NASSCOM Technology Roundtable, Strategic Planning Process for 2015-2020 of Global Compact Network India (GCNI), among many other important events. </p>', NULL, 'Our Team', 'our-teams/June2021/2T2gD34xXuCI8yS8UtyP.png', 'A', '2021-05-21 03:31:55', '2021-06-05 07:31:37', NULL),
(3, 'Amit Mathur', 'Director - Finance and Operations', '<p>Amit Mathur is a hard-core finance and management professional, with a strong commercial acumen and brings with him rich 25 + yrs. of experience. His diverse experience includes his exposure to key functional aspects i.e. strategic operational planning and financial management, business strategy development, govt. liaison, process re-engineering, supply chain, systems implementation, conceptualization of policy framework & internal/ external controls including audits / fraud & risk management, statutory compliances, corporate governance aspects within varied industrial environments. His strategic experience also includes key aspects of human resource management, which including talent retention & change management. </p><p> He is a professionally qualified Chartered Accountant (CA) and a Cost Accountant (ICWA) also holds prominent management degree of MBA-Finance with diverse exposure of having worked in both commercial as well as development sector. His key past assignments includes renowned multinational organizations like Pfizer, HCL as well as international development sector organizations like USAID, PSI, Marie Stopes International(UK), and his recent stints as CFO with Aga Khan & Bharti group. In past Amit has held prominent leadership positions including his role as Regional Director-South Asia and has served as trustee and board member for leading international organizations. </p><p> Amit has undergone multiple advance level professional mentoring sessions which include corporate fraud detection and forensic accounting by NCCI, Leadership under turbulence by AIMA, advanced financial management workshop by Centre for Public Management, Bangkok and USAID financial management & compliance training by Inside NGO, Vietnam. </p><p> He has been member of prominent professional bodies i.e. All India Management Association (AIMA), Delhi Management Association (DMA), Centre for Public Policy (CPP) and is also part of multiple Core groups, CFO & CEO forums wherein he is often invited for brainstorming sessions and deliberations on strategic functional aspects as speaker. </p><p> With his collaborative leadership approach and strong communication & people management skills, Amit has been a driver in terms of harnessing organizational growth and successfully led multiple strategic level organizational restructuring initiatives in past”. </p>', NULL, 'Our Team', 'our-teams/June2021/g56J1qiUFWWeyFcuCtXF.png', 'A', '2021-05-21 09:31:16', '2021-06-05 07:32:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Privacy and cookies', 'Privacy and cookies', '<h1 style=\"margin: 0px 0px 15px; font-family: Arial, Helvetica, sans-serif; line-height: 30px; color: #d24508; text-rendering: optimizelegibility; font-size: 26px;\">Privacy and cookies</h1>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">How your personal information is used by Charities Aid Foundation India</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">This website is established and operated by Charities Aid Foundation (<span style=\"font-size: 11pt; font-family: Calibri, sans-serif; color: #1f497d;\">CAF India</span>, us or we) and the companies in which it has a majority stake (the Group) - registered charity number 268369.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">By using this website, you consent to the collection and use of your information under the terms of this policy as in force at the time of use.</p>\r\n<ol style=\"padding: 0px; margin: 0px 0px 9px 25px; color: #5e5c5c; font-family: Arial, sans-serif; font-size: 14.4px;\">\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#1\">Information we collect from you</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#2\">Why we collect personal information from you</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#3\">How we use your personal information</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#4\">Protection of your personal information</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#5\">Accessing and changing your personal information</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#6\">Cookies</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#7\">Changes to our privacy policy</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#8\">Contact us</a></li>\r\n</ol>\r\n<h4 id=\"1\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">1. Information we collect from you</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">You can visit this website without revealing any information to us about yourself. However, there are parts of the&nbsp;<span style=\"font-size: 11pt; font-family: Calibri, sans-serif; color: #1f497d;\">CAF India&nbsp;</span>website where we will need to collect your personal data in&nbsp;order for you to proceed.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold;\">Personal information</span></p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Whenever we ask you for information that enables us to identify you it will be clear that we are doing so and in every case you will have a choice as to how we use the information that is asked for. Information of this type will only be asked for on those parts of our websites that allow transactions to be performed, in contrast to those parts of our websites that are merely informational in their function. Use of any&nbsp;<span style=\"color: #1f497d; font-family: Calibri, sans-serif; font-size: 11pt; line-height: 1.3em;\">CAF\'s India&nbsp;</span>giving tools, for example, necessarily requires that we collect personal information from you.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Information of this type will also be collected when you contact us directly by email for any reason or if you specifically request that we send you information.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold;\">Anonymised user information</span></p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">We do not collect any anonymised user information nor do we use cookies on the CAF India website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"2\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">2. Why we collect personal information from you</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Your personal information is needed so that you can use the transactional areas of our website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">It is also needed so that we can contact you if you have asked us to do so or if it is necessary as part of a particular transactional process, for example in order to validate your authorised user status in relation to a transaction.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"3\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">3. How we use your personal information</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Your personal information enables us to supply the services you have requested. It will also enable us to contact you where necessary concerning any transaction you have undertaken.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">We may use your information to contact you for your views on our services and to notify you occasionally about important changes or developments to the website or our services. Further, where you have consented, we might also use your information to let you know about other products and services which we offer which may be of interest to you and we may contact you by post, telephone or fax, as well as by e-mail. If you change your mind about being contacted in the future, please let us know.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"4\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">4. Protection of your personal information</h4>\r\n<p class=\"x_MsoListParagraph\" style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">If you make donations by credit or debit card, your card details will not be stored on&nbsp;CAF India&nbsp;servers: - they will be stored by our payment service provider BillDesk on the&nbsp;basis of its own terms of use and privacy policy which can be accessed via their website.&nbsp;</p>\r\n<p class=\"x_MsoListParagraph\" style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">In all other cases, the personal information you provide to us will be held on our computers in the India and may only be accessed by or given to individuals working for the&nbsp;CAF India&nbsp;itself.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><span style=\"font-size: 12.16px;\">If&nbsp;</span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; color: #1f497d;\">CAF India&nbsp;</span><span style=\"font-size: 12.16px;\">and/or one or more of the other&nbsp;</span><span style=\"font-size: 11pt; font-family: Calibri, sans-serif; color: #1f497d;\">CAF India&nbsp;</span><span style=\"font-size: 12.16px;\">entities enters into a joint venture with or is sold to or merged with a third party entity, your information may be disclosed to&nbsp;those&nbsp;who own, control and work for the joint venture or the merged or third party entity.</span></p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Unless required to do so by law, we will not otherwise share or distribute any of the information you provide to us and we will not sell your personal information.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">We employ security measures to protect your personal information from access by unauthorised persons and against unlawful processing, accidental loss, destruction and damage. All personal information transmissions that provide payment or account details are encrypted using the security standard known as Secure Socket Layer (SSL), which encrypts information you input.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">We will retain your information for a reasonable period or as long as the law requires.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"5\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">5. Accessing and changing your personal information</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">You are entitled to see the information held about you and you may ask us to make any changes to ensure that it is accurate and kept up to date and reflects any change in preferences you may have previously expressed about the way in which we can use your personal information. If you wish to do this, please contact us.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"6\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">6. Changes to our privacy policy</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Any changes to our privacy policy in the future will be posted to the website and, where appropriate, through e-mail notification. Unless otherwise specified all such changes will take effect immediately upon posting to the website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/privacy#\">Back to top</a></p>\r\n<h4 id=\"8\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility;\">7. Contact us</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">All comments, queries and requests relating to the use of your information are welcomed and should be addressed to:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">The Data Protection Officer</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\"><span style=\"font-weight: bold;\">Charities Aid Foundation (CAF) India</span><br />Plot / Site No.2, First Floor,<br />Sector C (OFC Pocket),<br />Nelson Mandela Marg,&nbsp;<br />Vasant Kunj,<br />New Delhi - 110070&nbsp;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">T : 011 - 2613 4192<br />&nbsp;&nbsp; : 011 - 2613 4193<br />&nbsp;&nbsp; : 011 - 2613 4194<br />&nbsp;&nbsp; : 011 - 2613 4195<br />&nbsp;&nbsp; : 011 - 2613 4196</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; color: #5e5c5c; line-height: 22px; font-family: Arial, sans-serif;\">Email:&nbsp;<span id=\"cloak25162\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"mailto:contactus@cafindia.org\" rel=\"alternate\">contactus@cafindia.org</a></span></p>', NULL, 'privacy-and-cookies', 'Privacy and cookies', 'Privacy,cookies', 'ACTIVE', '2020-10-19 04:19:25', '2020-11-01 12:19:13', NULL),
(2, 1, 'Terms & Conditions', 'Website terms of use', '<div class=\"container mm-page\" style=\"max-width: 972px; margin-right: auto; margin-left: auto; width: 940px; transition: top 0.4s ease 0s, right 0s ease 0s, bottom 0s ease 0s, left 0s ease 0s, border 0s ease 0s; color: #5e5c5c; font-family: Arial, sans-serif; font-size: 14.4px;\">\r\n<div class=\"row-fluid\" style=\"width: 940px;\">\r\n<div class=\"span12 search-wrapper\" style=\"float: left; min-height: 28px; margin-left: 0px; width: 940px; box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding: 15px;\">\r\n<div class=\"item-page\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-bottom: 0px; padding: 15px;\">\r\n<div>\r\n<h1 style=\"margin: 0px 0px 15px; font-family: Arial, Helvetica, sans-serif; line-height: 30px; color: #d24508; text-rendering: optimizelegibility; font-size: 26px;\">Website terms of use</h1>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Access to and use of this site (\'cafoindia.org\') is provided by CAF (Charities Aid Foundation) subject to the terms set out below.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Please read through the whole of these terms of use, and our privacy policy, before using this website. Accessing any part of this website constitutes your agreement to be bound by these terms of use and acceptance of our privacy policy regardless of whether or not you choose to register with us for the purposes of carrying out any transactions. Please note paragraph 1.3 below since it allows us to amend these terms of use and our privacy policy at any time without prior notice.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Certain provisions of these terms of use may be superseded by expressly designated legal notices or terms located on particular pages of this web site.&nbsp;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">If you do not accept these terms of use, do not use this website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Those users who register with us to use one or more of the transactional areas of our website have particular responsibilities and their specific attention is drawn to paragraph 6 of these terms of use.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Similarly, those charities that register with us to upload or otherwise provide information about their charity should note in particular the provisions of paragraphs 2.5 and 2.6.</p>\r\n<ol style=\"padding: 0px; margin: 0px 0px 9px 25px;\">\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#1\">Introduction</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#2\">Data and information: access and download licence</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#3\">Availability of access</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#4\">Website material and user conduct</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#5\">Links to and from other websites</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#6\">Responsibilities of transactional users</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#7\">Sanctions for breach of these terms of use</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#8\">Exclusion of liability</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#9\">Entire agreement</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#10\">Governing law and jurisdiction</a></li>\r\n<li style=\"line-height: 18px; font-size: 0.813em; margin: 0px; padding: 0px 0px 5px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#11\">Cancellation and refund policy</a></li>\r\n</ol>\r\n<h4 id=\"1\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">Introduction</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">1.1 You may access most areas of this website without registering your details with us. Certain areas of this site are only open to you if you register. Any personal information you supply to us when you use our website will be used in accordance with our privacy policy.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">1.2 By accessing any part of this website, you shall be deemed to have accepted these terms of use and our privacy policy in full. If you do not accept them in full, you must leave this website immediately.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">1.3 We may make improvements or changes to the information and services on our website, or terminate our website, at any time without prior notice. &nbsp;We may also modify these terms of use and our privacy policy at any time without prior notice, and every such modification will be effective immediately upon posting of the modified terms of use and/or the modified privacy policy on our website. Your continued use of our website is deemed to be your acceptance of the modified terms of use and/or the modified privacy policy. You should, therefore, review this page regularly to ensure that you are aware of all improvements, changes and modifications made.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"2\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">2. Data and information: access and download licence</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.1 Unless otherwise stated, the data and information you can access on this website has been developed and compiled by CAF or one of its licensors and as such is protected by copyright, database and other laws concerning intellectual property. &nbsp;All rights in relation to such data and information (as well as in relation to the organisation and layout of our website and the underlying software code) are reserved by CAF and its licensors.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.2 You may access, download and print the data and information and retain that data and information as a data source for yourself. &nbsp;You may use the information and data only for your own informational purposes and, provided that in each case you comply with the associated conditions that make use for such purposes lawful, for purposes that constitute \"fair dealing\" within the meaning of the Copyright, Designs and Patents Act 1988 and for those purposes which that Act and/or the Copyright and Rights in Databases Regulations 1997 declare not to constitute infringement of the intellectual property rights with which they deal.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.3 The download licence in paragraph 2.2 is personal, non-exclusive and non-transferable and is given on the following basis:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) no documents or related graphics on this web site are modified in any way;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) no graphics on this website are used separately from accompanying text; and</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(c) copyright and trade mark notices and this permission notice appear in all copies.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.4 Except as provided in paragraphs 2.2 and 2.3 you may not otherwise access, download, copy or use any of the data or information on this website, and under no circumstances may you sell it or otherwise seek to turn it to account, directly or indirectly. &nbsp;Similarly, except as provided in those paragraphs, no part of this website may be reproduced or stored in any other website or included in any public or private electronic retrieval system or service without CAF\'s prior written permission or that of the relevant licensors.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.5 The data and information is provided by CAF and its licensors at no cost to users of this site on an \"as is\" basis, to provide information about CAF, philanthropy generally, methods of charitable giving, the charities which have supplied information about themselves for this site and to facilitate the building of relationships between donors and charities. CAF and its licensors may make changes to such data and information at any time without notice&nbsp;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Given the basis on which the data and information is being provided:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) no commitment is given to update the data and information on this website nor is any assurance given that it is accurate, complete or up-to-date; and</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) to the maximum extent permitted by law, CAF provides you with this web site on the basis that CAF excludes all representations, warranties, conditions and other terms (including, without limitation, the conditions implied by law of satisfactory quality, fitness for purpose and the use of reasonable care and skill) which but for this provision might have effect in relation to this website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">2.6 Users of this site should also note that the inclusion on this site of data or information about charities or other third parties, or links to their web sites, does not in any way constitute an endorsement by CAF of any such charity or third party, whether as to its financial condition or prospects, its charitable or other status, its continuance in good standing or its aims and objectives. CAF does not verify any of the data and information made available by such charities and third parties either on this site or on their own websites, the responsibility for that data and information remaining with those charities and third parties.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"3\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">3. Availability of access</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">3.1 While we endeavour to ensure that this website is normally available 24 hours a day, we shall not be liable if for any reason it is unavailable at any time or for any period.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">3.2 Access to this website may be suspended temporarily and without notice in the case of system failure, maintenance, upgrade or repair or for reasons beyond CAF\'s control.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"4\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">4. Website material and user conduct</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">4.1 Other than personally identifiable information, which is covered under our privacy policy, any material you transmit or post to this website shall be considered non-confidential and non-proprietary. CAF shall have no obligations with respect to such material. CAF shall be free to edit, copy, disclose, distribute, incorporate and otherwise use such material and all data, images, sounds, text and other things embodied therein for any and all commercial or non-commercial purposes.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">4.2 You are prohibited from posting or transmitting to or from this website any material:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) that is threatening, defamatory, obscene, indecent, seditious, offensive, pornographic, abusive, liable to incite racial hatred, discriminatory, menacing, scandalous, inflammatory, blasphemous, in breach of confidence, in breach of privacy, misleading, fraudulent, unlawful, constitute a contempt of court or otherwise be prejudicial to the administration of civil or criminal justice; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) that is in breach of any third party\'s intellectual or other property rights or interests;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(c) &nbsp;which may cause annoyance or inconvenience; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(d) for which you have not obtained all necessary licences and/or approvals; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(e) which constitutes or encourages conduct that would be considered a criminal offence, give rise to civil liability, or otherwise be contrary to the law of or infringe the rights of any third party, in the UK or any other country in the world; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(f) which is technically harmful (including, without limitation, computer viruses, logic bombs, Trojan horses, worms, harmful components, corrupted data or other malicious software or harmful data).</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">4.3 You may not misuse the website (including, without limitation, by hacking) and may only use the website for lawful and proper purposes, in compliance with all applicable laws, regulations and codes of practice and otherwise in accordance with the other provisions of these terms of use.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">4.4 Without prejudice to paragraphs 4.2 and 4.3, by accessing our web site you undertake that you will not:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) use our website in a manner which causes or may cause any infringement of the rights of any other;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) use any software, routine or device to interfere or attempt to interfere electronically or manually with the operation or functionality of our website including but not limited to uploading or making available files containing corrupt data or viruses via whatever means;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(c) deface, alter or interfere with the front end \'look and feel\' of our website or the underlying software code; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(d) take any action that imposes an unreasonable or disproportionately large load on our website or related infrastructure.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">4.5 CAF shall fully co-operate with any law enforcement authorities or court order requesting or directing CAF to disclose the identity or locate anyone posting any material in breach of any of paragraphs 4.2 to 4.4 inclusive.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"5\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">5. Links to and from other web sites</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">5.1 Links to third party websites on this website are provided solely for your convenience. If you use these links, you leave this web site. CAF has not reviewed these third party websites and does not control and is not responsible for those websites, their content or availability, and in particular CAF is not responsible for any information, goods or services contained, offered, described or made available on, or accessible through, those websites or by any means referred to on those sites. CAF therefore does not endorse or make any representations about those websites, or any material found there, or any results that may be obtained from using them. If you decide to access any of the third party websites linked or accessible through those that are linked to this website, you do so entirely at your own risk.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">5.2 If you would like to link to or otherwise make use of any part of this website, you may only do so subject to the following conditions unless in any particular case CAF\'s express prior written permission is obtained.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) you do not remove, distort or otherwise alter the size or appearance of any graphics or logos;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) you do not create a frame or any other browser or border environment around this website;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(c) you do not in any way imply that CAF is endorsing any products or services other than its own;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(d) you do not misrepresent your relationship with CAF nor present any other false information about the CAF;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(e) you do not otherwise use any trade or service marks displayed on this web site without prior express written permission from CAF;</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(f) you do not link from a web site that is not owned by you; and</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(g) your web site does not contain the sort of content that is described in paragraph</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">5.3 (a) &ndash; (e) inclusive above, infringes any intellectual property rights or other rights of any other person or otherwise does not comply with all applicable laws and regulations.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">If you wish to link to or otherwise make use of any part of this website on any other basis, or you are unsure whether your proposed linking arrangements will contravene these terms of use please contact CAF.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">5.4 CAF expressly reserves the right to revoke the right granted in paragraph 5.2 if at any time CAF in its absolute discretion considers a link is:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) inappropriate or controversial; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) for breach of these terms and in either case CAF may take any action it deems appropriate.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"6\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">6. Responsibilities of transactional users</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">6.1 Users who have registered to undertake transactions on one or more areas of our website must at all times safeguard their personal login details (e.g. user id, passwords, login and access codes and PIN numbers). For example, such users should ensure that third parties do not overlook them when logging on to transact any business. Such users must not disclose their login details to any other person nor with multiple users on a network except as may be expressly permitted pursuant to the terms of use applicable to the transactions for which the user has registered.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Responsibility for the security of all your login details rests with you</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">6.2 If you are registered as described in paragraph 6.1, it is important you understand that you are responsible for the accuracy and genuineness of all instructions and information sent to us, from login to log-off. This means that you must ensure that all instructions and information are carefully checked before being sent to us. &nbsp;It is also important that you read the information provided on the transactional web pages &nbsp;that you are registered to use. That information explains the fees and charges payable for the transactions concerned, any deductions that will or may be applied and the circumstances in which funds you send may not be applied as you have instructed.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">6.3 This site is as secure we can make it by using encryption technology and adopting security and anti-virus practices routinely used and adopted as a matter of good practice by other financial services businesses in the UK. Nevertheless, it is important you understand that every internet site, every computer that connects to the internet and all internet communication is susceptible to attack by computer hackers and the ever-increasing variety and sophistication of computer viruses. CAF will do all it reasonably can to protect this site and all internet communications passing between CAF and users, but it cannot be held responsible for any losses fairly attributable to a user\'s failure to take its own reasonable precautions to prevent interception of or interference with any such communications (including, without limitation) failure to use and keep up to date firewalls and anti-virus software on the user\'s own computers or computer systems.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"7\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">7. Sanctions for breach of these terms of use</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">7.1 Where we believe, in our absolute discretion, that you are in breach of any of these terms and conditions we will be entitled without prior notice to deny you further use of our website and/or to remove from our website all information you have made available on or through our website. If we take either or both of these courses of action our doing so will in all instances be without prejudice to any of our other rights, at law or otherwise.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">7.2 You agree to indemnify and keep us indemnified from and against any and all actions, proceedings, costs, claims, damages, losses and expenses of whatsoever nature and howsoever arising as a result of or in connection with any breach by you of these terms and conditions, including any failure to indemnify us as required by this provision.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"8\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">8. Exclusion of liability</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">8.1 CAF, its licensors (whether or not involved in creating, producing, maintaining or delivering this website), and the trustees, officers, directors, employees, contractors, shareholders or agents of each of them, exclude all liability and responsibility for any amount or kind of loss or damage that may result to you or a third party (including without limitation, any direct, indirect, punitive or consequential loss or damages, or any loss of income, profits, goodwill, data, contracts, use of money, or loss or damages arising from or connected in any way to business interruption, and whether in tort (including without limitation negligence), contract or otherwise) in connection with this website in any way.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">8.2 Or in connection with the use, inability to use or the results of use of this website, any websites linked to this website or the material on or accessible through such websites, including but not limited to loss or damage due to viruses that may infect your computer equipment, software, data or other property on account of your access to, use of, or browsing this website or your downloading of any material from this website or from any websites linked to this website or from any websites accessible through those that are linked to this website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">8.3 Nothing in these terms of use shall exclude or limit CAF\'s liability for:</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(a) death or personal injury caused by negligence (as such term is defined by the Unfair Contract Terms Act 1977); or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(b) fraud; or</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">(d) any liability which cannot be excluded or limited under applicable law.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">8.4 If your use of material on this website results in the need for servicing, repair or correction of equipment, software or data, you assume all costs thereof.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"9\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">9. Entire agreement</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">These terms of use, together with our terms of use for credit and debit card donations, Charity Search, CAF Charity account, CAF Company account and CAF Donate contain all the terms of your agreement with us relating to your use of our website. No other written or oral statement, whenever made (including statements in any brochure or promotional literature or materials published by us), will be incorporated.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"10\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">10. Governing law and jurisdiction</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Your use of our website, any information downloaded from it and the operation of these terms and conditions will be governed by and construed in accordance with the laws of England and Wales and you agree to submit to the exclusive jurisdiction of the English Courts in relation to any action, proceeding, claim, dispute or difference arising out of your use of our website or otherwise in connection with our website.</p>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\"><a style=\"color: #0088cc; text-decoration-line: none;\" href=\"https://www.cafindia.org/terms-conditions#\">Back to top</a></p>\r\n<h4 id=\"11\" style=\"margin: 12px 0px; font-family: Arial, Helvetica, sans-serif; line-height: 18px; color: #d24508; text-rendering: optimizelegibility; font-size: 14px;\">11. Cancellation and refund policy</h4>\r\n<p style=\"margin: 0px 0px 15px; font-size: 0.813em; line-height: 22px;\">Donations processed successfully through the payment gateway will not be refunded. Please choose the cause you wish to support and the amount you wish to contribute carefully. No amount will be deducted in case the transaction fails to process. No donation is small when it comes to helping the disadvantaged section of our society. Let us get on with giving!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<main id=\"content\" class=\"\" role=\"main\">\r\n<div id=\"system-message-container\">&nbsp;</div>\r\n</main></div>\r\n<footer class=\"footer\" style=\"color: #5e5c5c; font-family: Arial, sans-serif; font-size: 14.4px;\" role=\"contentinfo\">\r\n<div class=\"container\" style=\"max-width: 972px; margin-right: auto; margin-left: auto; width: 940px;\">\r\n<div class=\"footertop\" style=\"padding: 8px 18px; margin-top: 20px;\">\r\n<div class=\"row-fluid clearfix\" style=\"width: 904px;\">\r\n<div class=\"custom span8 row-fluid\" style=\"float: left; min-height: 28px; margin-left: 0px; width: 596.25px; box-sizing: border-box;\">\r\n<div class=\"span3\" style=\"float: left; min-height: 28px; margin-left: 0px; width: 139.547px; box-sizing: border-box;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer>', NULL, 'terms-and-conditions', 'Website terms of use', 'CAF (Charities Aid Foundation', 'ACTIVE', '2020-10-22 12:16:14', '2020-11-01 12:18:30', NULL),
(3, 1, 'Refund Policy', 'Cancellation and refund policy Donations processed successfully through the payment gateway will not be refunded. Please choose the cause you wish to support and the amount you wish to contribute carefully. ... No donation is small when it comes to helping the disadvantaged section of our society.', '<p>Cancellation and refund policy Donations processed successfully through the payment gateway will not be refunded. Please choose the cause you wish to support and the amount you wish to contribute carefully. ... No donation is small when it comes to helping the disadvantaged section of our society.</p>', 'pages/November2020/V5lkZ2CHOKK5L1ncoheQ.jpg', 'refund-policy', 'erwerwer', 'werwer', 'ACTIVE', '2020-11-09 02:18:37', '2021-01-16 19:40:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner_management`
--

CREATE TABLE `partner_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$Y7Y4nHjPmfIcHL6MGm8KRerA0CWNcRbu9Gv0fqq5ShExEjK4V5kJO', '2020-10-25 06:17:38'),
('aryan.solanki@cafindia.org', '$2y$10$Ea4q2g650DldqZ0MpouHGesVZVHhPgegLjI8zjZNKMQkLjBrJDXA6', '2021-05-20 12:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(2, 'browse_bread', NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(3, 'browse_database', NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(4, 'browse_media', NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(5, 'browse_compass', NULL, '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(6, 'browse_menus', 'menus', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(7, 'read_menus', 'menus', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(8, 'edit_menus', 'menus', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(9, 'add_menus', 'menus', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(10, 'delete_menus', 'menus', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(11, 'browse_roles', 'roles', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(12, 'read_roles', 'roles', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(13, 'edit_roles', 'roles', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(14, 'add_roles', 'roles', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(15, 'delete_roles', 'roles', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(16, 'browse_users', 'users', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(17, 'read_users', 'users', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(18, 'edit_users', 'users', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(19, 'add_users', 'users', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(20, 'delete_users', 'users', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(21, 'browse_settings', 'settings', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(22, 'read_settings', 'settings', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(23, 'edit_settings', 'settings', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(24, 'add_settings', 'settings', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(25, 'delete_settings', 'settings', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(26, 'browse_categories', 'categories', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(27, 'read_categories', 'categories', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(28, 'edit_categories', 'categories', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(29, 'add_categories', 'categories', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(30, 'delete_categories', 'categories', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(31, 'browse_posts', 'posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(32, 'read_posts', 'posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(33, 'edit_posts', 'posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(34, 'add_posts', 'posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(35, 'delete_posts', 'posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(36, 'browse_pages', 'pages', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(37, 'read_pages', 'pages', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(38, 'edit_pages', 'pages', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(39, 'add_pages', 'pages', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(40, 'delete_pages', 'pages', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(41, 'browse_hooks', NULL, '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(42, 'browse_trustees', 'trustees', '2020-10-24 14:23:31', '2020-10-24 14:23:31'),
(43, 'read_trustees', 'trustees', '2020-10-24 14:23:31', '2020-10-24 14:23:31'),
(44, 'edit_trustees', 'trustees', '2020-10-24 14:23:31', '2020-10-24 14:23:31'),
(45, 'add_trustees', 'trustees', '2020-10-24 14:23:31', '2020-10-24 14:23:31'),
(46, 'delete_trustees', 'trustees', '2020-10-24 14:23:31', '2020-10-24 14:23:31'),
(47, 'browse_banners', 'banners', '2020-10-24 14:27:15', '2020-10-24 14:27:15'),
(48, 'read_banners', 'banners', '2020-10-24 14:27:15', '2020-10-24 14:27:15'),
(49, 'edit_banners', 'banners', '2020-10-24 14:27:15', '2020-10-24 14:27:15'),
(50, 'add_banners', 'banners', '2020-10-24 14:27:15', '2020-10-24 14:27:15'),
(51, 'delete_banners', 'banners', '2020-10-24 14:27:15', '2020-10-24 14:27:15'),
(52, 'browse_primary_categories', 'primary_categories', '2020-10-25 11:47:46', '2020-10-25 11:47:46'),
(53, 'read_primary_categories', 'primary_categories', '2020-10-25 11:47:46', '2020-10-25 11:47:46'),
(54, 'edit_primary_categories', 'primary_categories', '2020-10-25 11:47:46', '2020-10-25 11:47:46'),
(55, 'add_primary_categories', 'primary_categories', '2020-10-25 11:47:46', '2020-10-25 11:47:46'),
(56, 'delete_primary_categories', 'primary_categories', '2020-10-25 11:47:46', '2020-10-25 11:47:46'),
(57, 'browse_primary_pages', 'primary_pages', '2020-10-25 12:05:05', '2020-10-25 12:05:05'),
(58, 'read_primary_pages', 'primary_pages', '2020-10-25 12:05:05', '2020-10-25 12:05:05'),
(59, 'edit_primary_pages', 'primary_pages', '2020-10-25 12:05:05', '2020-10-25 12:05:05'),
(60, 'add_primary_pages', 'primary_pages', '2020-10-25 12:05:05', '2020-10-25 12:05:05'),
(61, 'delete_primary_pages', 'primary_pages', '2020-10-25 12:05:05', '2020-10-25 12:05:05'),
(62, 'browse_editors', 'editors', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(63, 'read_editors', 'editors', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(64, 'edit_editors', 'editors', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(65, 'add_editors', 'editors', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(66, 'delete_editors', 'editors', '2020-10-25 13:10:07', '2020-10-25 13:10:07'),
(73, 'browse_right_side_banners', 'right_side_banners', '2020-11-21 14:09:35', '2020-11-21 14:09:35'),
(74, 'read_right_side_banners', 'right_side_banners', '2020-11-21 14:09:35', '2020-11-21 14:09:35'),
(75, 'edit_right_side_banners', 'right_side_banners', '2020-11-21 14:09:35', '2020-11-21 14:09:35'),
(76, 'add_right_side_banners', 'right_side_banners', '2020-11-21 14:09:35', '2020-11-21 14:09:35'),
(77, 'delete_right_side_banners', 'right_side_banners', '2020-11-21 14:09:35', '2020-11-21 14:09:35'),
(93, 'browse_contacts', 'contacts', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(94, 'read_contacts', 'contacts', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(95, 'edit_contacts', 'contacts', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(96, 'add_contacts', 'contacts', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(97, 'delete_contacts', 'contacts', '2020-11-22 13:36:39', '2020-11-22 13:36:39'),
(98, 'browse_newsletter_subscriptions', 'newsletter_subscriptions', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(99, 'read_newsletter_subscriptions', 'newsletter_subscriptions', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(100, 'edit_newsletter_subscriptions', 'newsletter_subscriptions', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(101, 'add_newsletter_subscriptions', 'newsletter_subscriptions', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(102, 'delete_newsletter_subscriptions', 'newsletter_subscriptions', '2020-11-25 12:50:22', '2020-11-25 12:50:22'),
(108, 'browse_primary_page_sections', 'primary_page_sections', '2020-11-30 13:00:18', '2020-11-30 13:00:18'),
(109, 'read_primary_page_sections', 'primary_page_sections', '2020-11-30 13:00:18', '2020-11-30 13:00:18'),
(110, 'edit_primary_page_sections', 'primary_page_sections', '2020-11-30 13:00:18', '2020-11-30 13:00:18'),
(111, 'add_primary_page_sections', 'primary_page_sections', '2020-11-30 13:00:18', '2020-11-30 13:00:18'),
(112, 'delete_primary_page_sections', 'primary_page_sections', '2020-11-30 13:00:18', '2020-11-30 13:00:18'),
(113, 'browse_primary_page_section_cards', 'primary_page_section_cards', '2020-11-30 13:53:56', '2020-11-30 13:53:56'),
(114, 'read_primary_page_section_cards', 'primary_page_section_cards', '2020-11-30 13:53:56', '2020-11-30 13:53:56'),
(115, 'edit_primary_page_section_cards', 'primary_page_section_cards', '2020-11-30 13:53:56', '2020-11-30 13:53:56'),
(116, 'add_primary_page_section_cards', 'primary_page_section_cards', '2020-11-30 13:53:56', '2020-11-30 13:53:56'),
(117, 'delete_primary_page_section_cards', 'primary_page_section_cards', '2020-11-30 13:53:56', '2020-11-30 13:53:56'),
(123, 'browse_career_management', 'career_management', '2021-01-06 19:21:56', '2021-01-06 19:21:56'),
(124, 'read_career_management', 'career_management', '2021-01-06 19:21:56', '2021-01-06 19:21:56'),
(125, 'edit_career_management', 'career_management', '2021-01-06 19:21:56', '2021-01-06 19:21:56'),
(126, 'add_career_management', 'career_management', '2021-01-06 19:21:56', '2021-01-06 19:21:56'),
(127, 'delete_career_management', 'career_management', '2021-01-06 19:21:56', '2021-01-06 19:21:56'),
(128, 'browse_cause_management', 'cause_management', '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(129, 'read_cause_management', 'cause_management', '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(130, 'edit_cause_management', 'cause_management', '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(131, 'add_cause_management', 'cause_management', '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(132, 'delete_cause_management', 'cause_management', '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(133, 'browse_gallery_management', 'gallery_management', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(134, 'read_gallery_management', 'gallery_management', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(135, 'edit_gallery_management', 'gallery_management', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(136, 'add_gallery_management', 'gallery_management', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(137, 'delete_gallery_management', 'gallery_management', '2021-01-06 19:43:07', '2021-01-06 19:43:07'),
(138, 'browse_ngo_management', 'ngo_management', '2021-01-06 20:05:18', '2021-01-06 20:05:18'),
(139, 'read_ngo_management', 'ngo_management', '2021-01-06 20:05:18', '2021-01-06 20:05:18'),
(140, 'edit_ngo_management', 'ngo_management', '2021-01-06 20:05:18', '2021-01-06 20:05:18'),
(141, 'add_ngo_management', 'ngo_management', '2021-01-06 20:05:18', '2021-01-06 20:05:18'),
(142, 'delete_ngo_management', 'ngo_management', '2021-01-06 20:05:18', '2021-01-06 20:05:18'),
(148, 'browse_resource_management', 'resource_management', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(149, 'read_resource_management', 'resource_management', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(150, 'edit_resource_management', 'resource_management', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(151, 'add_resource_management', 'resource_management', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(152, 'delete_resource_management', 'resource_management', '2021-01-06 20:21:21', '2021-01-06 20:21:21'),
(153, 'browse_campaign_management', 'campaign_management', '2021-01-06 20:50:39', '2021-01-06 20:50:39'),
(154, 'read_campaign_management', 'campaign_management', '2021-01-06 20:50:39', '2021-01-06 20:50:39'),
(155, 'edit_campaign_management', 'campaign_management', '2021-01-06 20:50:39', '2021-01-06 20:50:39'),
(156, 'add_campaign_management', 'campaign_management', '2021-01-06 20:50:39', '2021-01-06 20:50:39'),
(157, 'delete_campaign_management', 'campaign_management', '2021-01-06 20:50:39', '2021-01-06 20:50:39'),
(158, 'browse_donations', 'donations', '2021-01-14 17:13:57', '2021-01-14 17:13:57'),
(159, 'read_donations', 'donations', '2021-01-14 17:13:57', '2021-01-14 17:13:57'),
(160, 'edit_donations', 'donations', '2021-01-14 17:13:57', '2021-01-14 17:13:57'),
(161, 'add_donations', 'donations', '2021-01-14 17:13:57', '2021-01-14 17:13:57'),
(162, 'delete_donations', 'donations', '2021-01-14 17:13:57', '2021-01-14 17:13:57'),
(163, 'browse_footer_page_section_cards', 'footer_page_section_cards', '2021-01-21 17:08:25', '2021-01-21 17:08:25'),
(164, 'read_footer_page_section_cards', 'footer_page_section_cards', '2021-01-21 17:08:25', '2021-01-21 17:08:25'),
(165, 'edit_footer_page_section_cards', 'footer_page_section_cards', '2021-01-21 17:08:25', '2021-01-21 17:08:25'),
(166, 'add_footer_page_section_cards', 'footer_page_section_cards', '2021-01-21 17:08:25', '2021-01-21 17:08:25'),
(167, 'delete_footer_page_section_cards', 'footer_page_section_cards', '2021-01-21 17:08:25', '2021-01-21 17:08:25'),
(168, 'browse_footer_page_sections', 'footer_page_sections', '2021-01-21 17:09:18', '2021-01-21 17:09:18'),
(169, 'read_footer_page_sections', 'footer_page_sections', '2021-01-21 17:09:18', '2021-01-21 17:09:18'),
(170, 'edit_footer_page_sections', 'footer_page_sections', '2021-01-21 17:09:18', '2021-01-21 17:09:18'),
(171, 'add_footer_page_sections', 'footer_page_sections', '2021-01-21 17:09:18', '2021-01-21 17:09:18'),
(172, 'delete_footer_page_sections', 'footer_page_sections', '2021-01-21 17:09:18', '2021-01-21 17:09:18'),
(173, 'browse_featured_stories', 'featured_stories', '2021-01-22 17:33:39', '2021-01-22 17:33:39'),
(174, 'read_featured_stories', 'featured_stories', '2021-01-22 17:33:39', '2021-01-22 17:33:39'),
(175, 'edit_featured_stories', 'featured_stories', '2021-01-22 17:33:39', '2021-01-22 17:33:39'),
(176, 'add_featured_stories', 'featured_stories', '2021-01-22 17:33:39', '2021-01-22 17:33:39'),
(177, 'delete_featured_stories', 'featured_stories', '2021-01-22 17:33:39', '2021-01-22 17:33:39'),
(178, 'browse_blogs', 'blogs', '2021-01-23 19:37:04', '2021-01-23 19:37:04'),
(179, 'read_blogs', 'blogs', '2021-01-23 19:37:04', '2021-01-23 19:37:04'),
(180, 'edit_blogs', 'blogs', '2021-01-23 19:37:04', '2021-01-23 19:37:04'),
(181, 'add_blogs', 'blogs', '2021-01-23 19:37:04', '2021-01-23 19:37:04'),
(182, 'delete_blogs', 'blogs', '2021-01-23 19:37:04', '2021-01-23 19:37:04'),
(183, 'browse_authors', 'authors', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(184, 'read_authors', 'authors', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(185, 'edit_authors', 'authors', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(186, 'add_authors', 'authors', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(187, 'delete_authors', 'authors', '2021-01-24 18:55:39', '2021-01-24 18:55:39'),
(188, 'browse_notifications', 'notifications', '2021-02-01 18:51:31', '2021-02-01 18:51:31'),
(189, 'read_notifications', 'notifications', '2021-02-01 18:51:31', '2021-02-01 18:51:31'),
(190, 'edit_notifications', 'notifications', '2021-02-01 18:51:31', '2021-02-01 18:51:31'),
(191, 'add_notifications', 'notifications', '2021-02-01 18:51:31', '2021-02-01 18:51:31'),
(192, 'delete_notifications', 'notifications', '2021-02-01 18:51:31', '2021-02-01 18:51:31'),
(193, 'browse_publications', 'publications', '2021-03-18 19:35:18', '2021-03-18 19:35:18'),
(194, 'read_publications', 'publications', '2021-03-18 19:35:18', '2021-03-18 19:35:18'),
(195, 'edit_publications', 'publications', '2021-03-18 19:35:18', '2021-03-18 19:35:18'),
(196, 'add_publications', 'publications', '2021-03-18 19:35:18', '2021-03-18 19:35:18'),
(197, 'delete_publications', 'publications', '2021-03-18 19:35:18', '2021-03-18 19:35:18'),
(198, 'browse_stories_of_hopes', 'stories_of_hopes', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(199, 'read_stories_of_hopes', 'stories_of_hopes', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(200, 'edit_stories_of_hopes', 'stories_of_hopes', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(201, 'add_stories_of_hopes', 'stories_of_hopes', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(202, 'delete_stories_of_hopes', 'stories_of_hopes', '2021-03-18 19:58:44', '2021-03-18 19:58:44'),
(203, 'browse_press_releases', 'press_releases', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(204, 'read_press_releases', 'press_releases', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(205, 'edit_press_releases', 'press_releases', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(206, 'add_press_releases', 'press_releases', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(207, 'delete_press_releases', 'press_releases', '2021-03-18 19:58:52', '2021-03-18 19:58:52'),
(208, 'browse_newsletters', 'newsletters', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(209, 'read_newsletters', 'newsletters', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(210, 'edit_newsletters', 'newsletters', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(211, 'add_newsletters', 'newsletters', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(212, 'delete_newsletters', 'newsletters', '2021-03-18 19:58:58', '2021-03-18 19:58:58'),
(213, 'browse_in_the_news', 'in_the_news', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(214, 'read_in_the_news', 'in_the_news', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(215, 'edit_in_the_news', 'in_the_news', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(216, 'add_in_the_news', 'in_the_news', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(217, 'delete_in_the_news', 'in_the_news', '2021-03-18 20:00:27', '2021-03-18 20:00:27'),
(218, 'browse_annual_reports', 'annual_reports', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(219, 'read_annual_reports', 'annual_reports', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(220, 'edit_annual_reports', 'annual_reports', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(221, 'add_annual_reports', 'annual_reports', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(222, 'delete_annual_reports', 'annual_reports', '2021-03-18 20:00:34', '2021-03-18 20:00:34'),
(223, 'browse_our_teams', 'our_teams', '2021-04-10 09:00:01', '2021-04-10 09:00:01'),
(224, 'read_our_teams', 'our_teams', '2021-04-10 09:00:01', '2021-04-10 09:00:01'),
(225, 'edit_our_teams', 'our_teams', '2021-04-10 09:00:01', '2021-04-10 09:00:01'),
(226, 'add_our_teams', 'our_teams', '2021-04-10 09:00:01', '2021-04-10 09:00:01'),
(227, 'delete_our_teams', 'our_teams', '2021-04-10 09:00:01', '2021-04-10 09:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 7),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(93, 1),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(102, 1),
(102, 3),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(110, 3),
(111, 1),
(111, 3),
(112, 1),
(112, 3),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(133, 7),
(134, 1),
(134, 3),
(134, 7),
(135, 1),
(135, 3),
(135, 7),
(136, 1),
(136, 3),
(136, 7),
(137, 1),
(137, 3),
(137, 7),
(138, 1),
(138, 3),
(139, 1),
(139, 3),
(140, 1),
(140, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(148, 1),
(148, 3),
(149, 1),
(149, 3),
(150, 1),
(150, 3),
(151, 1),
(151, 3),
(152, 1),
(152, 3),
(153, 1),
(153, 3),
(153, 7),
(154, 1),
(154, 3),
(154, 7),
(155, 1),
(155, 3),
(155, 7),
(156, 1),
(156, 3),
(156, 7),
(157, 1),
(157, 3),
(157, 7),
(158, 1),
(158, 3),
(158, 7),
(159, 1),
(159, 3),
(159, 7),
(160, 1),
(160, 3),
(160, 7),
(161, 1),
(161, 3),
(161, 7),
(162, 1),
(162, 3),
(162, 7),
(163, 3),
(164, 1),
(164, 3),
(165, 1),
(165, 3),
(166, 1),
(166, 3),
(167, 1),
(167, 3),
(168, 3),
(169, 1),
(169, 3),
(170, 1),
(170, 3),
(171, 1),
(171, 3),
(172, 1),
(172, 3),
(173, 1),
(173, 3),
(174, 1),
(174, 3),
(175, 1),
(175, 3),
(176, 1),
(176, 3),
(177, 1),
(177, 3),
(178, 1),
(178, 3),
(179, 1),
(179, 3),
(180, 1),
(180, 3),
(181, 1),
(181, 3),
(182, 1),
(182, 3),
(183, 1),
(183, 3),
(184, 1),
(184, 3),
(185, 1),
(185, 3),
(186, 1),
(186, 3),
(187, 1),
(187, 3),
(188, 1),
(188, 3),
(189, 1),
(189, 3),
(190, 3),
(191, 1),
(191, 3),
(192, 1),
(192, 3),
(193, 1),
(193, 3),
(194, 1),
(194, 3),
(195, 1),
(195, 3),
(196, 1),
(196, 3),
(197, 1),
(197, 3),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 1, 7, 'About Us', NULL, 'We exist to make giving go further and transform lives and communities.', NULL, 'posts/December2020/qvlCG8PV9klHCt4xi4S8.jpg', 'about-us', NULL, NULL, 'PUBLISHED', 0, '2020-11-28 12:59:23', '2021-04-06 06:36:48', NULL),
(7, 1, 11, 'How we are governed', NULL, 'Our Board of Trustees and Executive Team is responsible for the management of CAF India.', NULL, 'posts/December2020/B6YVy3QvYP6yPtDpkXiG.jpg', 'our-governance', NULL, NULL, 'PUBLISHED', 0, '2020-11-28 13:29:08', '2021-04-10 08:20:41', NULL),
(10, 1, 21, 'Our Impact', NULL, 'We are \'Cause-Universal\'', NULL, 'posts/December2020/Mmbw6v89HjRgZDN8NLjM.jpg', 'Thematic-impact', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 02:43:24', '2021-05-17 05:45:37', NULL),
(25, 1, 8, 'Global Alliance', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', '<p>As a member of the CAF Alliance, CAF India has the advantage of connecting to donors abroad who seek to be a part of the Indian philanthropic landscape.&nbsp;</p>\r\n<p>The CAF Global Alliance is committed to build a generosity movement locally and globally, motivating society to give more effectively and helping to transform lives and communities around the world. With more people wanting to give internationally, it&rsquo;s crucial that their experience is simple, secure and tax-effective. With their range of products, and experience in supporting global philanthropy, the CAF Global Alliance can help individuals, companies and foundations make the most of their giving &mdash; wherever they are.&nbsp;</p>\r\n<p>CAF India is one of nine offices operating in collaboration as the CAF Global Alliance, including</p>', 'posts/December2020/4IXqTYYJxoJXZE9jeb1d.jpg', 'global-alliance', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:47:50', '2021-04-21 06:56:43', NULL),
(26, 32, 19, 'Annual Reports and Financials', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', '<p>Our annual reports provide a detailed analysis of our performance over the year - plus a look at our activities.</p>', 'posts/December2020/j2NwHwSqdZU1kkLsCT9i.jpg', 'annual-reports-and-financials', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:50:04', '2021-09-14 09:18:42', NULL),
(27, 1, 20, 'Work With Us', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', '<p>CAF India is a registered charitable trust set up in 1998 to provide strategic and management support to corporates, individuals and NGOs with an aim to ensure greater impact of their philanthropic and CSR investments.</p>\r\n<p>Charities Aid Foundation is a leading international not-for-profit organisation, which works to make giving more effective and charities more successful. CAF India is part of an international network with offices in nine countries, including Australia, Brazil, Canada, India, Russia, South Africa and the United States of America and distributes funds to over 90 countries around the world.</p>\r\n<p>We promote and support all socio development causes that positions us uniquely to address a wide cross sectoral span of donor interests. CAF India, with its dedicated team of experts, brings development sector knowledge and experience to take \'Giving\' further.</p>\r\n<p>We have more than a decade long proven track record of conducting due diligence of non-government organizations across India and have gained the trust of many individual donors, national and transnational companies, Foundations and institutions. CAF India has a wide range of \'giving\' solutions which include Corporate giving, Give As You Earn, Individual giving etc. We have an impeccable record of serving large multinationals, Public Sector Undertakings, Indian commercial giants by delivering their CSR commitments successfully.</p>\r\n<p>The projects pursued by us lends rigorous support to the marginalized societies in order to improve their socio-economic conditions. We provide expertise and the right resources to help our partners and donors identify the right NGO. We have performed due diligence checks on more than 2100+ NGOs, improving their capacity building scope for the future. Robust and impartial validation processes continue to be our competitive edge and this helps us establish trust amongst various NGOs which also facilitates increased engagement with the corporations.</p>', 'posts/December2020/RKA6t9SRmJQF8cJxVwrd.jpg', 'work-with-us', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:52:13', '2021-01-27 13:22:02', NULL),
(28, 1, 23, 'Connect Workshop', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', '<p>CAF India is a registered charitable trust set up in 1998 to provide strategic and management support to corporates, individuals and NGOs with an aim to ensure greater impact of their philanthropic and CSR investments.</p>\r\n<p>Charities Aid Foundation is a leading international not-for-profit organisation, which works to make giving more effective and charities more successful. CAF India is part of an international network with offices in nine countries, including Australia, Brazil, Canada, India, Russia, South Africa and the United States of America and distributes funds to over 90 countries around the world.</p>\r\n<p>We promote and support all socio development causes that positions us uniquely to address a wide cross sectoral span of donor interests. CAF India, with its dedicated team of experts, brings development sector knowledge and experience to take \'Giving\' further.</p>\r\n<p>We have more than a decade long proven track record of conducting due diligence of non-government organizations across India and have gained the trust of many individual donors, national and transnational companies, Foundations and institutions. CAF India has a wide range of \'giving\' solutions which include Corporate giving, Give As You Earn, Individual giving etc. We have an impeccable record of serving large multinationals, Public Sector Undertakings, Indian commercial giants by delivering their CSR commitments successfully.</p>\r\n<p>The projects pursued by us lends rigorous support to the marginalized societies in order to improve their socio-economic conditions. We provide expertise and the right resources to help our partners and donors identify the right NGO. We have performed due diligence checks on more than 2100+ NGOs, improving their capacity building scope for the future. Robust and impartial validation processes continue to be our competitive edge and this helps us establish trust amongst various NGOs which also facilitates increased engagement with the corporations.</p>\r\n<p>&nbsp;</p>', 'posts/December2020/Pt9LJvgOiQXO5oJfQjXJ.jpg', 'connect-workshop', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:54:48', '2021-01-27 13:27:25', NULL),
(29, 1, 27, 'Press Releases', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/December2020/Ip0yT4JGbj0w6J1WFs6D.jpg', 'press-releases', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:57:52', '2021-04-06 06:37:28', NULL),
(30, 1, 28, 'In the News', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/December2020/0STsYfgtNlyqWe9Bjy3u.jpg', 'in-the-news', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:59:29', '2021-03-16 05:16:20', NULL),
(31, 1, 29, 'LATEST BLOGS', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/December2020/Zpat7OoUU4GeOtFObiso.jpg', 'blogs', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 07:00:33', '2021-04-10 07:19:00', NULL),
(32, 1, 31, 'Awards and Accolades', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/December2020/G3hxQ60Kt8HO8DZsKLuH.jpg', 'awards-and-accolades', NULL, NULL, 'PUBLISHED', 1, '2020-12-04 07:05:32', '2021-04-10 07:46:47', NULL),
(33, 1, 6, 'Who We Are', NULL, 'We make giving count to transform lives and communities across India', NULL, 'posts/February2021/H4rvCV2KvAnnD7cT58Dw.jpg', 'pages-all', NULL, NULL, 'PUBLISHED', 0, '2021-02-10 18:07:41', '2021-03-03 11:05:22', NULL),
(34, 1, 26, 'Publication', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/March2021/E4ReGQvvFay9QBJgXQEi.jpg', 'publications', NULL, NULL, 'PUBLISHED', 0, '2021-03-15 09:55:07', '2021-04-06 10:11:08', NULL),
(36, 1, 30, 'Stories Of Hope', NULL, 'Our mission is to promote and support strategic giving for a more equitable and sustainable society.', NULL, 'posts/March2021/GnCpOxwhspTVJnXkWWS6.jpg', 'stories-of-hope', NULL, NULL, 'PUBLISHED', 0, '2021-03-16 04:38:14', '2021-04-06 10:11:30', NULL),
(37, 1, 22, 'Campaigns and Appeals', NULL, 'Campaigns and Appeals', '<p>Campaigns and Appeals</p>', 'posts/March2021/7kReSX6JsZvgYezgAU0y.jpg', 'campaigns-and-appeals', NULL, NULL, 'PUBLISHED', 0, '2021-03-16 04:40:32', '2021-03-16 04:40:32', NULL),
(38, 1, 9, 'What We Do', NULL, 'Our work reflects in the impact that we have made in the lives of people and communities', NULL, 'posts/May2021/bC1JSJCvBsdIhiUEQy3l.jpg', 'what-we-do', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 06:14:46', '2021-05-19 06:15:52', NULL),
(40, 1, 35, 'Education', NULL, 'Going by the motto ‘education for all’, we have worked in the education sector through our diverse set of interventions.', NULL, 'posts/May2021/MlOcfVgf6CWO3HnmwXep.jpg', 'education', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 06:47:16', '2021-05-19 06:47:16', NULL),
(41, 1, 35, 'Water', NULL, 'Our programmes are focused to address the issue of water scarcity, increase water access, treatment of wastewater and minimize wasteful practices', NULL, 'posts/May2021/UVLHP1v0fbYwq7O0SBAs.jpg', 'water', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 08:27:42', '2021-05-19 08:27:42', NULL),
(42, 1, 35, 'Agriculture', NULL, 'We promote climate-resilient farming practices that ensure sustainable livelihood for farmers across India', NULL, 'posts/May2021/le4auguaj4Kg5C9gf6n6.jpg', 'agriculture', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 08:38:54', '2021-05-19 08:38:54', NULL),
(43, 1, 35, 'Skill and livelihoods', NULL, 'We believe that learning should never stop. Learning a new skill can transform lives', NULL, 'posts/May2021/lTrzKfP3MGibqcwgIk8I.jpg', 'skills-and-livelihoods', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 08:45:10', '2021-05-19 08:46:09', NULL),
(51, 1, 35, 'Health and Nutrition', NULL, 'We are committed to support the healthcare delivery system of India, so that no one is left behind for the want of treatment.', NULL, 'posts/May2021/8mkMqmc3vEFTu6mC9jQh.jpg', 'health-and-nutrition', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:15:08', '2021-05-19 09:15:08', NULL),
(52, 1, 21, 'Sanitation', NULL, 'In tandem with the Swachh Bharat Mission, our programmes are focused on building sanitation infrastructure and create awareness about importance of hygiene and bring about a positive behavioral change among communities', NULL, 'posts/May2021/ALifd7qKkWicKGZjMnLV.jpg', 'sanitation', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:16:01', '2021-05-19 09:16:01', NULL),
(55, 1, 35, 'Disability', NULL, 'Our endeavour is to ensure that people with disabilities get the respect and opportunities they deserve', NULL, 'posts/May2021/HgBQwhwot7CPoAOeMtFI.jpg', 'disability', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:19:11', '2021-05-19 09:19:11', NULL),
(56, 1, 35, 'Elderly Care', NULL, NULL, NULL, 'posts/May2021/LIZ1acFA6j8eaApbFRAQ.jpg', 'elderly-care', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:20:07', '2021-05-19 09:20:07', NULL),
(57, 1, 35, 'Institution Building', NULL, NULL, NULL, 'posts/May2021/FitnWP4TKrSehFii0VKk.jpg', 'institution-building', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:21:12', '2021-05-19 09:21:12', NULL),
(58, 1, 35, 'Wildlife', NULL, NULL, NULL, 'posts/May2021/21uicHT6N9oluwULNHew.jpg', 'wildlife', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:22:15', '2021-05-19 09:22:15', NULL),
(59, 1, 35, 'Environment', NULL, 'We work towards building a clean and green India by empowering rural communities to adopt an environment friendly sustainable lifestyle', NULL, 'posts/May2021/58KdJDo0KrZVG2Rfu65j.jpg', 'environment', NULL, NULL, 'PUBLISHED', 0, '2021-05-19 09:23:12', '2021-05-19 09:23:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `press_releases`
--

CREATE TABLE `press_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `primary_categories`
--

CREATE TABLE `primary_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_categories`
--

INSERT INTO `primary_categories` (`id`, `parent_id`, `order`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`, `redirect`) VALUES
(7, NULL, 2, 'For Companies', 'for-companies', 'primary-categories\\November2020\\qO4mcPeRO0dRY6Hk6QnK.png', 'A', '2020-11-24 12:44:18', '2021-03-09 06:24:38', NULL, NULL),
(8, NULL, 3, 'For Individuals', 'For-Individuals', NULL, 'A', '2020-11-25 13:38:23', '2021-01-21 07:50:22', NULL, NULL),
(9, NULL, 4, 'For NGOs', 'for-ngos', 'primary-categories/December2020/pNCzuxIQxRhcbRZceH3s.png', 'A', '2020-11-25 13:38:57', '2021-04-14 04:11:30', NULL, NULL),
(10, NULL, 5, 'For Foundations', 'for-institutions-and-foundations', NULL, 'A', '2020-11-25 13:39:11', '2021-01-05 17:47:04', NULL, NULL),
(11, 24, 63, 'Give Now', 'give-now-c', NULL, 'A', '2020-11-25 13:39:22', '2021-02-05 12:51:05', NULL, NULL),
(12, NULL, 7, 'Events', 'events', NULL, 'A', '2020-11-25 13:39:32', '2021-01-05 18:53:29', NULL, NULL),
(13, 7, 3, 'CSR', 'csr', 'primary-categories/December2020/iBytgmlgbZjv0XrJlydR.png', 'A', '2020-11-25 13:41:57', '2021-01-04 17:31:54', NULL, NULL),
(14, 13, 1, 'CSR Policy And Strategy Development', 'csr-policy-and-strategy-development', NULL, 'A', '2020-11-25 13:43:47', '2021-03-22 11:48:01', NULL, NULL),
(15, 13, 2, 'Thematic Intervention Development', 'Thematic-Intervention-Development', NULL, 'A', '2020-11-25 13:44:02', '2021-01-21 08:20:06', NULL, NULL),
(17, 13, 3, 'Partner Selection And Due Diligence', 'Partner-Selection-And-Due-Diligence', NULL, 'A', '2020-11-25 13:52:15', '2021-03-22 11:49:04', NULL, NULL),
(19, 13, 6, 'Communication & Engagement', 'communication-and-engagement', NULL, 'A', '2020-11-25 13:52:46', '2021-03-22 11:51:50', NULL, NULL),
(20, 13, 7, 'Programme Evaluation & Reporting', 'programme-evaluation-and-reporting', NULL, 'A', '2020-11-25 13:55:16', '2021-03-22 11:51:29', NULL, NULL),
(21, 7, 9, 'Employee Giving', 'employee-giving', 'primary-categories/February2021/KyMxq32mUikoSYg6oqq8.png', 'A', '2020-11-25 13:55:48', '2021-02-08 18:00:43', NULL, NULL),
(23, 7, 10, 'Volunteering', 'volunteering', 'primary-categories/December2020/w4X8rtgJ7h0IiWWlC3jh.png', 'A', '2020-12-03 03:41:01', '2021-01-04 17:31:54', NULL, NULL),
(24, 7, 11, 'Corporate Campaigns', 'Corporate Campaigns', NULL, 'A', '2020-12-03 03:59:37', '2021-01-04 17:31:54', NULL, NULL),
(25, 7, 12, 'CSR Laws', 'csr-laws', NULL, 'A', '2020-12-03 04:01:55', '2021-01-04 17:31:54', NULL, NULL),
(26, 7, 13, 'Call Us', 'call-us', NULL, 'A', '2020-12-03 04:02:36', '2021-01-21 07:23:19', NULL, NULL),
(27, 13, 1, 'CSR Policy And Strategy Development', 'CSR Policy And Strategy Development', NULL, 'A', '2020-12-03 04:05:32', '2021-03-22 11:55:41', NULL, NULL),
(28, 13, 2, 'Thematic Intervention Development', 'Thematic Intervention Development', NULL, 'A', '2020-12-03 04:06:05', '2021-03-22 11:56:07', NULL, NULL),
(29, 13, 4, 'Programme Design Delivery And Management', 'programme-design-delivery-and-management', NULL, 'A', '2020-12-03 04:07:08', '2021-03-22 12:01:24', NULL, NULL),
(30, 13, 5, 'Capacity Building', 'capacity-building', NULL, 'A', '2020-12-03 04:08:04', '2021-03-22 11:54:32', NULL, NULL),
(31, 32, 18, 'Programme Evaluation & Reporting', 'Programme Evaluation & Reporting', NULL, 'D', '2020-12-03 04:09:27', '2021-04-19 11:17:49', NULL, NULL),
(32, 10, 19, 'Project Management', 'project-management', 'primary-categories/December2020/eHHivLOtwOEIYemxI53M.png', 'A', '2020-12-03 04:14:05', '2021-01-04 17:31:54', NULL, NULL),
(33, 10, 20, 'Financial And Accounts Management', 'Financial-And-Accounts-Management', NULL, 'A', '2020-12-03 04:15:00', '2021-01-21 07:51:36', NULL, NULL),
(34, 10, 21, 'Donor Advised Funds', 'donor-advised-fund', NULL, 'A', '2020-12-03 04:16:05', '2021-04-20 08:06:12', NULL, NULL),
(35, 10, 22, 'Corporate Campaigns', 'corporate-Campaigns', NULL, 'A', '2020-12-03 04:17:00', '2021-01-21 07:38:27', NULL, NULL),
(36, 32, 23, 'Thematic Intervention', 'Thematic-Intervention', NULL, 'D', '2020-12-03 04:18:44', '2021-04-19 11:18:16', NULL, NULL),
(37, 32, 24, 'NGO Partner Selection And due Diligence', 'NGo-Partner-Selection-And-Due-Diligence', NULL, 'D', '2020-12-03 04:19:35', '2021-04-19 11:18:33', NULL, NULL),
(38, 32, 25, 'Capacity Building', 'Capacity Building', NULL, 'D', '2020-12-03 04:20:40', '2021-04-19 11:18:51', NULL, NULL),
(39, 32, 26, 'Project Monitoring', 'project-monitoring', NULL, 'A', '2020-12-03 04:23:29', '2021-01-04 17:31:54', NULL, NULL),
(40, 32, 27, 'Communication & Engagement', 'communication & engagement', NULL, 'D', '2020-12-03 04:31:23', '2021-04-19 11:19:25', NULL, NULL),
(41, 33, 28, 'Links To Get In Touch', 'Links-To-Get-In-Touch', NULL, 'A', '2020-12-03 04:32:41', '2021-01-21 08:04:01', NULL, NULL),
(42, 33, 29, 'Story Of Hope On BVLF Case Study', 'Story-Of-Hope-On-BVIF-Case-Study', NULL, 'A', '2020-12-03 04:34:22', '2021-01-21 08:15:18', NULL, NULL),
(43, 34, 30, 'Get In Touch', 'Get-In-Touch', NULL, 'A', '2020-12-03 04:36:17', '2021-01-21 07:49:54', NULL, NULL),
(44, 34, 31, 'Blog On EAF', 'blog-on-eaf', NULL, 'A', '2020-12-03 04:37:17', '2021-01-21 07:36:36', NULL, NULL),
(45, 8, 3, 'Diaspora', 'Diaspora', NULL, 'A', '2020-12-03 04:46:09', '2021-03-26 12:04:15', NULL, NULL),
(46, 8, 5, 'Leave A Lasting Legacy', 'Leave-A-Aasting-Legacy', NULL, 'A', '2020-12-03 04:46:45', '2021-03-26 12:04:52', NULL, NULL),
(47, 8, 7, 'Know More About Giving', 'know-more-about-giving', NULL, 'A', '2020-12-03 04:47:14', '2021-03-26 12:05:17', NULL, NULL),
(48, 9, 35, 'NGO Validation', 'ngo-validation', NULL, 'A', '2020-12-03 04:48:42', '2021-02-24 18:56:14', NULL, NULL),
(49, 9, 36, 'Register With Us', 'Register-With-Us', NULL, 'A', '2020-12-03 04:49:18', '2021-01-21 08:12:21', NULL, NULL),
(50, 9, 37, 'Laws For NGOs', 'Laws-For-NGOs', NULL, 'A', '2020-12-03 04:49:44', '2021-01-21 07:54:41', NULL, NULL),
(51, 11, 38, 'Covid 19 Test', 'covid-19', NULL, 'A', '2020-12-03 04:51:01', '2021-03-19 09:35:03', NULL, NULL),
(52, 11, 39, 'Amphan Cyclone', 'amphan-cyclone', NULL, 'A', '2020-12-03 04:51:30', '2021-01-04 17:31:54', NULL, NULL),
(54, 11, 41, 'Link To Corporate Campaigns', 'Link-To-Corporate-Campaigns', NULL, 'A', '2020-12-03 04:52:34', '2021-01-21 07:57:04', NULL, NULL),
(55, 45, 42, 'Link To Write To Get In Touch With Us', 'Link-To-Write-To-Get-In-Touch-With- Us', NULL, 'A', '2020-12-03 04:53:14', '2021-01-21 08:01:13', NULL, NULL),
(56, 45, 43, 'Publication On Diaspora', 'Publication-On-Diaspora', NULL, 'A', '2020-12-03 04:53:47', '2021-01-21 08:11:31', NULL, NULL),
(57, 12, 44, 'Media Partnerships', 'media-partnerships', NULL, 'A', '2020-12-03 04:55:00', '2021-01-04 17:31:54', NULL, NULL),
(58, 12, 45, 'External Participations', 'External-Participations', NULL, 'A', '2020-12-03 04:56:18', '2021-01-21 07:45:05', NULL, NULL),
(59, 12, 46, 'In house Forums', 'In-House-Forums', NULL, 'A', '2020-12-03 04:56:47', '2021-01-21 07:52:50', NULL, NULL),
(60, 57, 47, 'External Links To Videos And Articles', 'External-Links-To-Videos-And-Articles', NULL, 'A', '2020-12-03 04:57:27', '2021-01-21 07:44:25', NULL, NULL),
(61, 58, 48, 'Links To Articles On External Website', 'Links-To-Articles-On-External-Websites', NULL, 'A', '2020-12-03 04:57:56', '2021-01-21 08:02:14', NULL, NULL),
(62, 59, 49, 'SDG', 'sdg', NULL, 'A', '2020-12-03 04:58:54', '2021-01-04 17:31:54', NULL, NULL),
(63, 59, 50, 'CCIC', 'ccic', NULL, 'A', '2020-12-03 04:59:28', '2021-01-04 17:31:54', NULL, NULL),
(65, NULL, 1, 'Give Now', 'give-now', NULL, 'A', '2020-12-04 11:30:55', '2021-03-09 06:24:38', NULL, NULL),
(67, 9, 52, 'Capacity Building', 'capacity-building', NULL, 'A', '2020-12-23 05:23:44', '2021-01-04 17:31:54', NULL, NULL),
(68, 65, 53, 'Covid 19 Test', 'covid-19', NULL, 'A', '2020-12-27 07:52:23', '2021-03-19 09:35:42', NULL, NULL),
(69, 9, 54, 'Seek Volunteers', 'seek-volunteers', NULL, 'A', '2020-12-27 09:52:48', '2021-01-04 17:31:54', NULL, NULL),
(70, 8, 1, 'Give Now', 'for-individual-give-now', NULL, 'A', '2020-12-27 09:59:53', '2021-03-31 07:27:25', NULL, '/give-now'),
(71, 8, 2, 'Volunteering', 'volunteering', NULL, 'A', '2020-12-27 10:22:23', '2021-03-31 07:28:15', NULL, '/for-companies/volunteering'),
(75, NULL, 6, 'CAFI Direct', 'our-programees', NULL, 'A', '2021-01-05 18:50:56', '2021-01-28 03:13:56', NULL, NULL),
(79, 7, 1, 'Learn More About CSR', 'learn-more-about-csr', NULL, 'D', '2021-01-26 16:59:56', '2021-01-27 18:28:00', NULL, NULL),
(80, 10, 1, 'Programme Design Delivery and Management', 'programme-design-delivery-and-management', NULL, 'A', '2021-01-30 10:36:30', '2021-01-30 10:36:30', NULL, NULL),
(81, 33, 1, 'Capacity Building', 'capacity-building', NULL, 'A', '2021-01-30 10:41:14', '2021-01-30 10:41:14', NULL, NULL),
(82, 24, 1, 'Get in Touch 1', 'get-in-touch', NULL, 'A', '2021-01-30 10:47:28', '2021-02-05 10:28:06', NULL, NULL),
(87, 23, 1, 'Links to blogs', 'links-to-blogs', NULL, 'A', '2021-01-30 10:56:53', '2021-01-30 10:56:53', NULL, NULL),
(89, 65, 1, 'Amphan Cyclone', 'amphan-cyclone', NULL, 'A', '2021-01-31 05:31:44', '2021-03-09 09:11:47', NULL, NULL),
(90, 32, 1, 'Programme Design Delivery And Management', 'programme-design-delivery-and-management', NULL, 'D', '2021-02-05 09:29:30', '2021-04-19 11:17:06', NULL, NULL),
(91, 65, 1, 'March2Give', 'march2give', NULL, 'A', '2021-02-05 10:18:56', '2021-02-05 10:18:56', NULL, NULL),
(92, 65, 1, 'Test Campaigndfg', 'test-campaignfd', 'test-campaign/March2021/phqDl1Qtw4g6Dw5SPycQ.jpg', 'A', '2021-03-09 06:14:34', '2021-03-09 06:25:39', NULL, NULL),
(93, 93, 1, 'Donate Test', 'donate-test', 'donate-test/March2021/Zu15XGrzjBw4JoIp20nf.png', 'A', '2021-03-09 09:16:00', '2021-03-09 09:16:56', NULL, NULL),
(94, 12, 1, 'testing', 'testing', NULL, 'A', '2021-03-17 03:24:43', '2021-03-17 03:24:43', NULL, NULL),
(95, 65, 1, 'Cyclone Amphan', 'cyclone-amphan', 'cyclone-amphan/March2021/UzdyfC6kkjnAHfYisw7v.jpg', 'A', '2021-03-17 05:11:00', '2021-03-17 05:11:00', NULL, NULL),
(96, 68, 1, 'Covid 19 Latest', 'covid-19-latest', NULL, 'A', '2021-03-19 09:36:44', '2021-03-19 09:36:44', NULL, NULL),
(97, 68, 1, 'Covid 19 Test 22', 'covid-19-test-22', NULL, 'A', '2021-03-20 07:49:41', '2021-03-20 07:49:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `primary_pages`
--

CREATE TABLE `primary_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `showing_order` int(11) NOT NULL DEFAULT '1',
  `link_text` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `story_of_hope` tinyint(4) NOT NULL DEFAULT '0',
  `join_us_block` tinyint(4) NOT NULL DEFAULT '0',
  `body_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_pages`
--

INSERT INTO `primary_pages` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `deleted_at`, `showing_order`, `link_text`, `link`, `link_type`, `alignment_type`, `story_of_hope`, `join_us_block`, `body_heading`, `blog_heading`) VALUES
(1, 1, 7, 'FOR COMPANIES', NULL, '<p>We work with some of the world&rsquo;s leading brands to support them and their employees do their bit for the society and the planet, ensuring that their giving yields maximum impact.</p>', NULL, 'primary-pages/December2020/dticcGvf2LX9KiafEA6N.jpg', 'for-companies', NULL, NULL, 'PUBLISHED', 0, '2020-11-27 10:27:00', '2021-03-23 12:26:22', NULL, 1, 'Get in touch with us', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'IB', 1, 1, '', NULL),
(2, 3, 13, 'CORPORATE SOCIAL RESPONSIBILITY (CSR)', NULL, '<p>We help turn your CSR vision into a reality by building a long-term sustainable strategy and provide an innovative solution-driven response to CSR initiatives.</p>', '<p><img src=\"http://cafindia.jaisalmercity.com/public/storage/primary-pages/December2020/CSR Framework.jpg\" usemap=\"#image-map22\" /> <map name=\"image-map22\"> \r\n<area title=\"\" alt=\"\" coords=\"21,1,135,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/csr-policy-and-strategy-development\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"186,1,296,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/Thematic-Intervention-Development\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"345,1,457,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/Partner-Selection-And-Due-Diligence\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"507,1,621,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/programme-design-delivery-and-management\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"661,1,780,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/capacity-building\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"826,1,944,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/communication-and-engagement\" target=\"\" />\r\n \r\n<area title=\"\" alt=\"\" coords=\"987,1,1106,300\" shape=\"rect\" href=\"https://cafindia.jaisalmercity.com/for-companies/csr/programme-evaluation-and-reporting\" target=\"\" />\r\n </map></p>', 'primary-pages/April2021/EwzbinBaqkpzT1KXNHLX.jpg', 'corporate-social-responsibility-csr', NULL, NULL, 'PUBLISHED', 1, '2020-12-03 03:07:56', '2021-04-15 06:43:31', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, 'CSR FRAMEWORK', NULL),
(3, 1, 21, 'Employee Giving', NULL, '<p>Inspire your employees to donate to a cause close to their heart. Our Payroll Giving Programme, allows employees to donate from their payrolls every month and avail tax benefits.&nbsp;</p>', NULL, 'primary-pages/January2021/1ImhG9nggsG10XhywGGi.jpg', 'employee-giving', NULL, NULL, 'PUBLISHED', 1, '2020-12-03 03:17:36', '2021-03-23 18:16:39', NULL, 1, 'Get in touch with us', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 1, 1, '', NULL),
(4, 1, 23, 'Volunteer With Us', NULL, '<p>Donate your time and get personally involved in a cause you always believed in. We can provide you with ample volunteering opportunities.&nbsp;</p>', NULL, 'primary-pages/June2021/V4vNaqeRIGWx8o720h55.png', 'volunteering-with-us', NULL, NULL, 'PUBLISHED', 0, '2020-12-03 05:00:12', '2021-06-05 12:44:11', NULL, 2, 'Get in touch', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 1, 1, NULL, NULL),
(5, 3, 14, 'CSR Policy and strategy development', NULL, NULL, '<p>For over two decades, CAF India has the expertise and experience of working with corporates and is uniquely positioned to develop strategies that will make a difference to your business and to the communities you wish to help. We offer a range of advisory support to help you develop, implement and evaluate your corporate responsibility program aligned to your organization&rsquo;s vision and mission.</p>', 'primary-pages/April2021/fiYUnJsT7iUIgBvy5TvR.jpg', 'csr-policy-and-strategy-development', NULL, NULL, 'PUBLISHED', 0, '2020-12-03 05:18:40', '2021-04-21 08:50:47', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, 'CSR FRAMEWORK', NULL),
(6, 1, 8, 'Individuals - Be a part of change', NULL, '<p>Giving is a superpower we all possess. You can be the reason for someone&rsquo;s smile. Make a real difference in the lives of people.</p>', NULL, 'primary-pages/December2020/n5pDSWtBQ50jSAT6cSP9.jpg', 'individuals-be-a-part-of-change', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 04:49:17', '2021-03-31 06:56:58', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(7, 3, 30, 'Capacity Building', NULL, '<p>CAF India aims to strengthen the overall organizational and programmatic practices of NGOs through capacity building interventions apart from conducting robust NGO assessments.</p>', '<p>Regular capacity building interventions (trainings, workshops, seminars and knowledge sharing meetings) are held for NGOs especially (but not limited to) on weaknesses that are assessed during the course of validation/due diligence.</p>', 'primary-pages/December2020/rFtRvQC0mmDhTQJnAq2T.jpg', 'capacity-building', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 04:53:48', '2021-04-16 06:25:26', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(8, 1, 10, 'Institutions and Foundations', NULL, '<p>For the past two decades, CAF India has been supporting philanthropic initiatives of international foundations operating in India. With a thorough understanding of the importance of fiscal management as well as the systems of international foundations</p>', NULL, 'primary-pages/April2021/fwho1BxVnrKzF0DOokql.jpg', 'institutions-and-foundations', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 05:53:13', '2021-04-15 17:01:22', NULL, 1, NULL, NULL, 'HYPERLINK', 'IB', 1, 1, NULL, NULL),
(9, 1, 32, 'Project Management', NULL, '<p>We help foundations in identifying NGOs, in designing their philanthropic project and its smooth execution along with regular monitoring and evaluation, financial management, and regulatory compliance.&nbsp;&nbsp;</p>', NULL, 'primary-pages/January2021/2dZAJawOV1fYJrxczxyP.jpg', 'project-management', NULL, NULL, 'PUBLISHED', 1, '2020-12-04 06:07:21', '2021-04-01 11:01:06', NULL, 4, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(10, 1, 33, 'Financial and Accounts Management', NULL, '<p>Our finance team works hard to make sure your philanthropic investment is effectively and efficiently utilised. Our Service include.</p>', NULL, 'primary-pages/December2020/JbjAPrQukg1XkNJVi5e0.jpg', 'financial-and-accounts-management', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:24:37', '2021-04-01 11:35:13', NULL, 1, NULL, NULL, 'HYPERLINK', 'B', 1, 1, NULL, NULL),
(11, 1, 24, 'Corporate Campaigns', NULL, '<p class=\"MsoNormal\">We have a proven track record of raising appeals and running fundraising and awareness campaigns on behalf of our corporate clients.Partner with us to run your campaign</p>', '<p>CAF India provides professional advice to develop plans and prepare communication (online and offline or traditional communication) advisory to make your CSR visible and creating awareness about your CSR project, educating project beneficiaries and establishing project brand and credibility.We design and implement need-based digital communications strategy, for promotion and visibility, which may include offline and online platform. CAF India has been designing and implementing effective communication plans to make your CSR visible. We offer the following services as part of our communication advisory to corporates:</p>\r\n<ul>\r\n<li>Design specific campaigns in line with project objectives</li>\r\n<li>Use partnered media arms for promotion and branding, using broad array of channels.</li>\r\n<li>Design and implement need based digital communications strategy.</li>\r\n<li>Support to local implementing partner for promotion and visibility.</li>\r\n<li>Engagement on various platforms and forums.</li>\r\n<li>Regular monitoring and evaluation of digital communication activities.</li>\r\n<li>Visibility materials (banners, signboards, display boards, stickers and plaques) as per requirements</li>\r\n</ul>', 'primary-pages/December2020/IfsZE2jZlCF2RgXNCcv6.jpg', 'corporate-campaigns', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:31:19', '2021-03-23 18:23:56', NULL, 1, 'Get in Touch', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 1, 1, '', NULL),
(12, 1, 25, 'Learn more about CSR', NULL, '<p>Our knowledge hub gives you the latest information and news on CSR and the laws governing it.</p>', NULL, 'primary-pages/December2020/wTGMfRzhYegirwk9FTZd.jpg', 'csr-laws', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:40:33', '2021-03-23 18:26:06', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, '', NULL),
(13, 1, 34, 'Donor Advised Funds', NULL, '<p>Used by an increasing number of donors, a Donor Advised Fund provides a flexible and tax efficient way for you to give to NGOs of your choice.</p>', NULL, 'primary-pages/December2020/0QbVcWmb4vTFA6HHyCog.jpg', 'donor-advised-funds', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 06:46:38', '2021-04-02 11:33:35', NULL, 1, NULL, NULL, 'HYPERLINK', 'B', 1, 1, NULL, NULL),
(14, 1, 9, 'Making NGOs Thrive', NULL, '<p>We strive to empower NGOs to make them thrive and deliver impact.</p>', NULL, 'primary-pages/January2021/J0l8PMS8AhhH7e9bf3ZR.jpg', 'making-ngos-thrive', NULL, NULL, 'PUBLISHED', 1, '2020-12-04 11:02:18', '2021-04-01 09:25:26', NULL, 3, NULL, NULL, 'BUTTON', 'IB', 1, 1, NULL, 'How we have helped our NGO partners'),
(16, 1, 12, 'Events Thought leadership', NULL, '<p>CAF India is catalysing India&rsquo;s philanthropic, CSR and SDG landscape to transform lives and communities by organising and participating in various forums events.</p>', NULL, 'primary-pages/December2020/0lgDPLub3rW30nJ8IHQV.jpg', 'events-thought-leadership', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 11:27:23', '2021-04-02 07:17:44', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(17, 1, 65, 'Give Now', NULL, '<p>Our cause-based campaigns have helped many a people overcome adversities, re-build lives and look forward optimistically towards a better future. Follow us on Facebook, Twitter and Instagram to stay updated on our campaigns</p>', '<p>A whopping &pound;125 million was donated to charity by our donors last year. You can be part of something big too. Take a look at the ways we can help you manage your giving. A whopping &pound;125 million was donated to charity by our donors last year. You can be part of something big too. Take a look at the ways we can help you manage your giving. A whopping &pound;125 million was donated to charity by our donors last year. You can be part of something big too. Take a look at the ways we can help you manage your giving.</p>', 'primary-pages/June2021/GM2DFHeRefb0CYVGrixA.jpg', 'give-now', NULL, NULL, 'PUBLISHED', 0, '2020-12-04 11:35:08', '2021-06-11 06:07:48', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, 'YOUR GIVING OPTIONS', NULL),
(19, 1, 15, 'Thematic Intervention Development', NULL, '<p>We are cause universal and provide technical advisory to help identify social causes and holistic social investment solutions suitable to the business need and operations.</p>', NULL, 'primary-pages/April2021/URIOiYwSoJNg7vHflVcU.jpg', 'thematic-intervention-development', NULL, NULL, 'PUBLISHED', 0, '2020-12-17 08:52:31', '2021-04-15 07:34:31', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(20, 3, 17, 'Partner Selection And Due Diligence', NULL, '<p>Through CAF India&rsquo;s due diligence process, we assess the credibility of NGOs and their ability to deliver and sustain a programme on the ground.</p>', '<p>In addition to checking legal, operational, financial aspects of an NGO, our validation includes checks like.</p>\r\n<p><img src=\"https://cafindia.jaisalmercity.com/public/storage/primary-pages/March2021/23123.PNG\" alt=\"\" /></p>\r\n<p>These checks ensure adherence to the global NGO compliance standards. Due Diligence helps ensure that our donors work with only credible organizations who comply with all operation, legal &amp; fiscal compliances as per government of India mandate. We have so far validated more than 2,100 NGOs across 23 states.&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><strong><span lang=\"EN-IN\" style=\"font-size: 10.0pt; mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-IN;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><img src=\"https://cafindia.jaisalmercity.com/storage/primary-pages/April2021/sample.png\" alt=\"\" /></p>', 'primary-pages/December2020/ZQKday0f4fzdgbLZLtzu.jpg', 'partner-selection-and-due-diligence', NULL, NULL, 'PUBLISHED', 0, '2020-12-17 08:55:34', '2021-04-01 11:52:10', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, 'HOW WE DO IT', NULL),
(21, 1, 16, 'Programme Design Delivery and Management', NULL, '<p>We ensure that program design reflects local developmental needs and creates sustainable shared value for communities, turning your philanthropic vision into a reality.</p>', '<p>Taking your CSR from idea to impact</p>\r\n<p>We ensure that program design reflects local developmental needs and creates sustainable shared value for communities, turning your philanthropic vision into a reality. At present, CAF India is managing the grants for 100 corporate partners.</p>\r\n<p>Currently, we are supporting more than 600 projects and have a dedicated team of 100+ associates across various states to help us in grant management and delivery. We are also working with 4 independent reputed audit companies to ensure financial compliance of all our projects.</p>\r\n<p>How We Do It</p>\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp;MOU signed with every NGO selected to implement the programme</p>\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp;Grant disbursal and overall management is done</p>\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp;Regular NGO monitoring visits are conducted to assess project progress, quality and adherence to compliance</p>\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp;Independent audits are performed (through third party auditors) to ensure financial regulations are met</p>\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp;Conduct joint review meeting</p>', 'primary-pages/December2020/FekxKgGeOVzcnFypxWZr.jpg', 'programme-design-delivery-and-management', NULL, NULL, 'PUBLISHED', 0, '2020-12-17 08:57:40', '2021-01-27 11:51:33', NULL, 1, NULL, NULL, 'BUTTON', NULL, 0, 0, '', NULL),
(22, 1, 57, 'Media', NULL, '<p>We have partnered with reputed business houses to promote stories of hope and life</p>', NULL, 'primary-pages/December2020/4izW1kMRIqHQJmQCsoQH.jpg', 'media', NULL, NULL, 'PUBLISHED', 0, '2020-12-23 05:49:53', '2021-04-03 06:32:13', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(23, 1, 58, 'External Events', NULL, '<p>We engage with our stakeholder on multiple levels. Participation in external events and forums is one great way of networking and building credibility</p>', NULL, 'primary-pages/December2020/38O6Fukubmqf94VT56pY.jpg', 'external-events', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 06:14:49', '2021-04-02 10:07:38', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(24, 1, 59, 'Our In House Events', NULL, '<p>Join the invigorating discussions on the developmental paradigms in India through our in-house forums</p>', NULL, 'primary-pages/December2020/KvKww93Wgpqx8I6b8I6L.jpg', 'our-in-house-events', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 06:58:51', '2021-04-02 11:32:05', NULL, 1, 'Write to us', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 1, 1, NULL, NULL),
(26, 1, 68, 'Mitigating COVID-19 test', NULL, '<p>Join us in protecting vulnerable communities from the onslaught of COVID-19</p>', NULL, 'primary-pages/December2020/gVEkJ5FNJ2S36wP8I72h.jpg', 'mitigating-covid-19', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 07:57:40', '2021-04-03 07:06:50', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(27, 1, 67, 'Capacity Building', NULL, '<p class=\"MsoNormal\"><span style=\"mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri;\">It is our endeavour to create an enabling environment where NGOs can thrive.</span></p>', NULL, 'primary-pages/June2021/cvGHwi7ZwCkX5BQnBfx5.png', 'for-ngo-capacity-building', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 08:49:32', '2021-06-05 12:15:54', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(28, 1, 48, 'NGO Validation', NULL, '<p>Through CAF India&rsquo;s due diligence process, we assess the credibility of NGOs and their ability to deliver and sustain a programme on the ground.</p>', '<p>Our NGO due diligence is one of the most robust processes that have helped NGOs achive greater credibility.</p>\r\n<p><img src=\"https://cafindia.jaisalmercity.com/storage/primary-pages/March2021/231233.png\" alt=\"\" /></p>\r\n<p>These checks ensure adherence to the global NGO compliance standards. Due Diligence helps ensure that our donors work with only credible organizations who comply with all operation, legal &amp; fiscal compliances as per government of India mandate. We have so far validated more than 2,100 NGOs across 23 states.&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><strong><span lang=\"EN-IN\" style=\"font-size: 10.0pt; mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-IN;\">&nbsp;<img src=\"https://cafindia.jaisalmercity.com/storage/primary-pages/April2021/sample2.png\" alt=\"\" /></span></strong></p>', 'primary-pages/December2020/0Yn3yniUvScpINAilXmX.jpg', 'ngo-validation', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 09:09:51', '2021-04-01 12:31:23', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, 'HOW WE DO IT', NULL),
(29, 1, 49, 'Register with us', NULL, '<p>Become a valued CAF India partner and increase your chances of getting noticed</p>', '<p class=\"MsoNormal\">This is your chance to be a valued CAF India partner in progress. It has been our constant endeavour to make NGOs thrive.</p>\r\n<p class=\"MsoNormal\">Once you get registered you: -</p>\r\n<ul>\r\n<li class=\"MsoNormal\"><!-- [if !supportLists]-->Will be a part of CAF India&rsquo;s searchable NGO database</li>\r\n<li class=\"MsoNormal\"><!-- [if !supportLists]-->Get your vlidation fully sponsored by a donor</li>\r\n<li class=\"MsoNormal\">Receive regular updates to stay compliant on legal and financial aspects</li>\r\n<li class=\"MsoNormal\"><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\"><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span></span></span><!--[endif]-->Obtain Capacity Building trainings</li>\r\n</ul>\r\n<p><a title=\"Register Now\" href=\"http://cafindia.jaisalmercity.com/contact-us\">Register Now</a></p>', 'primary-pages/December2020/OL5gSEAdIxjDVxmBg5v4.jpg', 'register-with-us', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 09:41:10', '2021-04-03 06:20:11', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(30, 1, 50, 'Laws for NGOs', NULL, '<p>Check out our resource hub to learn more about laws that govern NGOs in India.</p>', '<p>Check out our resource hub to learn more about laws that govern NGOs in India.</p>', 'primary-pages/December2020/k6HTh86VeWbUbNX2hvyJ.jpg', 'laws-for-ngos', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 09:46:08', '2021-04-03 06:26:54', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(32, 1, 70, 'Give Now', NULL, '<p>Our cause-based campaigns have helped many a people overcome adversities, re-build lives and look forward optimistically towards a better future. Follow us on Facebook, Twitter and Instagram to stay updated on our campaigns</p>', NULL, 'primary-pages/December2020/0jJiC2h4ch7bTKZTzuW2.jpg', 'for-individual-give-now', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 10:04:07', '2021-04-02 11:38:08', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(33, 1, 71, 'Volunteer with us', NULL, '<p>Donate your time and get personally involved in a cause you always believed in. We can provide you with ample volunteering opportunities.</p>', '<p>Our volunteering programmes are designed to allow employees and students contribute to a cause more significantly -- be it raising funds or taking out time to teach an underprivileged student</p>', 'primary-pages/December2020/voiKVMy1BURE4G2uEXao.jpg', 'volunteer-with-us', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 10:25:59', '2021-03-26 12:33:47', NULL, 1, 'Write to us', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 0, 0, NULL, NULL),
(34, 1, 45, 'For the Indian Diaspora', NULL, '<p>Home is where the heart is. Support a cause back home, even if you are living in a faraway country.</p>', NULL, 'primary-pages/December2020/KrCciwoUcEN93Jv8OEBX.jpg', 'for-the-indian-diaspora', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 10:35:11', '2021-03-31 06:28:05', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(35, 1, 46, 'Leave A Lasting Legacy', NULL, '<p>Create a better world for the generations to come through your legacy</p>', NULL, 'primary-pages/December2020/m8TOMw5b8FViEU9rc5QR.jpg', 'leave-a-lasting-legacy', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 11:04:15', '2021-03-31 07:09:29', NULL, 1, 'Get in touch with us', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'B', 1, 1, NULL, NULL),
(36, 1, 47, 'What is Giving all about?', NULL, '<p>Know more about the latest Giving Trends and an insight into how and why people give to charitable causes</p>', NULL, 'primary-pages/December2020/8MZQ2VvrLSaIjwkSFpij.jpg', 'what-is-giving-all-about', NULL, NULL, 'PUBLISHED', 0, '2020-12-27 11:13:28', '2021-03-31 07:17:57', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(37, 1, 75, 'CAF I Direct', NULL, '<p>Providing Glocal solutions to address local development issues.</p>', NULL, 'primary-pages/January2021/9NSF2xgeYb7jhb5gIOA6.jpg', 'caf-i-direct', NULL, NULL, 'PUBLISHED', 0, '2021-01-05 18:52:53', '2021-04-02 06:55:13', NULL, 1, NULL, NULL, 'BUTTON', 'IB', 1, 1, NULL, 'SUCCESS STORIES IN RAJASTHAN AND HARYANA'),
(38, 1, 79, 'Learn More about CSR', NULL, '<p>Our knowledge hub gives you the latest information and news on CSR and the laws governing it.</p>', '<p class=\"MsoNormal\">Our knowledge hub gives you the latest information and news on CSR and the laws governing it.</p>', 'primary-pages/January2021/6AOOfzJygX6JY4mEvb4C.jpg', 'learn-more-about-csr', NULL, NULL, 'DRAFT', 0, '2021-01-27 05:54:47', '2021-01-27 18:26:47', NULL, 1, 'Read More..', 'http://www.mca.gov.in/SearchableActs/Section135.htm', 'HYPERLINK', NULL, 0, 0, '', NULL),
(39, 1, 19, 'Communication & Engagement', NULL, '<p>We provide comprehensive communication advisory for a lasting social impact. Our approach ensures maximum visibility for our partner&rsquo;s programmes/projects.</p>', '<p>We provide advise to plan and prepare communication strategies that helps organization highlight their social responsibility initiative in the right context.</p>', 'primary-pages/June2021/HOhOmHwSCu86NjqwCc8q.png', 'communication-and-engagement', NULL, NULL, 'PUBLISHED', 0, '2021-01-31 05:29:48', '2021-06-07 07:52:16', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(40, 3, 20, 'Programme Evaluation & Reporting', NULL, '<p>Impact Assessment aims to create a social impact to measure the effectiveness of development projects and know whether objectives were met and money was judiciously spent.</p>', '<p>Evaluating the effectiveness of development programs is one of the most important steps for end-to-end implementation of programs. We provide technical support in developing Monitoring and Evaluation framework of development projects for companies and institutions, conducting baseline and need-assessment studies, defining processes and reporting framework to measure outcomes and monitor progress.</p>', 'primary-pages/April2021/r0WB4AGhS7vr0Hq3udI6.jpg', 'programme-evaluation-and-reporting', NULL, NULL, 'PUBLISHED', 0, '2021-01-31 05:31:21', '2021-04-16 06:26:52', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(43, 1, 36, 'Thematic Intervention', NULL, '<p>We are cause universal and provide technical advisory to help identify social causes</p>', '<p>We are cause universal and provide technical advisory to help identify social causes and holistic social investment solutions suitable to the business need and operations.</p>', 'primary-pages/January2021/BGkqaclp5lhYD94LgzaM.jpg', 'thematic-intervention', NULL, NULL, 'PUBLISHED', 0, '2021-01-31 06:16:38', '2021-04-20 07:57:26', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(44, 1, 37, 'NGO Partner Selection and Due Diligence', NULL, '<p>Through CAF India&rsquo;s due diligence process, we assess the credibility of NGOs and their ability to deliver and sustain a programme on the ground.</p>', '<p>In addition to checking legal, operational, financial aspects of an NGO, our validation includes checks like.</p>\r\n<p><img src=\"https://cafindia.jaisalmercity.com/public/storage/primary-pages/March2021/23123.PNG\" alt=\"\" /></p>\r\n<p>These checks ensure adherence to the global NGO compliance standards. Due Diligence helps ensure that our donors work with only credible organizations who comply with all operation, legal &amp; fiscal compliances as per government of India mandate. We have so far validated more than 2,100 NGOs across 23 states.&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><strong><span lang=\"EN-IN\" style=\"font-size: 10.0pt; mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; mso-ansi-language: EN-IN;\">&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\"><img src=\"https://cafindia.jaisalmercity.com/storage/primary-pages/April2021/sample.png\" alt=\"\" /></p>', 'primary-pages/January2021/Tt7poCSkoTO5Yh6zBRRL.jpg', 'ngo-partner-selection-and-due-diligence', NULL, NULL, 'PUBLISHED', 0, '2021-01-31 06:22:46', '2021-04-02 05:43:45', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(57, 1, 38, 'Capacity Building', NULL, '<p>CAF India aims to strengthen the overall organizational and programmatic practices of NGOs through capacity building interventions apart from conducting robust NGO assessments.</p>', '<p>Regular capacity building interventions (trainings, workshops, seminars and knowledge sharing meetings) are held for NGOs especially (but not limited to) on weaknesses that are assessed during the course of validation/due diligence.</p>', 'primary-pages/February2021/o4ece5hhQxGHRZxNQVBl.jpg', 'capacity building', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 08:21:41', '2021-04-02 05:47:29', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(58, 1, 90, 'Programme Design Delivery And Management', NULL, NULL, '<p>We ensure that program design refects local development needs and creates sustainable shared value for communities, turning your CSR strategy into reality. At present, CAF India is managing the grants for 100 corporate partners.</p>\r\n<p>Currently, we are supporting more than 600 projects and have a dedicated team of 100+ associates across various states to help us in grant management and delivery. We are also working with 4 independent reputed audit companies to ensure financial compliance of all our projects.</p>', 'primary-pages/April2021/3WXE1JN3eEynmbvswD0Y.jpg', 'programme-design-delivery-and-managements', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 09:32:16', '2021-04-20 08:00:00', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(60, 1, 35, 'Corporate Campaigns', NULL, '<p>We have a proven track record of raising appeals and running fundraising and awareness campaigns on behalf of our corporate clients. Partner with us to run your campaign.</p>', NULL, 'primary-pages/February2021/rXfberWLF0RgD5WdkEap.jpg', 'corporate campaigns', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 09:41:36', '2021-04-02 06:53:12', NULL, 1, 'Get in touch', 'http://cafindia.jaisalmercity.com/contact-us', 'HYPERLINK', 'IB', 1, 1, NULL, 'Learn more about our current campaigns'),
(66, 1, 91, 'March2Give', NULL, NULL, NULL, 'primary-pages/February2021/6QZ9u1L3n7V1kJ0NHGvg.jpg', 'march2gives', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 10:19:52', '2021-04-10 07:14:18', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(67, 1, 40, 'Communication & Engagement', NULL, '<p>Our approach ensures maximum visibility for our partner&rsquo;s programmes/projects.</p>', '<p>We provide comprehensive communication advisory for a lasting social impact. Our approach ensures maximum visibility for our partner&rsquo;s programmes/projects. We provide advise to plan and prepare communication strategies that helps organization highlight their social responsibility initiative in the right context.</p>', 'primary-pages/February2021/u2llxYfa5aumzmK6N1HQ.jpg', 'communication and engagement', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 10:24:23', '2021-04-02 05:56:27', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(68, 1, 31, 'Programme Evaluation & Reporting', NULL, '<p>Impact Assessment aims to create a social impact to measure the effectiveness of development projects and know whether objectives were met and money was judiciously spent.</p>', '<p>Evaluating the effectiveness of development programs is one of the most important steps for end-to-end implementation of programs. We provide technical support in developing Monitoring and Evaluation framework of development projects for companies and institutions, conducting baseline and need-assessment studies, defining processes and reporting framework to measure outcomes and monitor progress.</p>', 'primary-pages/April2021/DhFpjoAUF3OCTur3JODo.jpg', 'programme evaluation and-reporting', NULL, NULL, 'PUBLISHED', 0, '2021-02-05 10:26:07', '2021-04-20 08:02:43', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL),
(70, 1, 96, 'Covid 19 Latest News', NULL, '<p>Covid 19 Latest News Covid 19 Latest News</p>', '<p><img src=\"https://cafindia.org/images/Covid_Appeal_Second_Appeal_Header_inside.jpg\" alt=\"\" /></p>\r\n<p>India is now the second worst hit country in the world after the United States. In the past one year, India has witnessed severe economic and social hardships due to a strict, countrywide lockdown, which was eased slowly in phases.<strong> Now, once again state governments are imposing lockdowns to contain the spread of the virus.</strong></p>\r\n<p>While the world&rsquo;s largest vaccination drive is underway, India has seen a sudden unprecedented rise in the cases that are being reported daily. With over 5 lakh cases being reported daily, there is a severe shortage of beds and oxygen. The existing health infrastructure has collapsed leaving millions helpless.</p>\r\n<h4>India has a population of 136 crores. Every Citizen needs to be protected.</h4>\r\n<p><img style=\"width: 100%; height: auto;\" src=\"https://cafindia.org/images/Covid_Appeal_Second_Appeal_Header_inside.jpg\" alt=\"\" /></p>', 'primary-pages/March2021/4AjKTtagjARckKCL94I4.jpg', 'covid-19-latest-news', NULL, NULL, 'PUBLISHED', 0, '2021-03-19 09:39:47', '2021-06-24 11:33:47', NULL, 1, NULL, NULL, 'BUTTON', 'B', 0, 0, NULL, NULL),
(71, 1, 97, 'Mitigating COVID-19 Test 222', NULL, '<p>Mitigating COVID-19 Test 222Mitigating COVID-19 Test 222</p>', '<p>Mitigating COVID-19 Test 222 Mitigating COVID-19 Test 222Mitigating COVID-19 Test 222Mitigating COVID-19 Test 222Mitigating COVID-19 Test 222</p>', 'primary-pages/March2021/G8VXO8PMa7BWrsvy2yup.jpg', 'mitigating-covid-19-testtttttt', NULL, NULL, 'PUBLISHED', 0, '2021-03-20 07:52:00', '2021-04-10 07:20:27', NULL, 1, NULL, NULL, 'BUTTON', 'B', 1, 1, NULL, NULL),
(72, 1, 29, 'Program Design Delivery And Management', NULL, '<p>Taking your CSR from idea to impact.</p>', '<p><img style=\"width: 100%; height: auto;\" src=\"https://cafindia.jaisalmercity.com/storage/primary-pages/July2021/shutterstock_1756799534.jpg\" alt=\"\" />We ensure that program design reflects local developmental needs and creates sustainable shared value for communities, turning your philanthropic vision into a reality. At present, CAF India is managing the grants for 100 corporate partners.&nbsp;</p>\r\n<p>Currently, we are supporting more than 600 projects and have a dedicated team of 100+ associates across various states to help us in grant management and delivery. We are also working with 4 independent reputed audit companies to ensure financial compliance of all our projects.</p>', 'primary-pages/July2021/7IScw56KIYOCwSVyjixr.jpg', 'program-design-delivery-and-management', NULL, NULL, 'PUBLISHED', 0, '2021-03-22 12:03:58', '2021-07-02 05:21:52', NULL, 1, NULL, NULL, 'BUTTON', 'TR', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `primary_page_blogs`
--

CREATE TABLE `primary_page_blogs` (
  `primary_page_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary_page_blogs`
--

INSERT INTO `primary_page_blogs` (`primary_page_id`, `blog_id`) VALUES
(1, 2),
(1, 3),
(14, 2),
(14, 3),
(20, 2),
(20, 3),
(28, 2),
(28, 3),
(60, 2),
(60, 3),
(37, 2),
(37, 3),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `primary_page_featured_stories`
--

CREATE TABLE `primary_page_featured_stories` (
  `primary_page_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary_page_featured_stories`
--

INSERT INTO `primary_page_featured_stories` (`primary_page_id`, `blog_id`) VALUES
(64, 4),
(64, 8),
(59, 4),
(59, 8),
(18, 4),
(18, 8),
(63, 4),
(63, 8),
(52, 4),
(52, 8),
(45, 4),
(45, 8),
(47, 4),
(47, 8),
(48, 4),
(48, 8),
(49, 4),
(49, 8),
(1, 2),
(1, 3),
(5, 2),
(5, 3),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(11, 2),
(11, 3),
(12, 2),
(12, 3),
(19, 2),
(19, 3),
(20, 2),
(20, 3),
(14, 2),
(14, 3),
(6, 2),
(6, 3),
(34, 2),
(34, 3),
(35, 2),
(35, 3),
(36, 2),
(36, 3),
(28, 2),
(28, 3),
(10, 2),
(10, 3),
(9, 2),
(9, 3),
(8, 2),
(8, 3),
(60, 2),
(60, 3),
(58, 2),
(58, 3),
(68, 2),
(68, 3),
(43, 2),
(43, 3),
(44, 2),
(44, 3),
(57, 2),
(57, 3),
(67, 2),
(67, 3),
(37, 2),
(37, 3),
(16, 2),
(16, 3),
(23, 2),
(23, 3),
(24, 2),
(24, 3),
(13, 2),
(13, 3),
(27, 2),
(27, 3),
(17, 2),
(17, 3),
(32, 2),
(32, 3),
(29, 2),
(29, 3),
(30, 2),
(30, 3),
(22, 2),
(22, 3),
(26, 2),
(26, 3),
(66, 2),
(66, 3),
(71, 2),
(71, 3);

-- --------------------------------------------------------

--
-- Table structure for table `primary_page_sections`
--

CREATE TABLE `primary_page_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `primary_page_id` int(11) NOT NULL,
  `template_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'CARDS',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `columns_in_rows` int(11) NOT NULL DEFAULT '4',
  `bg_style` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'auto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_page_sections`
--

INSERT INTO `primary_page_sections` (`id`, `primary_page_id`, `template_type`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `columns_in_rows`, `bg_style`) VALUES
(1, 1, 'MEDIA', 'Businesses for a Better World', '<p>We help businesses achieve returns on their philanthropic investment by ensuring maximum positive impact.</p>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'Download Brochure', 'HYPERLINK', 1, 'A', NULL, '2021-03-25 13:57:59', NULL, 2, 'white'),
(2, 1, 'CARDS', 'SERVICES OFFERED', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 2, 'A', NULL, '2021-04-01 10:32:34', NULL, 6, 'auto'),
(6, 22, 'MEDIA', 'The ChangeMakers, TV Documentary Series on CSR in Partnership with CNBC TV18', '<p>CAF India partnered with CNBC TV 18 &ndash; a premium business channel in India for &lsquo;The Changemakers&rsquo; - a TV documentary series that puts the spotlight on some of the most effective and impactful CSR initiatives taken by companies, NGOs and philanthropists in India. The 30-episode series showcased the exemplary work done by these organisations across the CSR space and how it has impacted the lives of people. These documentaries recognized, celebrated and showcased the fantastic work done by them working towards the 17 Sustainable Development Goals (SDGs) of the Union Nation&rsquo;s charter. Companies, such as Intel, United Breweries Limited, Edelweiss Tokio, Teleperformance Shell, Ledrand, Sonalika, Tetra Pak, Amadeus, Dalmia and NGOs such as, NLR India, LEPRA, Muktagan, Smile Train, PANI, India Cancer Society -- showcased their work in the area of CSR as donors and implementers respectively.</p>', 'primary-page-sections/April2021/mkZ2pGOYFJlv8i9nwOyG.jpg', NULL, 'https://www.cafindia.org/campaigns/the-change-maker/past-episodes', 'Watch an episode now', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 18:30:51', NULL, 2, 'auto'),
(7, 22, 'MEDIA', 'Care Heroes of India Awards – a partnership with the Times Group', '<p>We partnered with the Times Group for the &lsquo;Care Heroes of India&rsquo; Awards supported by Bajaj Allianz General Insurance. The awards aimed to recognize and felicitate those selfless heroes, who have gone out of their way to improve lives, society and the environment. The awards recognized individuals and NGOs working at the grassroots and brought them into the spotlight. The awards invited nominations in over 12 categories like education, sanitation, water, Health, Women &amp; girl child empowerment, Road Safety, Cyber Care, Pollution and COVID Response.</p>', NULL, 'https://youtu.be/jxebDt5MJUU', 'https://www.bajajallianz.com/careheroes.html', 'For more information, click here', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 18:31:34', NULL, 2, 'auto'),
(11, 23, 'CARDS', 'Upcoming Events', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'D', NULL, '2021-04-10 08:35:53', NULL, 3, 'white'),
(12, 23, 'CARDS', 'External Participations', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2020-12-27 06:22:11', '2020-12-27 06:22:11', NULL, 3, 'auto'),
(14, 24, 'MEDIA', 'CSR Drivers Forum', '<p>In order to discuss how corporations, governments and NGOs can contribute towards achieving the Sustainable Development Goals, CAF India organised the CSR Drivers&rsquo; Forum on April 20, 2018 in New Delhi. The forum saw participation of eminent representatives from both the government and the corporate sector. All participants at the forum agreed that CSR interventions are now being aligned with a specific SDG themes. Public and private sectors need to assess their SDGs priorities. They must identify direct linkages of their ongoing practices with specific targets. And most importantly, they must evaluate their social impacts of practices and challenges being faced within each sustainability projects across regions.</p>', 'primary-page-sections/December2020/6yRA62Z2QjaZlI6Pe5G2.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Read the report', 'HYPERLINK', 1, 'A', NULL, '2021-04-10 06:40:49', NULL, 2, 'auto'),
(15, 24, 'MEDIA', 'SDG Drivers’ Forum', '<p>The SDG Drivers&rsquo; Froum is a platform for changemakers from coproate India to come together and brainstorm how we can togther achieve the SDG targets. Transformative partnerships on SDG 2 &ndash; Achieving Zero Hunger: SDG forum organised in 2017 in collaboration with United Nations World Food Program (UNWFP).</p>', 'primary-page-sections/December2020/4Qy6v3KjAui0Vkab7jIK.jpg', NULL, 'https://www.cafindia.org/images/SDGs_Drivers_Forum.pdf', 'Read Full report here', 'HYPERLINK', 1, 'A', NULL, '2021-04-10 06:41:12', NULL, 2, 'auto'),
(19, 26, 'MEDIA', 'Reaching out to the vulnerable', 'These are tough times for everyone. We are responding to the crisis and helping migrant workers, underprivileged children and frontline workers sail through the pandemic.', NULL, 'https://youtu.be/_fFjoy5NnAE', 'http://cafindia.jaisalmercity.com/contact-us', 'Donate Now', 'HYPERLINK', 1, 'A', '2020-12-27 08:10:20', '2020-12-27 08:10:20', NULL, 2, 'auto'),
(20, 26, 'MEDIA', 'Our work so far...', 'We have been able to support millions of families during the COVID-19 lockdown. The job carved out for us is a challenging one, but with your support, we shall overcome.', 'primary-page-sections/December2020/6eplRyicvsZUcMO5ugw0.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn more about our fight against COVID. Read our monthly report. Click here', 'HYPERLINK', 1, 'A', NULL, '2020-12-27 14:12:18', NULL, 2, 'auto'),
(21, 26, 'MEDIA', 'Resources', '<ul>\r\n<li>Image Gallery: https://www.cafindia.org/campaigns/covid-19/resource?layout=edit&amp;id=384</li>\r\n<li>COVID response updates: https://www.cafindia.org/campaigns/covid-19/resource?layout=edit&amp;id=385</li>\r\n<li>COVID Bulletin: https://www.cafindia.org/campaigns/covid-19/resource?layout=edit&amp;id=398</li>\r\n<li>Project Reports: https://www.cafindia.org/campaigns/covid-19/resource?layout=edit&amp;id=390</li>\r\n</ul>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-04-10 06:59:34', NULL, 2, 'auto'),
(22, 26, 'MEDIA', 'COVID Tales', 'Read heart-wrenching stories of struggle and hope; stories of common men and women, coping with COVID-19 and the lockdown (The COVID Tales section Needs to have a better design)', 'primary-page-sections/December2020/LoLY6RF0gHgXwvk8YaMh.jpg', NULL, 'https://www.cafindia.org/campaigns/covid-19/human-stories', 'Read More', 'HYPERLINK', 1, 'A', NULL, '2020-12-27 14:13:09', NULL, 2, 'auto'),
(23, 26, 'MEDIA', 'Supporting our NGO partners', '- We are standing by our NGO partners in this time of crisis, supporting these superheroes in every which way we can. Learn more in the CAF America survey on Impact of COVID –19 on non-profits in India. \r\n\r\n- Learn more about the precautions NGO workers should take during community visits.', NULL, 'https://youtu.be/J6B_6LoG4pQ', 'http://cafindia.jaisalmercity.com/contact-us', 'Click here', 'HYPERLINK', 1, 'A', '2020-12-27 08:38:34', '2020-12-27 08:38:34', NULL, 2, 'auto'),
(28, 32, 'MEDIA', 'Join us in our fight against COVID-19', '<p>We are mobilizing resources for life saving initiative during the COVID-19 pandemic.</p>\r\n<p>You can reach out to the most vulnerable populations and help them sail through the crisis.</p>', 'primary-page-sections/December2020/vOE5sAd0DlPL2rhcgxlV.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Know More', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 12:22:12', NULL, 2, 'auto'),
(29, 32, 'MEDIA', 'Help victims of Amphan cyclone', '<p>Cyclone Amphan hit the coast of West Bengal on May 20, 2020. Communities have been uprooted, livelihoods have been destroyed and almost 100 lives have been lost.</p>\r\n<p>The COVID-19 pandemic has exacerbated the situation for the victims. Help us in our life saving initiatives.</p>', 'primary-page-sections/December2020/eB6KFg7ypHl8Sw5793ZR.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Know More', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 12:22:30', NULL, 2, 'auto'),
(30, 32, 'MEDIA', 'March2Give', '<p>Every year in the beginning of March, people join our March2Give movement to support a cause close to their heart and also earn tax benefits.</p>', 'primary-page-sections/December2020/bX2o1kHtUUmFv8cKVikH.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 12:22:54', NULL, 2, 'auto'),
(31, 33, 'MEDIA', 'Donate Your Time', '<p>Choose how you want to contribute to a cause by donating your precious time. We offer you three broad ways to do so.</p>', 'primary-page-sections/December2020/T8q3Dzpgl4kZxqmaEk5e.PNG', 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'http://cafindia.jaisalmercity.com/contact-us', 'Explore Volunteering Opportunities', 'HYPERLINK', 1, 'A', NULL, '2021-03-26 12:37:10', NULL, 2, 'auto'),
(32, 33, 'CARDS', 'OPPORTUNITIES', '<p><span style=\"font-family: Gotham-Light; font-size: 15px;\">Choose how you want to contribute to a cause by donating your precious time. We offer you three broad ways to do so.</span></p>', 'primary-page-sections/December2020/Ig8CDfRVFJYuD4i5tMvn.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Get in touch with us', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 07:23:51', NULL, 3, 'auto'),
(37, 35, 'MEDIA', 'CAF India Charitable Legacy Service', '<p>Let CAF India help you leave a lasting legacy. Tell us about the causes or the non-profits you would like to support. Create a wish-list or a &lsquo;Letter of Wishes&rsquo; and we will help fulfil them for you. CAF India offers a flexible way to leave one gift in your Will to benefit the disadvantaged future generations. We can also help you get in touch with will-writers.</p>\r\n<ul>\r\n<li>Be assured that we will take care of everything according to your wishes</li>\r\n<li>Change your mind as many times as you wish. If you change your mind about the choice of causes or the non-profits you wish to support, you can simply inform us.</li>\r\n<li>Be reassured that your gift will get the right investments along with the right tax benefits</li>\r\n<li>Remain anonymous: we won&rsquo;t share your Wish-list or Letter of Wishes with anyone unless you ask us to, which means your choices can remain private.</li>\r\n<li>Supporting your causes for the longer term: If you would like to provide long-term impact, we can help you set up a long-term programme or charitable trust.</li>\r\n</ul>\r\n<p>Read xyz&rsquo;s blog on how CAF India can help you leave a lasting legacy. <a href=\"https://cafindia.jaisalmercity.com/media/blogs\">Click here</a></p>', 'primary-page-sections/April2021/rCpoNpgp7XFuMfswpX7v.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Download Brochure', 'BUTTON', 1, 'A', NULL, '2021-04-15 13:15:50', NULL, 2, 'auto'),
(38, 36, 'MEDIA', 'India Giving Report', '<p>Read the India Giving Report 2020 to understand how people donated their money and time in India in the past year.</p>', 'primary-page-sections/April2021/2OO6UmWv04DR8nGW8JFt.jpg', NULL, 'https://cafindia.jaisalmercity.com/who-we-are/Annual-Reports-And-Financials', 'Click here to Read', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 13:23:25', NULL, 2, 'auto'),
(45, 11, 'MEDIA', 'NDTV Dettol Swachh Banega India', '<p class=\"MsoNormal\" style=\"text-align: justify;\">We partnered with NDTV and Reckitt Benckiser (Dettol) to contribute to our country&rsquo;snational missionof creating a cleaner healthier India &ndash; Swachh Bharat. In Jan 2015 the Dettol NDTV Banega Swachh India initiative kicked off a corporate volunteering programme where 1.13 crore hours of volunteering time was pledged to clean India</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">The campaign raised funds for:</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Construction of complete toilets</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Focused communication to ensure proper usage</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Appropriate depth of pits</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Quality material for construction of a toilet</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Community mobilization</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Develop Information, Education and Communication (IEC) material and tools</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Management and administrative costs</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Operation and maintenance costs</li>\r\n</ul>', 'primary-page-sections/April2021/ReSWmEE7PJ1fn1YUhOkU.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 11:09:07', NULL, 2, 'auto'),
(46, 11, 'MEDIA', 'Behtar India with DHFL Pramerica and NDTV', '<p class=\"MsoNormal\" style=\"text-align: justify;\">The Behtar India Campaign was launched in 2016 to build a better future for India. The essence of the campaign was to mobilize students and ordinary citizens to join a nationwide movement that focuses on health, hygiene and environment.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">The Behtar Swasthya (health Stage of the campaign aimed to fight the scourge of mosquito borne diseases Students from all over the country drove the campaign to become crusaders for the cause. School authorities and students crowd funded the campaign and the funds raised were used to provide mosquito protection kits to underprivileged students. The campaign also called upon corporates to join the movement.</p>', 'primary-page-sections/April2021/Z4zgbTmMgGxoNqBuSWXj.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 11:18:24', NULL, 2, 'auto'),
(47, 11, 'CARDS', 'UN Habitat Coca Cola NDTV Support My School Campaign', '<p>UN Habitat Coca Cola NDTV Support My School was launched in 2010 and continued for three years. This campaign was supported by&nbsp; Coca-Cola, UN-Habitat, Pearson Foundation, Tata Teleservices, HCCBPL, Global Water Challenge (Merck), and H20 for Life. The campaign was designed to intervene on the poor conditions of schools in India, including, lack of water, poor sanitation (washroom facilities) and hygiene, ill-equipped sports infrastructure and landscaping. Lack of basic amenities like toilets, access to water and basic Infrastructure, which create an unwelcoming and non-conducive environment in schools, leading to absenteeism and high dropout rates.</p>\r\n<p>The nationwide campaign brought together the expertise and resources of 11 donors, over 50 institutional partners touching the lives of approximately 100,000 children.</p>\r\n<p>The overriding goal of the campaign was to ensure that schools have affordable access to water and sanitation facilities, which will catalyze improvements in child health, learning achievement, and productivity, especially that of the girl child. Between 2010 and 2014,</p>\r\n<ul>\r\n<li>the campaign covered 158 schools, in 18 Indian states.</li>\r\n<li>Over 1,400 washrooms for boys and girls were constructed or renovated</li>\r\n<li>91 rainwater harvesting (RVH) systems, 25 submersible pumps, 27 bore wells were installed.</li>\r\n<li>For drinking water, 61 water filters were installed, 332 drinking water points were created, and 195 overhead tanks were constructed.</li>\r\n<li>Apart from this campaign also saw creation of 91 libraries.&nbsp; &nbsp;</li>\r\n</ul>\r\n<p>CAF India provided a national level platform for companies to implement their CSR work with reduced administrative costs and high-level impact. Their talented pool of professionals with varied backgrounds, ensured high level of programme quality and optimum impact.</p>\r\n<p>The organisation&rsquo;s technical and managerial support ensured that the initial spade work required to implement a project is conducted in a professional way, including conducting baseline surveys, collection of data, analysing problems, designing context-specific programmes, timely implementation, regular monitoring and evaluation and impact analysis.</p>\r\n<p>&nbsp;</p>', 'primary-page-sections/April2021/7winhdhLdsxO1oOmMlKV.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-02 10:42:11', NULL, 2, 'auto'),
(50, 24, 'MEDIA', 'CSR Colloquium for Indian Communicators (CCIC)', '<p>Post the legislation on CSR, over the past five years, we realised that in several corporations, CSR is managed by mostly by communication professionals. This means they not only have to adapt themselves to complying with the law but also go beyond their comfort zone to assess the efficacy of CSR projects. Therefore, we decided to hold the CSR Colloquium for Indian Communicators (CCIC) in 2018.</p>\r\n<p>CCIC is an in-house product developed by CAF India to address challenges communication professionals face in implementation of CSR projects. We took the CCIC Forum to the Republic TV studio in Mumbai for its second edition.</p>\r\n<p>The objectives of CCIC are: -</p>\r\n<ul>\r\n<li>&nbsp;Strengthen on-going CSR initiatives: Participate in focus group discussion and develop succinct ways to refashion ongoing CSR initiatives in thematic area of interest of the organization</li>\r\n<li>&nbsp;Nurture social alliances: Share a common platform for knowledge exchange within communication professionals to establish the need to build strong social alliances to concretize ongoing CSR initiatives</li>\r\n<li>&nbsp;Establish Global Leadership:&nbsp; Attain a unique position in respective stream of business, as well as a progressive entity in a global scenario by demonstrating potential to bring social change benefiting the society at large</li>\r\n<li>&nbsp;Enhance impact communication: Recommend communications strategies to advance CSR agenda in the country to resonate credibly with the consumer and stakeholders</li>\r\n</ul>', 'primary-page-sections/January2021/Aju1wSQEnbmxoATPJvw8.jpg', NULL, 'http://cafindia.jaisalmercity.com/', 'Read the report', 'HYPERLINK', 1, 'A', NULL, '2021-04-10 06:44:39', NULL, 2, 'auto'),
(51, 26, 'MEDIA', 'Blogs', '<p class=\"MsoNormal\"><strong>Read how our NGOs are essential for our fight against COVID in a blog by Udaya Agarwal:</strong></p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\"><a href=\"https://blog.cafindia.org/let-us-uphold-the-spirit-of-ngo-workers-who-continue-to-work-in-the-face-of-adversity/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/let-us-uphold-the-spirit-of-ngo-workers-who-continue-to-work-in-the-face-of-adversity/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">How CAF India responded to COVID-19,writes Anish Sengupta: <a href=\"https://blog.cafindia.org/caf-indias-covid-response-campaign-we-did-it-but-we-have-miles-to-go/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/caf-indias-covid-response-campaign-we-did-it-but-we-have-miles-to-go/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Why the need for humanitarian assistance is growing writes Mansi Mahajan: <a href=\"https://blog.cafindia.org/the-need-for-humanitarian-assistance-across-the-world-is-growing/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/the-need-for-humanitarian-assistance-across-the-world-is-growing/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">How we can nurture the elderly during COVID, writes Vanya Sinha: <a href=\"https://blog.cafindia.org/nurturing-the-elderly-in-the-times-of-covid/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/nurturing-the-elderly-in-the-times-of-covid/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Learn how we helped rural MP and Chhattisgarh during the lockdown: <a href=\"https://blog.cafindia.org/rural-mp-and-chattisgarh-learn-to-combat-covid-19-and-lockdown/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/rural-mp-and-chattisgarh-learn-to-combat-covid-19-and-lockdown/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Support and respect Corona warriors, writes Rani Vibhushita: <a href=\"https://blog.cafindia.org/corona-warriors-need-our-respect-and-support/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/corona-warriors-need-our-respect-and-support/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Slum dwellers see a ray of hope writes Ashish Dhar Raina: <a href=\"https://blog.cafindia.org/delhi-slum-dwellers-see-a-ray-of-hope-amidst-covid-19-crisis/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/delhi-slum-dwellers-see-a-ray-of-hope-amidst-covid-19-crisis/</span></a></li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Can marginalised communities survive COVID, asks Rani Vibhushita: <a href=\"https://blog.cafindia.org/can-the-marginalised-communities-mitigate-covid-19/\"><span style=\"color: windowtext;\">https://blog.cafindia.org/can-the-marginalised-communities-mitigate-covid-19/</span></a></li>\r\n</ul>', 'primary-page-sections/January2021/HbEGE1sBirjSegjyYaKY.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-10 06:58:13', NULL, 2, 'auto'),
(52, 32, 'MEDIA', 'Blog', '<p>XYZ throw some insight on Global Giving Movements,</p>\r\n<p>Read What is Joy of Giving Week and Giving Tuesday All about.</p>', 'primary-page-sections/January2021/g2bsU1NCeCmWZeNfaf41.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-01-27 12:25:05', NULL, 2, 'auto'),
(53, 32, 'MEDIA', 'Learn More about our successful campaigns', '<p class=\"MsoNormal\"><span lang=\"EN-IN\" style=\"mso-bidi-font-size: 16.0pt; line-height: 107%; mso-ansi-language: EN-IN;\">DetolSwachh Banega India </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-IN\" style=\"mso-bidi-font-size: 16.0pt; line-height: 107%; mso-ansi-language: EN-IN;\">Right To Sanitation Campaign </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-IN\" style=\"mso-bidi-font-size: 16.0pt; line-height: 107%; mso-ansi-language: EN-IN;\">Joy of Giving <a name=\"_GoBack\"></a></span></p>', 'primary-page-sections/January2021/nNnOKkBRwBSQqnjsh03x.jpg', NULL, 'http://cafindia.jaisalmercity.com/', 'Read More..', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 12:23:10', NULL, 2, 'auto'),
(54, 38, 'MEDIA', 'What is Companies Act 2013?', '<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 18.0pt; mso-line-height-rule: exactly;\">India is the only country to have made Corporate Social Responsibility for companies with a turnover of over Rs 1,000 crore or having a net worth of Rs 500 crore five hundred crore or a net profit of rupees Rs5 crore or more.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 18.0pt; mso-line-height-rule: exactly;\">Such companies are mandated to form a CSR Committee of theBoard consisting of three or more directors, out of which at least one director shall be anindependent director. The Board has to ensure that thecompany spends, in every financial year, at least two per cent. of the average net profits ofthe company made during the three immediately preceding financial years.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 18.0pt; mso-line-height-rule: exactly;\">With the passing of the law, we at CAF India have been instrumental in implementing the law and helping companies pursue their CSR vision.</p>', 'primary-page-sections/January2021/kNnvI86lw1dRUgaGRV1t.jpg', NULL, 'http://www.mca.gov.in/SearchableActs/Section135.htm', 'More details on Ministry of Commerce website .', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 06:16:46', NULL, 2, 'auto'),
(55, 38, 'MEDIA', 'Amendment to Companies Act 2019', '<p>The Act amended in 2019, to make it more stringent. Read what the amendment entails.&nbsp;</p>', 'primary-page-sections/January2021/wCH1lywQMzJls6vq8lPk.jpg', NULL, 'http://cafindia.jaisalmercity.com/media/press-releases', 'Read More..', 'HYPERLINK', 1, 'A', '2021-01-27 06:19:23', '2021-01-27 06:19:23', NULL, 2, 'auto'),
(56, 38, 'MEDIA', 'Which causes to choose from for CSR?', '<p>The Schedule VII of companies Act lists out thematic areas from which companies can choose from and formulate a CSR strategy around it.&nbsp;</p>\r\n<p>i) Eradicating hunger, poverty and malnutrition</p>\r\n<p>ii) Education: Promoting education, including special education and employment enhancing vocation skills&nbsp;</p>\r\n<p>iii) Reducing Inequalities: promoting gender equality, empowering women, setting up homes and hostels for women and orphans; setting up old age homes etc.&nbsp;</p>\r\n<p>iv) Environment: ensuring environmental sustainability, ecological balance, protection of flora and fauna, animal welfare, agroforestry, conservation of natural resources etc.&nbsp;</p>\r\n<p>v) Protection of national heritage, art and culture: including restoration of buildings and sites of historical importance and works of art; setting up public libraries; promotion and development of traditional art and handicrafts etc.&nbsp;</p>\r\n<p>vi) Measures for the benefit of armed forces: veterans, war widows and their dependents</p>\r\n<p>vii)Trainingtopromoteruralsports, nationally recognised sports, paralympic sports and olympic sports</p>\r\n<p>viii)Contribution to the prime minister\'s national relief fund: or Prime Minister&rsquo;s Citizen Assistance and Relief in Emergency Situations Fund (PM CARES Fund)] or any other fund set up by the central govt.&nbsp;</p>\r\n<p>ix) Contribution to incubators or research and development projects*</p>\r\n<p>x) Rural development projects</p>\r\n<p>xi) Slum area development</p>\r\n<p>xii) Disaster management:This includes relief, rehabilitation and reconstruction activities</p>\r\n<p>*Notification in the wake of COVID 19:&nbsp;</p>\r\n<p>Any company engaged in research and development activity of new vaccine, drugs and medical devices in their normal course of business may undertake research and development activity of new vaccine, drugs and medical devices related to COVID-19 for financial years 2020-21, 2021-22 and 2022-23 subject to the conditions that-&nbsp;</p>\r\n<p>&bull; such research and development activities shall be carried out in collaboration with any of the institutes or organisations mentioned in item (ix) of Schedule VII to the Act.&nbsp;</p>\r\n<p>&bull; details of such activity shall be disclosed separately in the Annual Report on CSR included in the Board&rsquo;s Report&rdquo;</p>', 'primary-page-sections/January2021/mEPbdkY6bzpS6s4kFjFP.jpg', NULL, 'http://ebook.mca.gov.in/Actpagedisplay.aspx?PAGENAME=17923', 'Read More..', 'HYPERLINK', 1, 'A', NULL, '2021-01-27 06:23:30', NULL, 2, 'auto'),
(57, 38, 'MEDIA', 'Benefits of CSR', '<p class=\"MsoNormal\">Our blogger, Anish Sengupta.<span style=\"mso-spacerun: yes;\">&nbsp; </span>lists out the benefits of CSR in his blog.</p>', 'primary-page-sections/January2021/bmhZDgjDYYGfGVTXlqJe.jpg', NULL, 'http://cafindia.jaisalmercity.com/media/blogs', 'Read More..', 'HYPERLINK', 1, 'A', '2021-01-27 06:26:12', '2021-01-27 06:26:12', NULL, 2, 'auto'),
(58, 38, 'MEDIA', '10 principles of Good Business', '<p class=\"MsoNormal\">UN GCNI has listed 10 principles pertaining to human rights, labour standards, environmental protection and anti-corruption,which every business should follow.</p>', 'primary-page-sections/January2021/2FXybNllruy25W7hzQVu.jpg', NULL, 'https://www.globalcompact.in/principles', 'Read More..', 'HYPERLINK', 1, 'A', '2021-01-27 06:28:12', '2021-01-27 06:28:12', NULL, 2, 'auto'),
(59, 35, 'MEDIA', 'How CAF UK does it', '<p class=\"MsoNormal\">Learn how our global partner CAF UK has been implementing legacy programmes.</p>', 'primary-page-sections/April2021/3ADKP5mrKPxr8y9Kxhzh.jpg', NULL, 'https://www.cafonline.org/my-personal-giving/long-term-giving/legacies', 'Click here', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 13:20:18', NULL, 2, 'auto'),
(67, 10, 'MEDIA', 'Set up a foundation', '<p>We support companies and institutions to set up designated charitable foundation for strategic community initiatives. This includes creating a corporate foundation proposition and to set out why you want to create a change.</p>\r\n<p>We provide the following services for establishing a foundation:</p>\r\n<ul>\r\n<li>Advisory and conceptualizing preparatory work for establishing the Foundation - legal &amp; statutory.</li>\r\n<li>Help companies to create common vision, aim and thematic focus.</li>\r\n<li>Develop the foundation strategy, define scope of foundation activities that gives a desired impact.</li>\r\n<li>Set up governance &amp; business management plan.</li>\r\n<li>Hosting and hand-holding of the newly registered Foundation.</li>\r\n<li>Develop strategy to determine how you intend to achieve your social mission.</li>\r\n</ul>', 'primary-page-sections/April2021/1jSw8GkKhlRqwjz7T7lS.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-20 08:10:03', NULL, 2, 'auto'),
(68, 10, 'MEDIA', 'Legal Compliances and Accounts Management', '<p>We make your grantmaking more fruitful through a detailed and stringent process to ensure transparency, compliance check before funds disbursal</p>', 'primary-page-sections/April2021/08Sf4vWv70RMIAlWXpZb.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 17:47:16', NULL, 2, 'auto'),
(69, 10, 'MEDIA', 'Monitoring of all financial transactions', '<p>Our finance team monitors each and every financial transaction to make sure every penny of your grant is accounted for.</p>', 'primary-page-sections/April2021/9884VBn68kHD25HqcuRJ.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 17:48:51', NULL, 2, 'auto'),
(70, 10, 'MEDIA', 'Financial reporting', '<p>From preparation of Utilization Certificate to narrative reports,we keep our donors updated through regular, audited financial reports for every project in accordance with standards issued by The Institute of Chartered Accountants Of India.</p>', 'primary-page-sections/April2021/3pAgBNthfdJa1PRKFDJO.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 17:50:25', NULL, 2, 'auto'),
(71, 10, 'MEDIA', 'Legal Advisory', '<p>We walk every step of your philanthropic journey with our legal advisory that will make your grantmaking well-planned andhasslefree. Our team is always abreast with the latest&nbsp;</p>', 'primary-page-sections/April2021/n7zJ2vXmFCv4AtvSGSQ0.jpg', NULL, NULL, NULL, 'HYPERLINK', 1, 'A', NULL, '2021-04-15 17:52:01', NULL, 2, 'auto'),
(73, 10, 'MEDIA', 'How we have helped institutions and Foundations', '<p>Learn how BVLF is creating sustainable cities in India, in our Story of Hope section.&nbsp;</p>', 'primary-page-sections/April2021/xUbtq6uLU7q7kEc25HAF.jpg', NULL, 'https://cafindia.jaisalmercity.com/media/Stories-Of-Hope', 'Learn More', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 17:55:46', NULL, 2, 'auto'),
(74, 13, 'MEDIA', 'Set up a Donor Advised Funds Account', '<p>A Donor Advised Funds Account will help you give to NGOs of your choice through a single fund, saving you a considerable amount of time and expense required to establish a private foundation.&nbsp;&nbsp;</p>', 'primary-page-sections/April2021/hIhUIOc5ibwgvN11iv5G.jpg', NULL, 'http://cafindia.jaisalmercity.com/', 'Get in touch with us', 'HYPERLINK', 1, 'A', NULL, '2021-04-20 08:04:31', NULL, 2, 'auto'),
(75, 13, 'MEDIA', 'Employee Assistance Fund', '<p>An accident or a death of a worker can have a ripple effect on an organisation. Managing its aftermaths is one of the most difficult situations faced by an organisation. We have helped organisations set up the Employee assistance fund to provide support to the bereaved families after the sudden demiceof their colleagues.&nbsp;</p>\r\n<p>Learn how Indus Towers is providing support to the bereaved families in this blog by xyz&nbsp;</p>\r\n<p>&nbsp;</p>', 'primary-page-sections/April2021/x831ivrwJs8HbmZOesr0.jpg', NULL, 'http://cafindia.jaisalmercity.com/', 'Click Hear', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 18:04:16', NULL, 2, 'auto'),
(76, 13, 'MEDIA', 'Advantages of a DAF', '<ul>\r\n<li>Tax Friendly solutions for your philanthropic investmtment</li>\r\n<li>Give to the best and most credible NGOs&nbsp;&nbsp;</li>\r\n<li>You can even fund social enterprises that are working towards a sustainable world&nbsp;&nbsp;</li>\r\n<li>Opportunities for CSR Partnership</li>\r\n</ul>', 'primary-page-sections/April2021/lO1v27WZQBOBV8EWYWLA.jpg', NULL, 'http://cafindia.jaisalmercity.com/', 'Read More..', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 18:08:04', NULL, 2, 'auto'),
(79, 37, 'MEDIA', 'Increasing our Footprint in Rajasthan and Haryana', '<p>After working in Haryana and Rajasthan for several years, we have decided to increase our footprint in the two states for two thematic areas &ndash; Education and Environment. Through our interventions we are addressing the challenges pertaining to environment and education in Eastern Rajasthan and Haryana.&nbsp;</p>\r\n<p><strong>Our aim:&nbsp;&nbsp;</strong></p>\r\n<ul>\r\n<li>To co-travel the developmental journey in Rajasthan and Haryana with relevant stakeholders.</li>\r\n<li>Catalyze local philanthropy for local social development.</li>\r\n<li>Through CAF I Direct, we will create specific interventions based on the need of the local communities in the areas of Education and Environment.</li>\r\n<li>We have a proven track record of excellent programme and grant management and we will be using it to our advantage while working on CAF I Direct.</li>\r\n<li>The strategy envisages to forge and strengthen partnerships among civil society, industries and government for a sustainable on-ground impact.</li>\r\n<li>Our strategy is based on our consultations with relevant stakeholders -- government, and our corporate and NGOs partners.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><a href=\"#top\">Download Brochure</a></p>', 'primary-page-sections/February2021/zc6K2brWqFjo0jOeJRLX.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-02-26 16:28:01', NULL, 2, 'auto'),
(80, 37, 'CARDS', 'Success Stories in Rajasthan and Haryana', NULL, 'primary-page-sections/February2021/9Rl2n72UX8KIKf9D4EOd.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'D', NULL, '2021-04-02 06:55:44', NULL, 3, 'auto'),
(83, 14, 'CUSTOM', 'Empowering NGOs/Civil Society', '<p>We work with more than 5,000 NGOs across India and mobilise resources for them to deliver some of the most impactful development projects. We help them achieve excellence through capacity building and regular handholding.</p>', 'primary-page-sections/February2021/efsXRs4ByUeOy3S7DIgZ.jpg', 'https://www.youtube.com/watch?v=cV5nAUj5cfM', NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-31 13:00:54', NULL, 3, 'auto'),
(84, 27, 'MEDIA', 'CONNECT Workshops', '<p>We conduct multiple capacity building workshops for NGOs called CONNECT &ndash; an acronym for Commune Network Nurture Engage Collaborate Transform.&nbsp;&nbsp;</p>', 'primary-page-sections/April2021/oOWi1K4H2x7wMsZpOm0A.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Download Brochure', 'BUTTON', 1, 'A', NULL, '2021-04-15 16:31:24', NULL, 2, 'auto'),
(85, 27, 'MEDIA', 'Why CONNECT?', '<p>Through these workshops, challenges faced during the programme implementation are addressed. CAF India has tailored training programmes, for NGOs implementing CSR grants, and NGOs implement payroll grants.</p>\r\n<p><strong>Infograph on Benefits of CONNECT</strong>&nbsp;</p>\r\n<p>The Capacity Building Interventions will broadly cover the following aspects :</p>\r\n<div class=\"row\">\r\n<div class=\"col-md-6 pl-0\">\r\n<ul class=\"mx-0\">\r\n<li>NGO governance</li>\r\n<li>Legal, regulatory and fiscal compliances</li>\r\n<li>Programme &amp; financial management</li>\r\n<li>Monitoring &amp; Evaluation - logical framework,&nbsp;</li>\r\n<li>Result-based management</li>\r\n<li>Need assessment</li>\r\n<li>Writing effective project proposals</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 pl-0\">\r\n<ul>\r\n<li>Resource mobilization &amp; fundraising</li>\r\n<li>Building effective partnerships</li>\r\n<li>Documentation &amp; report writing</li>\r\n<li>Policies development in NGOs</li>\r\n<li>Building effective HR &amp; financial practices</li>\r\n<li>NGO management</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 'primary-page-sections/April2021/Z3wOHShbbNI79XpKn36i.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-05-11 09:30:57', NULL, 2, 'auto'),
(86, 60, 'MEDIA', 'NDTV Dettol Swachh Banega India', '<p>We partnered with NDTV and Reckitt Benckiser (Dettol) to contribute to our country&rsquo;s national mission of creating a cleaner healthier India &ndash; Swachh Bharat. In Jan 2015 the Dettol NDTV Banega Swachh India initiative kicked off a corporate volunteering programme where 1.13 crore hours of volunteering time was pledged to clean India&nbsp;</p>\r\n<p><strong>The campaign raised funds for:</strong>&nbsp;</p>\r\n<ul>\r\n<li>Construction of complete toilets</li>\r\n<li>Focused communication to ensure proper usage</li>\r\n<li>Appropriate depth of pits</li>\r\n<li>Quality material for construction of a toilet</li>\r\n<li>Community mobilization</li>\r\n<li>Develop Information, Education and Communication (IEC) material and tools</li>\r\n<li>Management and administrative costs</li>\r\n<li>Operation and maintenance costs&nbsp;</li>\r\n</ul>', 'primary-page-sections/April2021/WbPchKsl7uoW1zOxz2hY.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'D', NULL, '2021-04-15 18:11:33', NULL, 2, 'auto'),
(87, 60, 'MEDIA', 'Behtar India with DHFL Pramerica and NDTV', '<p>The Behtar India Campaign was launched in 2016 to build a better future for India. The essence of the campaign was to mobilize students and ordinary citizens to join a nationwide movement that focuses on health, hygiene and environment.&nbsp;&nbsp;</p>\r\n<p>The Behtar Swasthya (health Stage of the campaign aimed to fight the scourge of mosquito borne diseases Students from all over the country drove the campaign to become crusaders for the cause. School authorities and students crowd funded the campaign and the funds raised were used to provide mosquito protection kits to underprivileged students. The campaign also called upon corporates to join the movement.&nbsp;</p>', 'primary-page-sections/April2021/xBO3bE1UqiobUXSdoz5x.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'D', NULL, '2021-04-15 18:12:11', NULL, 2, 'auto'),
(88, 5, 'CARDS', 'How We Do It', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-03 18:12:26', '2021-03-03 18:12:26', NULL, 3, 'auto'),
(89, 4, 'MEDIA', 'Donate Your Time', '<p>Choose how you want to contribute to a cause by donating your precious time. We offer you three broad ways to do so.</p>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'http://cafindia.jaisalmercity.com/contact-us', 'Sign up to receive volunteering alerts﻿', 'HYPERLINK', 1, 'A', NULL, '2021-03-09 10:53:54', NULL, 3, 'auto'),
(90, 4, 'MEDIA', 'Seek Volunteers for your NGO', '<p>We have a network of enthusiastic volunteers, who are ready to devote their time for a cause close to their heart.</p>', 'primary-page-sections/April2021/a4x8K2WTECH3cIng8tga.jpg', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Get in touch with us', 'HYPERLINK', 3, 'A', NULL, '2021-04-15 10:20:37', NULL, 2, 'auto'),
(91, 4, 'CARDS', 'Opportunities', '<p class=\"MsoNormal\"><span style=\"mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri; color: #262626; mso-themecolor: text1; mso-themetint: 217;\">Choose how you want to contribute to a cause by donating your precious time. We offer you three broad ways to do so.</span></p>', NULL, NULL, NULL, NULL, 'BUTTON', 2, 'A', NULL, '2021-04-15 07:25:32', NULL, 3, 'auto'),
(92, 19, 'CUSTOM', 'How We Do It', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-25 10:40:17', NULL, 7, 'auto'),
(94, 3, 'MEDIA', 'India’s most effective Payroll Giving Scheme', '<p><strong>Enabling your employees to give at work</strong></p>\r\n<p>CAF India&rsquo;s payroll giving programme Give As You Earn (GAYE) provides employees with a flexible means to make charitable donations to their preferred causes directly from their pay.</p>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-25 09:55:37', NULL, 2, 'auto'),
(95, 3, 'CARDS', 'Modes of Payroll Giving Schemes', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-25 07:34:21', NULL, 4, 'auto'),
(96, 3, 'MEDIA', 'Set up a Payroll Giving Scheme', '<p>Employees can easily and regularly make a difference to the good causes that matter to them the most, and at the same time also get tax benefits.</p>', 'primary-page-sections/April2021/4NzKlIa2vUAVicQn8TJU.jpg', NULL, 'https://cafindia.jaisalmercity.com/contact-us', 'GET STARTED', 'HYPERLINK', 1, 'A', NULL, '2021-04-16 06:29:14', NULL, 2, 'auto'),
(97, 3, 'MEDIA', 'Employee Assistance Programme', '<p>An accident or a death of a worker can have a ripple effect on an organisation. Managing its aftermaths is one of the most difficult situations faced by an organisation. While such events are extremely tragic and unpredictable, it&rsquo;s important to be prepared and ensure that the bereaved families are supported and taken care of.</p>\r\n<p>&nbsp;</p>', 'primary-page-sections/April2021/EmgKSKMzTmQlLNC9O0fU.jpg', NULL, 'https://blog.cafindia.org/heres-how-sikkim-is-saving-its-feathered-friends/', 'Learn More About our Employee Assistance Programme', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 10:28:19', NULL, 2, 'auto'),
(98, 12, 'MEDIA', 'What is Companies Act 2013?', '<p>India is the only country to have made Corporate Social Responsibility for companies with a turnover of over Rs 1,000 crore or having a net worth of Rs 500 crore five hundred crore or a net profit of rupees Rs 5 crore or more.</p>\r\n<p>Such companies are mandated to form a CSR Committee of the Board consisting of three or more directors, out of which at least one director shall be an independent director. The Board has to ensure that the company spends, in every financial year, at least two per cent. of the average net profits of the company made during the three immediately preceding financial years.</p>\r\n<p>With the passing of the law, we at CAF India have been instrumental in implementing the law and helping companies pursue their CSR vision.</p>', 'primary-page-sections/April2021/hfsZhXM9haAFBIKZnr5N.jpg', NULL, 'https://www.mca.gov.in/SearchableActs/Section135.htm', 'More details on Ministry of Commerce website', 'HYPERLINK', 1, 'A', NULL, '2021-04-17 05:46:39', NULL, 2, 'auto'),
(99, 12, 'MEDIA', 'Amendment to Companies Act 2019', '<p>The Act amended in 2019, to make it more stringent. Read what the amendment entails.</p>', 'primary-page-sections/April2021/Vv2bnwJIZ9LrTrlnczES.jpg', NULL, 'https://cafindia.jaisalmercity.com/media/press-releases', 'Click here to read our press release on the amendment', 'HYPERLINK', 1, 'A', NULL, '2021-04-17 05:47:10', NULL, 2, 'auto'),
(100, 12, 'CARDS', 'Which causes to choose from for CSR?', '<p>The Schedule VII of companies Act lists out thematic areas from which companies can choose from and formulate a CSR strategy around it.&nbsp;</p>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-05 17:42:59', NULL, 4, 'auto'),
(101, 12, 'MEDIA', 'Notification in the wake of COVID 19', '<p>Any company engaged in research and development activity of new vaccine, drugs and medical devices in their normal course of business may undertake research and development activity of new vaccine, drugs and medical devices related to COVID-19 for financial years 2020-21, 2021-22 and 2022-23 subject to the conditions that-&nbsp;</p>\r\n<ul>\r\n<li>such research and development activities shall be carried out in collaboration with any of the institutes or organisations mentioned in item (ix) of Schedule VII to the Act.&nbsp;</li>\r\n<li>details of such activity shall be disclosed separately in the Annual Report on CSR included in the Board&rsquo;s Report&rdquo;</li>\r\n</ul>', 'primary-page-sections/April2021/zCrs6L35l6zlWMcGcaLS.jpg', NULL, 'http://ebook.mca.gov.in/Actpagedisplay.aspx?PAGENAME=17923', 'You can read more about schedule VII here', 'BUTTON', 1, 'A', NULL, '2021-04-15 12:25:27', NULL, 2, 'auto'),
(102, 12, 'MEDIA', 'Benefits of CSR', '<p>Our blogger, Anish Sengupta.&nbsp; lists out the benefits of CSR in his blog&nbsp;</p>', 'primary-page-sections/April2021/GieeTu86YEkINv0a3Q6u.jpg', NULL, 'https://blog.cafindia.org/art-of-endurance-traditional-needlework-helps-women-of-thar-overcome-hardships/', 'Click here to read more', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 12:34:58', NULL, 2, 'auto'),
(103, 12, 'MEDIA', '10 principles of Good Business', '<p>UN GCNI has listed 10 principles pertaining to human rights, labour standards, environmental protection and anti-corruption, which every business should follow.&nbsp;</p>', 'primary-page-sections/April2021/MTKxFf0B3Z0h3qtEgUvX.jpg', NULL, 'https://www.globalcompact.in/principles', 'Learn More', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 12:36:46', NULL, 2, 'auto'),
(104, 8, 'CARDS', NULL, NULL, NULL, NULL, NULL, NULL, 'BUTTON', 2, 'A', NULL, '2021-04-15 17:04:00', NULL, 4, 'auto'),
(105, 16, 'CUSTOM', NULL, NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-04-02 07:26:00', NULL, 3, 'auto'),
(106, 72, 'CARDS', 'How We Do It', '<ul>\r\n<li>MOU signed with every NGO selected to implement the programme</li>\r\n<li>Grant disbursal and overall management is done</li>\r\n<li>Regular NGO monitoring visits are conducted to assess project progress, quality and adherence to compliance</li>\r\n<li>Independent audits are performed (through third party auditors) to ensure financial regulations are met</li>\r\n<li>Conduct joint review meeting</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-04-17 05:17:27', NULL, 2, 'auto'),
(107, 7, 'CARDS', 'How We Do It', '<p class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">The Capacity Building Interventions will broadly cover the following aspects :</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; float: left;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 49.8162%; height: 200px; vertical-align: top;\">\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">NGO governance</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Writing effective project proposals</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Legal, regulatory and fiscal compliances</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Resource mobilization &amp; fundraising</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Programme &amp; financial management</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Building effective partnerships</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Monitoring &amp; Evaluation - logical framework,</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"width: 50%; height: 200px; vertical-align: top;\">\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Documentation &amp; report writing</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Result-based management</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Policies development in NGOs</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Need assessment</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Building effective HR &amp; financial practices</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">NGO management</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-04-14 06:32:56', NULL, 2, 'auto'),
(108, 39, 'CARDS', 'How We Do It', '<ul>\r\n<li>Adopt a 360-degree approach in designing a comprehensive communication plan for partners</li>\r\n<li>CSR initiative of our corporate partner gets showcased on all the right platforms (online and offline)</li>\r\n<li>We help create impactful info-graphics, beneficiary success stories, case studies</li>\r\n<li>Hub &amp; Spoke model for integrated communication management</li>\r\n<li>Media mileage/PR support through media fellowship program</li>\r\n<li>Access to celebrity associations through our celebrity for a cause program&nbsp;</li>\r\n<li>High visibility through engaging corporate Senior Mgt. at important forums/ events</li>\r\n<li>Design fund raising campaigns for creating awareness and visibility&nbsp;</li>\r\n<li>Write and design CSR Sustainability Reports</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-23 19:07:08', '2021-03-23 19:07:08', NULL, 2, 'auto'),
(109, 40, 'CARDS', 'How We Do It', '<ul>\r\n<li>Co-ordinate with multiple stakeholders to collect &amp; compile programme progress data</li>\r\n<li>Assess project strategy on an ongoing basis</li>\r\n<li>Evaluate program outcomes</li>\r\n<li>Measure effectiveness and efficiency&nbsp;</li>\r\n<li>Capture learnings for corrective actions</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-23 19:14:10', '2021-03-23 19:14:10', NULL, 2, 'auto');
INSERT INTO `primary_page_sections` (`id`, `primary_page_id`, `template_type`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `columns_in_rows`, `bg_style`) VALUES
(110, 33, 'MEDIA', 'Seek Volunteers for your NGO', '<p>We have a network of enthusiastic volunteers, who are ready to devote their time for a cause close to their heart.</p>', 'primary-page-sections/March2021/mo66RkCrkbJe5Fghny12.jpg', NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-03-26 12:41:54', '2021-03-26 12:41:54', NULL, 2, 'auto'),
(112, 6, 'CUSTOM', 'Know More about Giving', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-31 07:07:38', NULL, 3, 'auto'),
(113, 34, 'MEDIA', 'Avail Tax Exemptions', '<p>If you are living abroad and want to donate in India, we can tell you how you can contribute and avail tax exemptions as per the laws prescribed in the country of your residence.</p>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', 'https://cafindia.jaisalmercity.com/contact-us', 'Write to us', 'HYPERLINK', 1, 'A', NULL, '2021-04-01 09:21:54', NULL, 2, 'auto'),
(114, 34, 'MEDIA', 'Our fundraising campaigns', '<p>Support our fundraising campaigns. Be a part of India&rsquo;s development story from beyond borders.</p>', 'primary-page-sections/March2021/pHDHBFJIrccxUwVZEPhi.png', NULL, 'https://cafindia.jaisalmercity.com/For-Individuals/for-individual-give-now', 'Learn more about our campaigns', 'HYPERLINK', 1, 'A', NULL, '2021-03-31 09:01:09', NULL, 2, 'auto'),
(115, 34, 'MEDIA', 'Raise funds development projects in India', '<p>If you are a non-profit in a country other than India, you can raise funds from your diaspora donor base and help them be a part of development projects in India.</p>', 'primary-page-sections/April2021/UcblCQ9RqVWDhid5l2Vp.png', NULL, 'https://cafindia.jaisalmercity.com/contact-us', 'Write to us', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 10:12:43', NULL, 2, 'auto'),
(116, 34, 'MEDIA', 'Our Reports', '<p>Read our publications on funding patterns of the Indian diaspora.</p>', 'primary-page-sections/April2021/p9ZZIahBZ4hYSSSrJ9dO.jpg', NULL, 'https://cafindia.jaisalmercity.com/who-we-are/Annual-Reports-And-Financials', 'Click here', 'HYPERLINK', 1, 'A', NULL, '2021-04-15 09:58:37', NULL, 2, 'auto'),
(117, 36, 'CARDS', 'Insights on Giving', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-31 08:36:12', NULL, 3, 'auto'),
(118, 36, 'CARDS', 'Our other publications', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-03-31 09:03:56', NULL, 3, 'light'),
(119, 9, 'CUSTOM', NULL, NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-04-01 11:04:24', NULL, 3, 'auto'),
(120, 60, 'CARDS', 'A glimpse of some of our most successful corporate campaigns', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', NULL, '2021-05-11 09:23:22', NULL, 3, 'auto'),
(121, 57, 'CARDS', 'How We Do It', '<p class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">The Capacity Building Interventions will broadly cover the following aspects :</span></p>\r\n<table style=\"width: 100%; border-collapse: collapse; float: left;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 50%; height: 200px;\">\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\"><span style=\"font-size: 13.3333px;\">NGO governance </span></span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Writing effective project proposals</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Legal, regulatory and fiscal compliances</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Resource mobilization &amp; fundraising</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Programme &amp; financial management</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Building effective partnerships</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Monitoring &amp; Evaluation - logical framework,</span></li>\r\n</ul>\r\n</td>\r\n<td style=\"width: 50%; height: 200px;\">\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Documentation &amp; report writing</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Result-based management</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Policies development in NGOs</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Need assessment</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">Building effective HR &amp; financial practices</span></li>\r\n<li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size: 13.3333px;\">NGO management</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-02 05:48:37', '2021-04-02 05:48:37', NULL, 2, 'auto'),
(122, 67, 'CARDS', 'How We Do It', '<ul>\r\n<li>Adopt a 360-degree approach in designing a comprehensive communication plan for partners</li>\r\n<li>CSR initiative of our corporate partner gets showcased on all the right platforms (online and offline)</li>\r\n<li>We help create impactful info-graphics, beneficiary success stories, case studies</li>\r\n<li>Hub &amp; Spoke model for integrated communication management</li>\r\n<li>Media mileage/PR support through media fellowship program</li>\r\n<li>Access to celebrity associations through our celebrity for a cause program&nbsp;</li>\r\n<li>High visibility through engaging corporate Senior Mgt. at important forums/ events</li>\r\n<li>Design fund raising campaigns for creating awareness and visibility&nbsp;</li>\r\n<li>Write and design CSR Sustainability Reports</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-02 05:55:22', '2021-04-02 05:55:22', NULL, 2, 'auto'),
(123, 17, 'CARDS', 'HALL OF FAME', NULL, NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-06 10:11:05', '2021-04-06 10:11:05', NULL, 3, 'white'),
(124, 8, 'MEDIA', 'Institutions and Foundations', '<p>For the past two decades, CAF India has been supporting philanthropic initiatives of international foundations operating in India. With a thorough understanding of the importance of fiscal management as well as the systems of international foundations.</p>', NULL, 'https://www.youtube.com/watch?v=cV5nAUj5cfM', NULL, NULL, 'BUTTON', 1, 'A', '2021-04-15 17:03:31', '2021-04-15 17:03:31', NULL, 2, 'auto'),
(125, 43, 'CARDS', 'How We Do It', '<ul>\r\n<li>Our experts help identify the social causes that are in line with organization&rsquo;s CSR policy.</li>\r\n<li>Conceptualize the idea and set clear objectives as per theory of change</li>\r\n<li>Conduct base-line/need assessment</li>\r\n<li>Design initial delivery framework along with activities/outcome &amp; impact</li>\r\n<li>Define processes and reporting frameworks to measure impact</li>\r\n<li>Conduct risk analysis</li>\r\n<li>An implementation plan is developed in liaison with all stakeholders</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-20 07:55:58', '2021-04-20 07:55:58', NULL, 2, 'auto'),
(126, 58, 'CARDS', 'How We Do It', '<ul>\r\n<li>MOU signed with every NGO selected to implement the program</li>\r\n<li>Grant disbursal and overall management is done&nbsp;</li>\r\n<li>Regular NGO monitoring visits are conducted to access project progress, quality and adherence to compliance.</li>\r\n<li>Independent audits are perform (through third party auditors) to ensure financial requlations are met.</li>\r\n<li>Conduct joint review meeting.</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-20 07:59:01', '2021-04-20 07:59:01', NULL, 2, 'auto'),
(127, 68, 'CARDS', 'How We Do It', '<ul>\r\n<li>Co-ordinate with multiple stakeholders to collect &amp; compile programme progress data</li>\r\n<li>Assess project strategy on an ongoing basis</li>\r\n<li>Evaluate program outcomes</li>\r\n<li>Measure effectiveness and efficiency&nbsp;</li>\r\n<li>Capture learnings for corrective actions</li>\r\n</ul>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-04-20 08:02:09', '2021-04-20 08:02:09', NULL, 2, 'auto');

-- --------------------------------------------------------

--
-- Table structure for table `primary_page_section_cards`
--

CREATE TABLE `primary_page_section_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `primary_page_section_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_icon` int(11) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_page_section_cards`
--

INSERT INTO `primary_page_section_cards` (`id`, `primary_page_section_id`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `image_icon`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'CSR', '<p>We design, deliver and manage CSR programmes for our corporate partners. We turn their CSR vision into a reality ensuring a positive impact on communities across India.</p>', 'primary-page-section-cards/January2021/XvATCpmS4cxWwTek7Aef.png', 'https://cafindia.jaisalmercity.com/for-companies/csr', 'Read More', 'BUTTON', 2, 1, 'A', '2020-12-17 08:01:45', '2021-03-25 17:37:06', NULL),
(2, 2, 'Employee Giving', '<p>Employees from companies across India are doing their bit for their society through our payroll giving &ndash; Give As You Earn (GAYE) programme.</p>', 'primary-page-section-cards/January2021/1coCcrfrXL3p9izwnBNK.png', 'https://cafindia.jaisalmercity.com/for-companies/employee-giving', 'Read More', 'BUTTON', 2, 1, 'A', '2020-12-17 08:02:34', '2021-03-25 17:37:57', NULL),
(3, 2, 'Volunteering', '<p>Our volunteering programmes are designed to allow employees and students contribute to a cause more significantly -- be it raising funds or taking out time to teach an underprivileged student</p>', 'primary-page-section-cards/January2021/ofgPdAyetEcTsI6DsD8i.png', 'https://cafindia.jaisalmercity.com/for-companies/volunteering', 'Read More', 'BUTTON', 2, 1, 'A', '2020-12-26 19:59:08', '2021-03-25 17:38:29', NULL),
(4, 2, 'Corporate Campaigns', '<p>We create and execute effective campaigns in association with our corporate partners. These campaigns have been successful in fundraising awareness generation.</p>', 'primary-page-section-cards/January2021/IfZZV5fmq81IWPpVPVHr.png', 'https://cafindia.jaisalmercity.com/for-companies/Corporate%20Campaigns', 'Read More', 'BUTTON', 2, 1, 'A', '2020-12-17 08:04:46', '2021-03-25 17:39:01', NULL),
(5, 2, 'CSR Laws', '<p>India is the only country which has made CSR mandatory. Find out more about the laws the govern CSR in India</p>', 'primary-page-section-cards/January2021/sZ1BPLtnUyUDxul8wKKz.png', 'https://cafindia.jaisalmercity.com/for-companies/csr-laws', 'Read More', 'BUTTON', 2, 1, 'A', '2020-12-17 08:05:33', '2021-03-25 17:39:51', NULL),
(6, 2, 'Call us', '<p>Our team is always there to help you with any query related to CSR. We are just a call away!</p>\r\n<p>+91-11-6142-4141</p>\r\n<p>contactus@cafindia.org</p>', 'primary-page-section-cards/January2021/I8wgqMEPLzTmggch1LO4.png', 'http://cafindia.jaisalmercity.com/contact-us', 'Call Us', 'BUTTON', 2, 1, 'A', '2020-12-17 08:06:41', '2021-03-25 17:40:51', NULL),
(7, 3, 'How Oracle helps saving finches of Himachal Pradesh', 'Ever wondered where those sparrows went? The one that rested on your window on a hot, lazy afernoon… and the one that perched on the railing of your balcony every morning and greeted you with its pleasantries?', 'primary-page-section-cards/December2020/I5myFrCn1eEfwL7ZFGkq.jpg', 'https://blog.cafindia.org/heres-how-sikkim-is-saving-its-feathered-friends/', 'Here’s how Sikkim is saving its feathered friends', 'HYPERLINK', 1, 1, 'A', '2020-12-17 08:23:05', '2020-12-19 19:44:12', NULL),
(8, 3, 'Accenture’s initiative to support livelihoods of rural women', 'The Karni Mata temple in Bikaner is a temple where rats are worshipped and fed. To see a white rat among all the black and grey rats is considered great fortune. I could not spot a white rat during my trip to Bikaner, but I would still call myself fortunate.', 'primary-page-section-cards/December2020/IkoxwSVN4UUt8jrcpSUk.jpg', 'https://blog.cafindia.org/art-of-endurance-traditional-needlework-helps-women-of-thar-overcome-hardships/', 'Art of endurance: traditional needlework helps women of Thar overcome hardships', 'BUTTON', 1, 1, 'A', '2020-12-17 08:26:01', '2020-12-17 08:26:01', NULL),
(9, 4, 'Capacity Building', 'We strive to make NGOs thrive. Every year we conduct a series of workshops called CONNECT', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'HYPERLINK', 1, 1, 'A', '2020-12-23 04:53:33', '2020-12-23 04:58:42', NULL),
(10, 4, 'NGO Validation', 'Our NGO due diligence is one of the most robust processes that have helped NGOs achive greater credibility', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Read More', 'HYPERLINK', 1, 1, 'A', '2020-12-23 04:54:32', '2020-12-23 04:54:32', NULL),
(11, 4, 'Register With us', 'We have over 5,000 NGOs registered with us on our NGO registration portal. Register with us if you are an NGO and get noticed', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Register Now', 'HYPERLINK', 1, 1, 'A', '2020-12-23 04:55:23', '2020-12-23 04:55:23', NULL),
(12, 4, 'Laws for NGOs', 'Check out our resource hub to learn more about laws that govern NGOs in India', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Click here', 'HYPERLINK', 1, 1, 'A', '2020-12-23 04:56:11', '2020-12-23 04:56:11', NULL),
(13, 4, 'Seek Volunteers', 'We have a  network of enthusiastic volunteers, who are ready to devote their time for a cause close to their heart', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn more', 'HYPERLINK', 1, 1, 'A', '2020-12-23 04:56:56', '2020-12-23 04:56:56', NULL),
(14, 5, 'Media Partnerships', 'We have partnered with reputed media houses to tell stories of change creatively', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'HYPERLINK', 1, 1, 'A', '2020-12-23 05:41:07', '2020-12-23 05:41:07', NULL),
(15, 5, 'External Events', 'We interact with multiple stakeholders in various forums across India and have emerged as a thought leader in the space of philanthropy', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Read More', 'HYPERLINK', 1, 1, 'A', '2020-12-23 05:41:48', '2020-12-23 05:41:48', NULL),
(16, 5, 'In-house Forums', 'Join the invigorating discussions on the developmental paradigms in India through our in-house forums', NULL, 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'HYPERLINK', 1, 1, 'A', '2020-12-23 05:42:44', '2020-12-23 05:42:44', NULL),
(20, 12, 'Institute of Directors (IoD)', '<p>CAF India was part of the 14th International Conference on CSR presented by Institute of Directors on 4 March 2020. Ms Meenakshi Batra &ndash; CEO, CAF India spoke on &lsquo;promoting socially and ethically motivated community development projects&rsquo; with a special focus on CSR, social innovation and entrepreneurship and monitoring &amp; evaluation.</p>', 'primary-page-section-cards/April2021/XTQ35Zcq3USf9fbCvxt2.jpg', NULL, NULL, 'HYPERLINK', 1, 1, 'A', '2020-12-27 06:25:00', '2021-04-02 10:08:26', NULL),
(21, 12, 'Rotary Club Karnataka', '<p>Ms Meenakshi Batra &ndash; CEO, CAF India moderated a panel discussion on &lsquo;SWASTH KARNATAKA&rsquo; at the 3rd Annual Karnataka CSR Conference in Bangalore held on the 28th February 2020. The discussion aimed to unpack role of CSR in Mental Health, challenges faced in implementing healthcare policies in the state, monitoring projects in rural areas, role of technology, and how corporate India can play a role in addressing misconceptions.</p>', 'primary-page-section-cards/April2021/4cE0te1bWs2pfbWIb5pA.jpg', NULL, NULL, 'HYPERLINK', 1, 1, 'A', '2020-12-27 06:28:27', '2021-04-02 10:08:58', NULL),
(22, 12, 'UN Global Compact', '<p>UN Global Compact is CAF India strategic partner. At the 3rd Sustainable Development Goals (SDGs) Summit 2019, CAF India presents its Case Study of Project Muskaan funded by Rolls-Royce supported and manage by CAF India and implemented by Dream School Foundation in Bangalore focusing on SDG4 Quality Education. At the same event, Meenakshi Batra &ndash; CEO was part of the plenary session on &lsquo;Understanding the changing landscape of CSR&rsquo; moderated by Dr. Bhaskar Chatterjee, Secretary General, Indian Steel Association.</p>', 'primary-page-section-cards/April2021/8lIj0DosqgZTRkNrwKmy.jpg', 'https://www.globalcompact.in/3rd-sdg-summit/', 'Click to know more', 'BUTTON', 1, 1, 'A', '2020-12-27 06:31:09', '2021-04-02 10:11:08', NULL),
(23, 12, 'UBS Forum', '<p>CAF India engages with the UBS forum by sponsoring and participating in the CSR events organized by them round the years in various cities. In 2019, CAF India was part of the two day CSR Summit and Awards 2019 held in New Delhi as silver partner. Our team was part of a panel discussion on \'Impact Assessment is the CSR game-changer: Going From Proving to Improving\'. We also curated a session on \'CSR Ecosystem: Addressing Challenges and Creating Opportunities for Sustained Social Impact\'.</p>', 'primary-page-section-cards/April2021/fIV2mSzx4lCiHU4i2StJ.jpg', NULL, NULL, 'HYPERLINK', 1, 1, 'A', '2020-12-27 06:32:42', '2021-04-02 10:11:36', NULL),
(24, 12, 'AVPN', '<p>AVPN is CAF India&rsquo;s strategic partner. Meenakshi Batra &ndash; CEO, CAF India was part of the panel on &lsquo;Mobilising corporate partners for social impact&rsquo; at the AVPN India Summit 2019. The revered panelists deliberated on mutual areas of synergy and challenges in making social impact the core strategy of businesses and how it requires a paradigm shift in the thought process.</p>', 'primary-page-section-cards/April2021/CFygEywWQu9J453k2ElW.jpg', 'https://avpn.asia/event/avpn-india-summit-2019/', 'Click to know more', 'BUTTON', 1, 1, 'A', '2020-12-27 06:37:00', '2021-04-02 10:12:04', NULL),
(25, 12, 'UN World Food Porgramme', '<p>Ms Meenakshi Batra &ndash; CEO CAF India, was part of the panel on &lsquo;Resourcing SDG 2 (Zero Hunger)&rsquo; at the Strategic Consultation on Progressing Towards achieving Food and Nutrition Security at an accelerated pace organised by UN World Food Programme. The panel discussion aimed to put a spot light on the prevailing engagement models/mechanisms on achieving SDG 2, existing across landscapes and identify the opportunities and challenges for public and private players and design a way forward.</p>', 'primary-page-section-cards/April2021/fKRSJ0Sl0cc4u9scTtzp.jpg', NULL, NULL, 'HYPERLINK', 1, 1, 'A', '2020-12-27 06:38:33', '2021-04-02 10:12:38', NULL),
(26, 12, 'Indo French Chambers of Commerce & Industry (IFCCI)', '<p>IFCCI is CAF India&rsquo;s strategic partner in the CSR space. Meenakshi is the Annual Patron Member for the CSR Committee. On 23 July 2020, IFCCI, in association with CAF India and with the support of the Embassy of France in India organized NGO-Capacity Building Workshop \'\'CONNECT\'\'. Ms Meenakshi Batra- CEO, CAF India was also part of the panel discussion \'Are Indo French companies leveraging partnerships effectively in pursuit of CSR programs\" at the IFCCI CSR Conclave &amp; Awards.</p>', 'primary-page-section-cards/April2021/USPPXsyQ3vMhp4AIv3Xa.jpg', 'https://www.ifcci.org.in/news/n/news/pan-india-connect-capacity-building-workshop-strengthening-not-for-profit-organisations.html', 'CONNECT WORKSHOP', 'BUTTON', 1, 1, 'A', '2020-12-27 06:40:29', '2021-04-02 10:13:08', NULL),
(27, 12, 'ASSOCHAM', '<p>On the International Day of Kindness, Ms Meenakshi Batra - CEO, CAF India received the prestigious ASSOCHAM India Women Achievers Award in the category of \'Best Women Leader in Non-Profit Sector\'.</p>', 'primary-page-section-cards/April2021/qnEz7WtQg0wsJ6O552me.jpg', 'https://www.assocham.org/eventdetail.php?id=1772', 'Learn more', 'BUTTON', 1, 1, 'A', '2020-12-27 06:44:30', '2021-04-02 10:14:02', NULL),
(29, 88, 'Help CSR committee', NULL, 'primary-page-section-cards/April2021/r5yjqIHihitm6vJjzKvQ.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-03 18:16:58', '2021-04-16 04:02:46', NULL),
(30, 88, 'Actively engage and support the CSR committee on CSR policy formulation', NULL, 'primary-page-section-cards/April2021/vej4o98eeuuHwCt8PFRX.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-03 18:19:28', '2021-04-16 04:03:08', NULL),
(31, 88, 'Support in setting up corporate formulate a foundations', NULL, 'primary-page-section-cards/April2021/S2goIZXMUditjSbmvKFX.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-03 18:20:15', '2021-04-16 04:04:55', NULL),
(32, 91, 'Helping Hands', '<p style=\"text-align: center;\"><strong>Short Term Event Based</strong></p>\r\n<p style=\"text-align: center;\">Short term practical activites which require not so much the skills, but time &amp; effort of volunteers.</p>\r\n<p style=\"text-align: center;\"><strong>E.g.: Paint a school wall, Build community toilets</strong>&nbsp;</p>', 'primary-page-section-cards/March2021/wkmsBeMivqKcSksPPlzh.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 09:47:11', '2021-04-15 08:29:17', NULL),
(33, 91, 'Enabler', '<p style=\"text-align: center;\"><strong>Long Term Skill Based</strong></p>\r\n<p style=\"text-align: center;\">Requires volunteers to contribute time and professional, personal skills over a longer duration.</p>\r\n<p style=\"text-align: center;\"><strong>E.g.: Help develop social media strategy</strong></p>', 'primary-page-section-cards/March2021/bAOpg3WvZ3Bt0DsCIEn8.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:01:27', '2021-04-15 08:29:48', NULL),
(34, 91, 'Change Makers', '<p style=\"text-align: center;\"><strong>Pro-Bond Mentoring</strong></p>\r\n<p style=\"text-align: center;\">Company offers professional services at no cost. Take up social projects &amp; allocate interested employees.</p>\r\n<p style=\"text-align: center;\"><strong>E.g.: A law firm offers legal advice &amp; services</strong>&nbsp;</p>', 'primary-page-section-cards/March2021/qOCAAjm4ujt2h8cztvS0.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:02:39', '2021-04-15 08:30:12', NULL),
(35, 92, 'Experts', '<p>Our experts help identify the social causes that are in line with organization&rsquo;s CSR policy.</p>', 'primary-page-section-cards/March2021/9nhL545NG5oIVpDnnFHg.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:18:44', '2021-03-05 10:40:09', NULL),
(36, 92, 'Concept', '<p>Conceptualize the idea and set clear objectives as per theory of change.</p>', 'primary-page-section-cards/March2021/XUAl1CGZm1fh5JIw78Sb.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:21:31', '2021-03-05 10:21:31', NULL),
(37, 92, 'Assessment', '<p>Conduct base-line/need assessment</p>', 'primary-page-section-cards/March2021/ct2Um9hKW82BQRFaqr6y.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:22:36', '2021-03-05 10:22:36', NULL),
(38, 92, 'Design', '<p>Design initial delivery framework along with activities/outcome &amp; impact.</p>', 'primary-page-section-cards/March2021/Qhnq5ntptVoHPbDOZVOx.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:23:43', '2021-03-05 10:23:43', NULL),
(39, 92, 'Process', '<p>Define processes and reporting frameworks to measure impact.</p>', 'primary-page-section-cards/March2021/IYF9HBjLpB1y9KcADDXe.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:25:07', '2021-03-05 10:25:07', NULL),
(40, 92, 'Analysis', '<p>Conduct risk analysis</p>', 'primary-page-section-cards/March2021/sxxfaksa0Yofb7eNUKkf.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:26:15', '2021-03-05 10:26:15', NULL),
(41, 92, 'Plan', '<p>An implementation plan is developed in liaison with all stakeholders</p>', 'primary-page-section-cards/March2021/pseQ2OHg4EehV5v2vbD4.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 10:27:42', '2021-03-05 10:27:42', NULL),
(42, 100, 'Eradicating', '<p>Eradicating hunger, poverty and malnutrition</p>', 'primary-page-section-cards/April2021/oCzfHTTENftB30EwfKZ0.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:38:51', '2021-04-15 12:31:28', NULL),
(43, 100, 'Education', '<p>Promoting education, including special education and employment enhancing vocation skills&nbsp;</p>', 'primary-page-section-cards/April2021/WwahwLSnnmmM1EnrCZOy.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:44:04', '2021-04-15 12:19:28', NULL),
(44, 100, 'Reducing Inequalities', '<p>Promoting gender equality, empowering women, setting up homes and hostels for women and orphans; setting up old age homes etc.&nbsp;</p>', 'primary-page-section-cards/April2021/HY9lJ8ffFEeS7VhjKkdz.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:46:38', '2021-04-15 12:20:04', NULL),
(45, 100, 'Environment', '<p>Ensuring environmental sustainability, ecological balance, protection of flora and fauna, animal welfare, agroforestry, conservation of natural resources etc.&nbsp;</p>', 'primary-page-section-cards/April2021/LpZpFaG1dOf7FCmxYxAE.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:47:26', '2021-04-15 12:20:31', NULL),
(46, 100, 'Protection', '<p>Protection of national heritage, art and culture :- including restoration of buildings and sites of historical importance and works of art; setting up public libraries; promotion and development of traditional art and handicrafts etc.&nbsp;</p>', 'primary-page-section-cards/April2021/ELcFsf9rCHTBB58km85z.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:52:51', '2021-04-15 12:21:54', NULL),
(47, 100, 'Benefit', '<p>Measures for the benefit of armed forces: veterans, war widows and their dependents</p>', 'primary-page-section-cards/April2021/3mK0ZPJDFeTEA4BNsyEZ.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:57:25', '2021-04-15 12:22:18', NULL),
(48, 100, 'Training', '<p>Training to promote rural sports, nationally recognised sports, paralympic sports and olympic sports</p>', 'primary-page-section-cards/April2021/GgC07p89cE4oFspCHrwJ.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 17:59:29', '2021-04-15 12:22:53', NULL),
(49, 100, 'Contribution', '<p>Contribution to the prime minister\'s national relief fund: or Prime Minister&rsquo;s Citizen Assistance and Relief in Emergency Situations Fund (PM CARES Fund)] or any other fund set up by the central govt.&nbsp;&nbsp;</p>', 'primary-page-section-cards/April2021/W3E6gpseykQoZHEcbo6g.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 18:01:33', '2021-04-15 12:23:19', NULL),
(50, 100, 'Research', '<p>Contribution to incubators or research and development projects</p>', 'primary-page-section-cards/April2021/wPjXmSYaWG3VlefsfbLk.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 18:03:33', '2021-04-15 12:23:49', NULL),
(51, 100, 'Development', '<p>Rural development projects</p>', 'primary-page-section-cards/April2021/n3PrfaN83Kd6QoWRUMCH.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 18:05:19', '2021-04-15 12:24:12', NULL),
(52, 100, 'Slum', '<p>Slum area development</p>', 'primary-page-section-cards/April2021/SsLFVsLQQlf38QGfRP0F.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 18:06:33', '2021-04-15 12:24:40', NULL),
(53, 100, 'Disaster management', '<p>This includes relief, rehabilitation and reconstruction activities</p>', 'primary-page-section-cards/April2021/lt53Mwg2Nri9ytgKG75e.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-05 18:08:16', '2021-04-15 12:25:05', NULL),
(54, 104, 'Project Management', '<p>Right from the selection of the cause to the design and delivery of the project, we help institutions and foundations fulfil their philanthropic vision...</p>', 'primary-page-section-cards/April2021/Cx6ZQQHaaTKR2x2Uaqa5.png', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management', 'Learn More', 'BUTTON', 2, 1, 'A', '2021-03-06 07:34:39', '2021-04-15 16:54:50', NULL),
(55, 104, 'Financial and Accounts Management', '<p>We make sure that your philanthropic investment is utilised efficiently and effectively.&nbsp;  </p>', 'primary-page-section-cards/April2021/IRaYYpTmBfaGBopkab1n.png', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/Financial-And-Accounts-Management', 'Learn More', 'BUTTON', 2, 1, 'A', '2021-03-06 08:08:56', '2021-04-15 16:59:48', NULL),
(56, 104, 'Donor Advised Funds', '<p>We understand your philanthropic goals and visions and design the programme accordingly.</p>', 'primary-page-section-cards/April2021/qJ1HUwKyedGeVIjEgVZZ.png', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/donor-advised-fund', 'Learn More', 'BUTTON', 2, 1, 'A', '2021-03-06 08:10:24', '2021-04-15 17:00:14', NULL),
(57, 104, 'Campaigns and Appeals', '<p>We have a proven track record of running successful campaigns for our donors.&nbsp;</p>', 'primary-page-section-cards/April2021/XIQ1A3uhIqtqKQLX1GkA.png', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/corporate-Campaigns', 'Learn More', 'BUTTON', 2, 1, 'A', '2021-03-06 08:12:04', '2021-04-15 17:00:37', NULL),
(58, 105, 'Media Partnerships', '<p>We have partnered with reputed media houses to tell stories of change creatively.</p>', 'primary-page-section-cards/April2021/syAVSXbYkw3DP45h9aZb.jpg', 'https://cafindia.jaisalmercity.com/events/media-partnerships', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-03-06 09:57:35', '2021-04-15 18:19:51', NULL),
(59, 105, 'External Events', '<p>We interact with multiple stakeholders in various forums across India and have emerged as a thought leader in the space of philanthropy.</p>', 'primary-page-section-cards/April2021/SREPqkvxojAALAfKxQR1.jpg', 'https://cafindia.jaisalmercity.com/events/External-Participations', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-06 09:59:19', '2021-04-15 18:22:10', NULL),
(60, 105, 'In-house forums', '<p>Join the invigorating discussions on the developmental paradigms in India through our in-house forums.&nbsp;</p>', 'primary-page-section-cards/April2021/6A9tfJAVDCWTN6WAWyxJ.jpg', 'https://cafindia.jaisalmercity.com/events/In-House-Forums', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-03-06 10:01:02', '2021-04-15 18:24:48', NULL),
(61, 83, 'Capacity Building', '<p>We strive to make NGOs thrive. Every year we conduct a series of workshops called CONNECT.</p>', 'primary-page-section-cards/April2021/B37EeKnJo53ZYc4ayLCu.jpg', 'https://cafindia.jaisalmercity.com/for-ngos/capacity-building', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-24 04:27:00', '2021-04-15 13:42:54', NULL),
(62, 95, 'FLEXIBLE', '<p>Employee contribute to protects that they wish to support.</p>\r\n<p>Chhose preferred NGOs working across various causes.</p>\r\n<p>Support NGOs in maximizing impact through theirr ongoing projects.</p>', 'primary-page-section-cards/March2021/52stLDVRNzTQzyWxjTuM.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-24 08:31:38', '2021-03-24 16:25:19', NULL),
(63, 95, 'STRUCTURED', '<p>Employees contribute to protects aligned to the organization`s social responsibilty vision.</p>\r\n<p>Contribute to NGOs chosen by the organization.</p>\r\n<p>Clear and predefined project deliverables, outcomes and impact strategy.</p>', 'primary-page-section-cards/March2021/CgSA8onGzpo0tzK4TRvh.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-24 08:33:45', '2021-03-24 08:33:45', NULL),
(64, 95, 'EMPLOYEE ASSISTANCE FUNDS', '<p>Help provide support to affected employees and families.</p>\r\n<p>Bespoke online donation page for contribution.</p>\r\n<p>Need assessment &amp; beneficiary validation.</p>', 'primary-page-section-cards/March2021/XHEotBhdv188L6bE7TSc.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-24 08:35:00', '2021-03-24 08:35:00', NULL),
(65, 95, 'HUMANTARIAN RESPONSE', '<p>Support disaster affected familities and communities.</p>\r\n<p>Bespoke online donation page for appeals &amp; contribution.</p>\r\n<p>Managing the funds ensuring compliance.</p>', 'primary-page-section-cards/March2021/EhRguNMfdiAbv9P0yZms.png', NULL, NULL, 'BUTTON', 2, 1, 'A', '2021-03-24 08:35:50', '2021-03-24 08:35:50', NULL),
(66, 32, 'Short Term Event Based', '<p style=\"text-align: center;\"><strong>Helping Hands</strong></p>\r\n<p style=\"text-align: center;\">Short term practical activites which require not so much the skills, but time &amp; effort of volunteers.</p>\r\n<p style=\"text-align: center;\">E.g.: Paint a school wall, Build community toilets&nbsp;</p>', 'primary-page-section-cards/March2021/aPi34qm6mOG2oVC7wJNN.png', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-03-26 12:39:38', '2021-03-26 12:39:38', NULL),
(67, 32, 'Long Term Skill Based', '<p style=\"text-align: center;\"><strong>Enabler&nbsp;</strong></p>\r\n<p style=\"text-align: center;\">Requires volunteers to contribute time and professional, personal skills over a longer duration.</p>\r\n<p style=\"text-align: center;\">E.g.: Help develop social media strategy</p>', 'primary-page-section-cards/March2021/Ff8UDRS4MYvKZ5rrYsu7.png', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-03-26 12:40:20', '2021-03-26 12:40:20', NULL),
(68, 32, 'Pro-Bond Mentoring', '<p style=\"text-align: center;\"><strong>Change Makers</strong></p>\r\n<p style=\"text-align: center;\">Company offers professional services at no cost. Take up social projects &amp; allocate interested employees.</p>\r\n<p style=\"text-align: center;\">E.g.: A law firm offers legal advice &amp; services&nbsp;</p>', 'primary-page-section-cards/March2021/KqcaOA7z5OCVTNIbt32h.png', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-03-26 12:41:18', '2021-03-26 12:41:18', NULL),
(69, 111, 'Give Now', '<p>We run fundraising campaigns supporting a cross-section of causes</p>', 'primary-page-section-cards/March2021/56dnZhXwGmaywkR1xqAY.jpg', 'https://cafindia.jaisalmercity.com/campaign/details/help-underprivileged-children-enjoy-fun-activities', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 06:38:51', '2021-03-30 06:38:51', NULL),
(70, 111, 'Volunteering', '<p>Our volunteering programmes are designed to allow employees and students contribute to a cause more significantly -- be it raising funds or taking out time to teach an underprivileged student</p>', 'primary-page-section-cards/March2021/ydNxiZewjLPfRbdbMeyp.jpg', 'https://cafindia.jaisalmercity.com/For-Individuals/volunteering', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 06:40:55', '2021-03-30 06:40:55', NULL),
(71, 111, 'Diaspora', '<p>Donate to a cause close to your heart even if you are away from home. If you are member of the Indian diaspora, learn how you can contribute to India&rsquo;s development story</p>', NULL, 'https://cafindia.jaisalmercity.com/For-Individuals/Diaspora', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 06:47:00', '2021-03-30 06:47:00', NULL),
(72, 111, 'Leave a Lasting Legacy', '<p>Create a better world for your future generations. Create your own wishlist. Write to us</p>', NULL, 'https://cafindia.jaisalmercity.com/For-Individuals/Leave-A-Aasting-Legacy', NULL, 'BUTTON', 1, 1, 'A', '2021-03-30 06:50:03', '2021-03-30 06:50:03', NULL),
(73, 111, 'Know More about Giving', '<p>Read our blogs and resources on giving in India and the world</p>', NULL, NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-03-30 06:52:13', '2021-03-30 06:52:13', NULL),
(74, 112, 'Give Now', '<p>We run fundraising campaigns supporting a cross-section of causes.</p>', 'primary-page-section-cards/April2021/0kte8PoEQue8GlooK3nH.jpg', 'https://cafindia.jaisalmercity.com/campaign/details/help-underprivileged-children-enjoy-fun-activities', 'Show More', 'BUTTON', 1, 1, 'A', '2021-03-30 06:56:31', '2021-04-15 13:06:02', NULL),
(75, 112, 'Volunteering', '<p>Our volunteering programmes are designed to allow employees and students contribute to a cause more significantly -- be it raising funds or taking out time to teach an underprivileged student</p>', 'primary-page-section-cards/April2021/XlhUKlcrmFJerJwjofIm.jpg', 'https://cafindia.jaisalmercity.com/For-Individuals/volunteering', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 07:46:14', '2021-04-15 13:09:27', NULL),
(76, 112, 'Diaspora', '<p>Donate to a cause close to your heart even if you are away from home. If you are member of the Indian diaspora, learn how you can contribute to India&rsquo;s development story</p>', 'primary-page-section-cards/April2021/ahOaquJChlP3aZ6qiv6j.jpg', 'https://cafindia.jaisalmercity.com/For-Individuals/Diaspora', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 07:47:33', '2021-04-15 13:09:53', NULL),
(77, 112, 'Leave a Lasting Legacy', '<p>Create a better world for your future generations. Create your own wishlist. Write to us</p>', 'primary-page-section-cards/April2021/zk3aAreQVmxP7rZzolwb.jpg', 'https://cafindia.jaisalmercity.com/For-Individuals/Leave-A-Aasting-Legacy', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 07:48:03', '2021-04-15 13:10:21', NULL),
(78, 112, 'Know More about Giving', '<p>Read our blogs and resources on giving in India and the world</p>', 'primary-page-section-cards/April2021/wjDqdRH5l1KcLiMBJ6K6.jpg', 'https://cafindia.jaisalmercity.com/For-Individuals/know-more-about-giving', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-30 07:48:37', '2021-04-15 13:11:30', NULL),
(80, 117, 'India’s philanthropic Heritage', '<p>Meenakshi Batra, CEO of CAF India writes about India&rsquo;s philanthropic legacy in The Wire.</p>\r\n<p>&nbsp;</p>', 'primary-page-section-cards/April2021/exSK3NgkiAtpIAuIz1E6.jpg', 'http://cafindia.jaisalmercity.com/contact-us', 'Click here to read', 'BUTTON', 1, 1, 'A', '2021-03-31 07:29:03', '2021-04-15 13:28:41', NULL),
(81, 117, 'Benefits of Giving', '<p>Your generosity can help you avail tax benefits.</p>\r\n<p>&nbsp;</p>', 'primary-page-section-cards/April2021/NtHA33iEEvJjVA0JvEcs.jpg', 'https://cafindia.jaisalmercity.com/media/blogs', 'Learn more', 'BUTTON', 1, 1, 'A', '2021-03-31 07:30:55', '2021-04-15 13:29:01', NULL),
(82, 118, 'World Giving Index', '<p>World Giving Index</p>', 'primary-page-section-cards/April2021/Xx0lTxQFE90oSKJLckZD.jpg', 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-03-31 07:34:58', '2021-04-15 13:31:58', NULL),
(83, 118, 'India’s fundraising landscape', '<p>India&rsquo;s fundraising landscape</p>', 'primary-page-section-cards/April2021/85CRBftMkAdpTTm3flLj.jpg', 'http://cafindia.jaisalmercity.com/contact-us', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-03-31 07:35:38', '2021-04-15 13:32:33', NULL),
(84, 118, 'India Giving Report', '<p>India Giving Report</p>', 'primary-page-section-cards/April2021/i9jHiM5h9ufXU9afuv0Y.jpg', 'https://cafindia.jaisalmercity.com/who-we-are/Annual-Reports-And-Financials', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-03-31 07:36:03', '2021-04-15 13:33:00', NULL),
(85, 83, 'NGO Validation', '<p>Our NGO due diligence is one of the most robust processes that have helped NGOs achieve greater credibility.</p>', 'primary-page-section-cards/April2021/lKmueRk6hdb0rTLRdvrm.jpg', 'https://cafindia.jaisalmercity.com/for-ngos/ngo-validation', 'Read More', 'BUTTON', 1, 1, 'A', '2021-03-31 12:50:58', '2021-04-15 13:43:32', NULL),
(86, 83, 'Register With us', '<p>We have over 5,000 NGOs registered with us on our NGO registration portal. Register with us if you are an NGO and get noticed.</p>', 'primary-page-section-cards/April2021/vpIhj89NXMLNH1jb6G1e.jpg', 'https://cafindia.jaisalmercity.com/for-ngos/Register-With-Us', 'Register Now', 'BUTTON', 1, 1, 'A', '2021-03-31 12:53:42', '2021-04-15 13:43:55', NULL),
(87, 83, 'Laws for NGOs', '<p>Check out our resource hub to learn more about laws that govern NGOs in India.</p>', 'primary-page-section-cards/April2021/8peMHs9O9HkOJ88UDUgv.jpg', 'https://cafindia.jaisalmercity.com/for-ngos/Laws-For-NGOs', 'Click here', 'BUTTON', 1, 1, 'A', '2021-03-31 12:56:01', '2021-04-15 13:44:15', NULL),
(88, 83, 'Seek Volunteers', '<p>We have a&nbsp; network of enthusiastic volunteers, who are ready to devote their time for a cause close to their heart.</p>', 'primary-page-section-cards/April2021/ttokTjUQZPb9HzUOeaaQ.jpg', 'https://cafindia.jaisalmercity.com/for-companies/volunteering', 'Learn more', 'BUTTON', 1, 1, 'A', '2021-03-31 12:57:36', '2021-04-15 13:44:37', NULL),
(89, 119, 'Thematic intervention development', '<p>We are cause universal and provide technical advisory to help identify social causes and holistic social investment solutions suitable to the business need and operations.</p>', 'primary-page-section-cards/April2021/gkQPq3jiGgrHuyzUVzxK.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/Thematic-Intervention', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:35:09', '2021-04-15 17:27:24', NULL),
(90, 119, 'Partner Selection and Due Diligence', '<p>Through CAF India&rsquo;s due diligence process, we assess the credibility of NGOs and their ability to deliver and sustain a programme on the ground</p>', 'primary-page-section-cards/April2021/3LhcJSUid1KxnLZ58wwn.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/NGo-Partner-Selection-And-Due-Diligence', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:37:18', '2021-04-15 17:39:57', NULL),
(91, 119, 'Programme design delivery and management', '<p>We ensure that program design reflects local developmental needs and creates sustainable shared value for communities, turning your philanthropic vision into a reality.</p>', 'primary-page-section-cards/April2021/PJgmZlffoMpCt8g0WH9y.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/programme-design-delivery-and-management', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:37:44', '2021-04-15 17:41:14', NULL),
(92, 119, 'Capacity Building', '<p>We strengthen the overall organizational and programmatic practices of NGOs through capacity building interventions apart from conducting robust NGO assessments.</p>', 'primary-page-section-cards/April2021/j2byhJfT2QzhTY7rdsXm.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/Capacity%20Building', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:38:15', '2021-04-15 17:31:13', NULL),
(93, 119, 'Communication and Engagement', '<p>We provide comprehensive communication advisory for a lasting social impact. Our approach ensures maximum visibility for our partner&rsquo;s programmes/projects.</p>', 'primary-page-section-cards/April2021/B9UYKHqrSczvGCdacgty.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/communication%20&%20engagement', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:38:36', '2021-04-15 17:37:01', NULL),
(94, 119, 'Programme Evaluation and Reporting', '<p>We provide technical support in developing Monitoring and Evaluation framework of development projects for companies and institutions.</p>', 'primary-page-section-cards/April2021/quyv28Hhy1LmwTHbm4iO.jpg', 'https://cafindia.jaisalmercity.com/for-institutions-and-foundations/project-management/Programme%20Evaluation%20&%20Reporting', 'Learn More', 'BUTTON', 1, 1, 'A', '2021-04-01 10:39:13', '2021-04-15 17:35:40', NULL),
(97, 120, 'NDTV Dettol Swachh Banega India', '<p>We partnered with NDTV and Reckitt Benckiser (Dettol) to contribute to our country&rsquo;s national mission of creating a cleaner healthier India &ndash; Swachh Bharat. In Jan 2015 the Dettol NDTV Banega Swachh India initiative kicked off a corporate volunteering programme where 1.13 crore hours of volunteering time was pledged to clean India.</p>', 'primary-page-section-cards/April2021/VUmFsIaUqudbF2QYvrjt.jpg', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-04-02 06:38:35', '2021-04-15 18:15:24', NULL),
(98, 120, 'Behtar India with DHFL Pramerica and NDTV', '<p>The Behtar India Campaign was launched in 2016 to build a better future for India. The essence of the campaign was to mobilize students and ordinary citizens to join a nationwide movement that focuses on health, hygiene and environment.</p>\r\n<p>The Behtar Swasthya (health Stage of the campaign aimed to fight the scourge of mosquito borne diseases Students from all over the country drove the campaign to become crusaders for the cause. School authorities and students crowd funded the campaign and the funds raised were used to provide mosquito protection kits to underprivileged students. The campaign also called upon corporates to join the movement.</p>', 'primary-page-section-cards/April2021/RjZMVEFZSVF5MngYnnO2.jpg', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-04-02 06:40:35', '2021-04-15 18:13:18', NULL),
(99, 120, 'UN Habitat Coca Cola NDTV Support My School Campaign', '<p><strong>UN Habitat Coca Cola NDTV Support My School was launched in 2010 and continued for three years.</strong> This campaign was supported by Coca-Cola, UN-Habitat, Pearson Foundation, Tata Teleservices, HCCBPL, Global Water Challenge (Merck), and H20 for Life. The campaign was designed to intervene on the poor conditions of schools in India, including, lack of water, poor sanitation (washroom facilities) and hygiene, ill-equipped sports infrastructure and landscaping. Lack of basic amenities like toilets, access to water and basic Infrastructure, which create an unwelcoming and non-conducive environment in schools, leading to absenteeism and high dropout rates.</p>', 'primary-page-section-cards/April2021/ETAo4vCwRWWBA2hZ1Q9n.jpg', NULL, NULL, 'BUTTON', 1, 1, 'A', '2021-04-02 06:45:46', '2021-04-02 06:49:23', NULL),
(100, 123, 'Give 25% more to charity – at no extra cost', '<p>Manage your giving through one online account and with Gift Aid added to your balance, you&rsquo;ll have more to give to your favourite causes.</p>', 'primary-page-section-cards/April2021/bBfFnhj0uk4NVGWDOU60.jpg', 'https://cafindia.jaisalmercity.com/give-now', 'Find out more about CAF Charity Account', 'HYPERLINK', 1, 1, 'A', '2021-04-06 10:13:07', '2021-04-06 10:14:59', NULL),
(101, 123, 'Give 25% more to charity – at no extra cost', '<p>Manage your giving through one online account and with Gift Aid added to your balance, you&rsquo;ll have more to give to your favourite causes.</p>', 'primary-page-section-cards/April2021/9ej8696LthkoNoO8n1EE.png', 'https://cafindia.jaisalmercity.com/give-now', 'Find out more about CAF Charity Account', 'HYPERLINK', 1, 1, 'A', '2021-04-06 10:14:28', '2021-04-06 10:15:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `primary_sub_pages`
--

CREATE TABLE `primary_sub_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `primary_page_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_type` int(11) DEFAULT NULL,
  `image_icon` int(11) NOT NULL DEFAULT '1',
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_description1` text COLLATE utf8mb4_unicode_ci,
  `card_link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_link_title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_description2` text COLLATE utf8mb4_unicode_ci,
  `card_link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_link_title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_description3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_link3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_link_title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `order` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_sub_pages`
--

INSERT INTO `primary_sub_pages` (`id`, `primary_page_id`, `title`, `sub_title`, `link`, `link_text`, `description`, `image`, `layout_type`, `image_icon`, `video_link`, `card_image1`, `card_title1`, `card_description1`, `card_link1`, `card_link_title1`, `card_image2`, `card_title2`, `card_description2`, `card_link2`, `card_link_title2`, `card_image3`, `card_title3`, `card_description3`, `card_link3`, `card_link_title3`, `status`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'YOUR GIVING OPTIONS', NULL, NULL, NULL, 'A whopping £125 million was donated to charity by our donors last year. You can be part of something big too. Take a look at the ways we can help you manage your giving.', NULL, 2, 1, NULL, 'primary-sub-pages\\November2020\\pLYFOdLs52K5i9dWxj3Y.jpg', 'Give 25% more to charity – at no extra cost', 'Manage your giving through one online account and with Gift Aid added to your balance, you’ll have more to give to your favourite causes.', 'http://cafindia.jaisalmercity.com/', 'Find out more about CAF Charity Account', 'primary-sub-pages\\November2020\\eziiP461NluYxUqunCa1.png', 'Give 25% more to charity – at no extra cost', 'Manage your giving through one online account and with Gift Aid added to your balance, you’ll have more to give to your favourite causes.', 'http://cafindia.jaisalmercity.com/', 'Find out more about CAF Charity Account', 'primary-sub-pages\\November2020\\U1Bhtcdwti00ozqy47Ic.jpg', 'Give 25% more to charity – at no extra cost', 'Manage your giving through one online account and with Gift Aid added to your balance, you’ll have more to give to your favourite causes.', 'http://cafindia.jaisalmercity.com', 'Find out more about CAF Charity Account', 'A', 1, '2020-11-29 07:29:05', '2020-11-29 07:29:05', NULL),
(4, 1, 'DONATE USING OUR CHARITY SEARCH', NULL, NULL, NULL, 'You’ll be able to find a cause and donate straight away.\r\n\r\nSo if you need more time to decide which account is best for you, but want to make a donation now – you can.', NULL, 1, 1, 'https://www.youtube.com/embed/RQxHopK7st8', NULL, NULL, NULL, 'http://cafindia.jaisalmercity.com/', 'I want to Donate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 1, '2020-11-29 07:36:19', '2020-11-29 07:36:19', NULL),
(5, 1, 'DONATING THROUGH CAF', NULL, NULL, NULL, 'We believe donating to charity should be simple and stress-free. Our tax-effective products make it easy for you to support your favourite causes – here’s why.', NULL, 2, 2, NULL, 'primary-sub-pages\\November2020\\PCSumeHeDtpPmoDpRZtw.png', 'Security', 'Donate anonymously and protect your privacy. That means you’ll only hear from the charities you want to.', NULL, NULL, 'primary-sub-pages\\November2020\\8t9SD6W0a9npfzhHvDcz.png', 'Overseas donations', 'Donate anonymously and protect your privacy. That means you’ll only hear from the charities you want to.', NULL, NULL, 'primary-sub-pages\\November2020\\vBeV9hZUT8MhdoELV3sp.png', 'Online sponsorship requests', 'Donate anonymously and protect your privacy. That means you’ll only hear from the charities you want to.', NULL, NULL, 'A', 1, '2020-11-29 08:02:11', '2020-11-29 08:02:11', NULL),
(6, 1, 'All your giving in one place', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 'primary-sub-pages\\November2020\\SMdbuQuBm49ba13izVFb.jpg', 'GIVE CHARITIES A BRIGHTER FUTURE', 'Set aside a little when you have it to make a difference when you need to.', 'http://cafindia.jaisalmercity.com/', 'Open Yours Today', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 1, '2020-11-29 08:06:21', '2020-11-29 08:06:21', NULL),
(7, 1, 'HOT TOPICS:', NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, 'What is Gift Aid?', 'What is Gift Aid?\r\nGift Aid increases the value of your charity donations by 25%, because the charity can reclaim the basic rate of tax on your gift – at no extra cost to you.', 'http://cafindia.jaisalmercity.com/', 'Grow your giving with Gift Aid', NULL, 'Why do people give?', 'Have you ever wondered why people make charitable donations? We’ve got the inside info on why people give.', 'http://cafindia.jaisalmercity.com/', 'Grow your giving with Gift Aid', NULL, 'How to use social media to support charities', 'It’s really easy to get involved with your favourite causes via social media.', 'http://cafindia.jaisalmercity.com', 'Grow your giving with Gift Aid', 'A', 1, '2020-11-29 08:15:26', '2020-11-29 08:44:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `theme_type`, `alignment_type`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'B', 'B', 'CAF Charity Landscape 2020', '<p><span style=\"font-family: \'Open Sans\', Arial, Helvetica, sans-serif; font-size: 16px;\">Read the latest Charity Landscape Report now</span></p>', 'publications/March2021/vNVX3uCp7JkYdBtNFraG.jpg', 'https://www.cafonline.org/docs/default-source/about-us-global-alliance/the-global-response-to-the-covid-19-pandemic-caf-global-alliance.pdf', NULL, 'BUTTON', 0, 'A', '2021-03-18 19:37:00', '2021-03-19 18:28:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resource_management`
--

CREATE TABLE `resource_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_management`
--

INSERT INTO `resource_management` (`id`, `title`, `description`, `image`, `video_url`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`, `document`) VALUES
(2, 'dasdsdasds', '<p>dsdd</p>', NULL, NULL, NULL, NULL, 'BUTTON', 1, 'A', '2021-01-18 08:08:45', '2021-01-18 08:08:45', NULL, '[]'),
(3, 'dasdsdasds', '<p>ssadsadsad</p>', 'resource-management/January2021/WOXuO85yKp2wnmlcKEE4.jpg', 'http://cafindia.jaisalmercity.com/', 'http://cafindia.jaisalmercity.com/', 'http://cafindia.jaisalmercity.com/', 'BUTTON', 1, 'A', '2021-01-18 10:11:03', '2021-01-18 10:11:03', NULL, '[{\"download_link\":\"resource-management\\/January2021\\/hcQQq2BA5yKlSsKOpyWe.jpg\",\"original_name\":\"Makar  Shankranti.jpg\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `right_side_banners`
--

CREATE TABLE `right_side_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `right_side_banners`
--

INSERT INTO `right_side_banners` (`id`, `title`, `sub_title`, `link`, `link_text`, `description`, `order`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Two Decades of', 'CAF India', 'https://www.cafindia.org/terms-conditions', 'Click Here To Read More', NULL, 1, 'right-side-banners/January2021/sOWOog0rFVNem3cf580e.jpg', 'A', '2020-10-25 01:46:00', '2021-01-27 18:10:21', NULL),
(3, NULL, 'CAF India Resource Hub', 'https://www.cafindia.org/terms-conditions', 'Click Here To Know More', NULL, 2, 'right-side-banners/January2021/2fGRBDQZoXhtSXh65LTH.jpg', 'A', '2020-10-25 12:13:00', '2021-03-17 04:51:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(2, 'user', 'Normal User', '2020-10-19 04:19:24', '2020-10-19 04:19:24'),
(3, 'Developer', 'This is for Developer accessing some functionality', '2020-11-07 01:46:22', '2020-11-07 01:46:22'),
(7, 'Finance Team', 'Finance Team', '2021-02-08 09:51:30', '2021-02-08 09:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0hhI98zFL6JwPMUcrK3pDXb41norz8CZDBpudCLp', NULL, '207.46.13.184', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1d3NHVkOHhGNnZ3dEZJTFlyWUpjVnlUTFN5NEcxMzBZN0tDVjdNTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE3OiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Jsb2cvZGV0YWlscy9jYWYtaW5kaWEtcy1jb3ZpZC1yZXNwb25zZS1jYW1wYWlnbi13ZS1kaWQtaXQtYnV0LXdlLWhhdmUtbWlsZXMtdG8tZ28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634246880),
('1ZKGjTF0yjxI3v6Z9Rd7dHlLdJcxZrgoxECC5RZq', NULL, '66.249.79.18', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjBJSmZGTzJoSldOMERVN3pVVVhGdHJVS0pCbk5IcmY1aUJJZ3lOcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLWNvbXBhbmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634381814),
('2NF3iofh4zvuvP808Dl7URiIrRoSROPRAga9ndcP', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjVIZG51UGFISjAxaG5iaUphNGhZc0V3cUlob0czMDlQMmRLWUhtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vd2hhdC13ZS1kby90aGVtYXRpYy1pbXBhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634348842),
('2sfOyu53OGd8MzqQraxIZePfd3wlLxVRLhQwoKDl', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3JpZ1dWcjc3RzNiUnR2UXlxeG1TSExlODRaTU11RVFjNmNBTGRBcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634592797),
('8K5RKp1TKNtolip3c6OVOU0rY6XzQdZzFoXNGFOk', NULL, '157.55.39.22', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0xBZjc5QjNsaUxJSTRnclFWcFNXYUpyS0ZuNkhlUG1RM2NoTVVwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI2OiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Zvci1pbnN0aXR1dGlvbnMtYW5kLWZvdW5kYXRpb25zL3Byb2plY3QtbWFuYWdlbWVudC9OR28tUGFydG5lci1TZWxlY3Rpb24tQW5kLUR1ZS1EaWxpZ2VuY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634376658),
('a58T8PawBMnsdzaQX0WZtcTLiiFOaLR1EtqwcGUl', NULL, '157.55.39.117', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid09kUGVNSVdYemgyakE1aGhZb2VjRGdxMWZMblRBY0w3V2tGY1hLUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzg6Imh0dHBzOi8vd3d3LmNhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL3doYXQtd2UtZG8vdGhlbWF0aWMtaW1wYWN0cy9lbnZpcm9ubWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634237297),
('A9vnSn6wMVy2pm0WKKtsoRhd1gMDKR8ulaBZx4cL', NULL, '207.46.13.94', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmFoTEJFUXJhalpHbUpaOW9LWHhCSUxqMlpEaEJjMUcyVnR2QUZVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODM6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vYWJvdXQtdXMvcmVzZWFyY2gvY2FmLWludGVybmF0aW9uYWwtcmVzZWFyY2gtaHViIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634220489),
('B2ATNa1zVUtwykWVf4xHtoVmA4fgZWvaQ5xooywc', NULL, '157.55.39.22', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2gwcmdPY2ZhOVRzdnhNb0wxemM5TnpSNmJMdjB1UHBHdGpMbnBlQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vd2hvLXdlLWFyZS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634414069),
('BiEkoUCWqyTravQrhgRqnuzQKSjjQmgyM6XKQmli', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDl1VWZtU2JIbjZnZlZyb3VRUDJ6U0UwZ1I5c293SXBqVTB2MkR6QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634559303),
('Cf90VnhErEGAo1QTvyuHKDSLvuPAuGtUMv6tnLbc', NULL, '207.46.13.46', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFdib3JRcW4yS0hwVmc3bGtCSFJTbjQ1MG1KYzNmVmFWSWpXNXNrVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLW5nb3MvTGF3cy1Gb3ItTkdPcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634321852),
('d5uIHKlfassA6rYSzWgzOijI3R1mZ7OFhce1Svol', NULL, '157.55.39.73', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1F1ZlAzVlVDcFlqRjRLeXJsTkk4SlptbGJvcFZpTWVlbjZlelVucyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2NvbnRlbnQtZGV0YWlscy9zdG9yaWVzLW9mLWhvcGUvYWJoaXNoZWstc3RyaWtlcy10aGUtcmlnaHQtY2hvcmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634325495),
('Da8wGM0lE3LkYTz3vlKEHN1IqbVHnHsbRJqOwdQc', NULL, '66.249.79.16', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0VGdVV2UVpjc3ZjZmc5QThQSWxuSGZwczI2bDJHWlpxaUthelQzciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE3OiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Zvci1pbnN0aXR1dGlvbnMtYW5kLWZvdW5kYXRpb25zL3Byb2plY3QtbWFuYWdlbWVudC9jb21tdW5pY2F0aW9uJTIwJiUyMGVuZ2FnZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634384256),
('dPg3hAPkJ7uQDXd0AO8pxkTflBWON4alB6G5vTNx', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEpqVnFsbW9lRlJMQlJRb3lYSGlhQ25hOEM1WFM0SENOWEdoWTNPaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634477208),
('F3RGueyDkv5xuDK1aWctcYdhtUHfPhczQpygfnAs', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVUwUWNoTE9uQndOcUc2RVRJRnYzRjBFVzFaRkNOR2Q0U0ZXYWxOMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634435701),
('FQul2XxQvmVeX01sYxoUQqJqAWSXaPp8NF7ti6Pe', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclBDYUV5YXVITmpKSkEzUkFsYnZna3hkdWM5eFpuZkJOZDdaYWphSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634626339),
('gf9iRD2g9tNInox8cxAV7z2abnwCuSsTwiLAZQ8z', NULL, '157.55.39.73', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUxOWXhEaHQxY2NlTExkR3hTWlA3RWt4RmpTRUlmQlNLOWd0M29QbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLWluc3RpdHV0aW9ucy1hbmQtZm91bmRhdGlvbnMvZG9ub3ItYWR2aXNlZC1mdW5kIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634216274),
('GP3RpenEOxPUtlMSklUF8GtuUJ9pJKrFmoJf1aep', NULL, '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW11VWhyS1VJeTdkaEpONXNZcXJEQkFYUlFVRnBQQUx5SGlLMWszTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vRm9yLUluZGl2aWR1YWxzL2tub3ctbW9yZS1hYm91dC1naXZpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634318413),
('hDa3gc1XrvVRGGMSVhUI7mmiv0JCgzcc1LCB37Ld', NULL, '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEFXU2V0YWlUczc4VFJjYlBQTUU3ZGhGVnAyYk9FNlh4eUhuYUE0eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI1OiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Zvci1pbnN0aXR1dGlvbnMtYW5kLWZvdW5kYXRpb25zL3Byb2plY3QtbWFuYWdlbWVudC9Qcm9ncmFtbWUlMjBFdmFsdWF0aW9uJTIwJiUyMFJlcG9ydGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634301670),
('iFqhwN0XItNm9SdUpaNEGuOYgVnIyirB83kUFyE7', NULL, '157.55.39.117', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2k0cmRFVTdJN3BBcjdqUXY2eFA4bEhwdDVCWWIxNnhmNUlpQmlZQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vd2hhdC13ZS1kby90aGVtYXRpYy1pbXBhY3RzL3dpbGRsaWZlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634436696),
('JgTzXRjOGujh3Nweub9abYPw6uIZBpAOW4L0pE4m', NULL, '157.55.39.117', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVJIQXFleU9SMnB5dlNyV0xtUXFXWnI5OWZYZXphTDhqdTM0eVdqSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vY29udGVudC1kZXRhaWxzL3N0b3JpZXMtb2YtaG9wZS9hYXJ0aS1zLWJhdHRsZS13aXRoLWxlcHJvc3kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634533412),
('JiyHRSW52T7J6VYkwOuK2XkHeOGeHntZw8jzJEzn', NULL, '207.46.13.184', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVZxak52amluRlozdXY3VGNUSGJ2YzE5aUhOR1VXeHJjOXoyejJHaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vd2hhdC13ZS1kby93aGF0LXdlLWRvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634589469),
('JxD9UlqqKy3SHsCytjDg0J5lUyhXRDZjM6sbqZvJ', NULL, '207.46.13.46', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjJkTGFhclFGMkMybUo1bGR3ckpKUnJ4dVdxclowZzR6cW5IVDV1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634261936),
('kjhY6MnzgxwMVdl9uq9M0lJxdUqscHB9pZBCxppG', 32, '203.81.240.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTjRBaFRiTjY3ZlVQUjFWR0VtVUFjZ0pnWVJLUEJuT3BJN0hQNllyZCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MzI7czoxMDoic2FtbF9ldmVudCI7TzozOToiQWFjb3Ryb25lb1xTYW1sMlxFdmVudHNcU2FtbDJMb2dpbkV2ZW50IjozOntzOjc6IgAqAHVzZXIiO086MjY6IkFhY290cm9uZW9cU2FtbDJcU2FtbDJVc2VyIjoxOntzOjc6IgAqAGF1dGgiO086MTk6Ik9uZUxvZ2luXFNhbWwyXEF1dGgiOjE5OntzOjMwOiIAT25lTG9naW5cU2FtbDJcQXV0aABfc2V0dGluZ3MiO086MjM6Ik9uZUxvZ2luXFNhbWwyXFNldHRpbmdzIjoxMjp7czozMToiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9wYXRocyI7YTo0OntzOjQ6ImJhc2UiO3M6NjU6Ii9ob21lL2phaXNhbG1lL3B1YmxpY19odG1sL2NhZmluZGlhLW5ldy92ZW5kb3Ivb25lbG9naW4vcGhwLXNhbWwvIjtzOjY6ImNvbmZpZyI7czo2NToiL2hvbWUvamFpc2FsbWUvcHVibGljX2h0bWwvY2FmaW5kaWEtbmV3L3ZlbmRvci9vbmVsb2dpbi9waHAtc2FtbC8iO3M6NDoiY2VydCI7czo3MToiL2hvbWUvamFpc2FsbWUvcHVibGljX2h0bWwvY2FmaW5kaWEtbmV3L3ZlbmRvci9vbmVsb2dpbi9waHAtc2FtbC9jZXJ0cy8iO3M6MzoibGliIjtzOjc1OiIvaG9tZS9qYWlzYWxtZS9wdWJsaWNfaHRtbC9jYWZpbmRpYS1uZXcvdmVuZG9yL29uZWxvZ2luL3BocC1zYW1sL3NyYy9TYW1sMi8iO31zOjMzOiIAT25lTG9naW5cU2FtbDJcU2V0dGluZ3MAX2Jhc2V1cmwiO047czozMjoiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9zdHJpY3QiO2I6MDtzOjMxOiIAT25lTG9naW5cU2FtbDJcU2V0dGluZ3MAX2RlYnVnIjtiOjE7czoyODoiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9zcCI7YTo2OntzOjEyOiJOYW1lSURGb3JtYXQiO3M6NTI6InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpuYW1laWQtZm9ybWF0OnBlcnNpc3RlbnQiO3M6ODoieDUwOWNlcnQiO3M6MDoiIjtzOjEwOiJwcml2YXRlS2V5IjtzOjA6IiI7czo4OiJlbnRpdHlJZCI7czo1MzoiaHR0cHM6Ly9jYWZpbmRpYS5qYWlzYWxtZXJjaXR5LmNvbS9zYW1sMi9hYWQvbWV0YWRhdGEiO3M6MjQ6ImFzc2VydGlvbkNvbnN1bWVyU2VydmljZSI7YToyOntzOjM6InVybCI7czo0ODoiaHR0cHM6Ly9jYWZpbmRpYS5qYWlzYWxtZXJjaXR5LmNvbS9zYW1sMi9hYWQvYWNzIjtzOjc6ImJpbmRpbmciO3M6NDY6InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpiaW5kaW5nczpIVFRQLVBPU1QiO31zOjE5OiJzaW5nbGVMb2dvdXRTZXJ2aWNlIjthOjI6e3M6MzoidXJsIjtzOjQ4OiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL3NhbWwyL2FhZC9zbHMiO3M6NzoiYmluZGluZyI7czo1MDoidXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmJpbmRpbmdzOkhUVFAtUmVkaXJlY3QiO319czoyOToiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9pZHAiO2E6Njp7czo4OiJlbnRpdHlJZCI7czo2MToiaHR0cHM6Ly9zdHMud2luZG93cy5uZXQvMmZiNWJhY2QtZmYyOC00ZGI5LWEzYzUtNmZiNWQ2YzM1YjJmLyI7czoxOToic2luZ2xlU2lnbk9uU2VydmljZSI7YToxOntzOjM6InVybCI7czo3NjoiaHR0cHM6Ly9sb2dpbi5taWNyb3NvZnRvbmxpbmUuY29tLzJmYjViYWNkLWZmMjgtNGRiOS1hM2M1LTZmYjVkNmMzNWIyZi9zYW1sMiI7fXM6MTk6InNpbmdsZUxvZ291dFNlcnZpY2UiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vbG9naW4ubWljcm9zb2Z0b25saW5lLmNvbS8yZmI1YmFjZC1mZjI4LTRkYjktYTNjNS02ZmI1ZDZjMzViMmYvc2FtbDIiO31zOjg6Ing1MDljZXJ0IjtzOjEwNzg6Ii0tLS0tQkVHSU4gQ0VSVElGSUNBVEUtLS0tLQpNSUlDOERDQ0FkaWdBd0lCQWdJUVllWElhTG9TS0pKQnZNeFdZeUJPWHpBTkJna3Foa2lHOXcwQkFRc0ZBREEwCk1USXdNQVlEVlFRREV5bE5hV055YjNOdlpuUWdRWHAxY21VZ1JtVmtaWEpoZEdWa0lGTlRUeUJEWlhKMGFXWnAKWTJGMFpUQWVGdzB5TVRBNE1EVXhNREE0TkRWYUZ3MHlOREE0TURVeE1EQTRORFZhTURReE1qQXdCZ05WQkFNVApLVTFwWTNKdmMyOW1kQ0JCZW5WeVpTQkdaV1JsY21GMFpXUWdVMU5QSUVObGNuUnBabWxqWVhSbE1JSUJJakFOCkJna3Foa2lHOXcwQkFRRUZBQU9DQVE4QU1JSUJDZ0tDQVFFQXhIZFUyRzl0cnRodm5EOEd0N2IxbkdXWDJpZE4KSWZUU1FDTFlCZERyVjVWaWU4WDJ4U0YwVFdsWVQ5NFNoR1dCenRZWDV6aUhRd28wOElLdTloSVJwMTlPU0ZCVQpNYi9SQjA0dHBvNk1NeWZ4Z0dqTTFUcWdpcjN2MHB5UGl3cUJCR0JTNFgwOEhCNVlwNHRPeEd1d0hKbFdGVHJZCmRtdjNNVWtOYWpFaFBQcUJ6TW5pN1IyOFR0T1VET0o4M2d6cFlkWVlOQi94ZmUvV1E2VEYwMTFEVFUrK29HTVAKV0F2MlFybjVvUzM2dEp2Yis4aGEvNUh0QjJrQzFycmhGUTA2TzlpSTVhWlRPL3k5MEJ1QnVVNTByMldwRVo5VQphKy9PTnBkZmhpcU80UVI2TEVzUDVMVmhZL3JsVlFTRlIrOWxKUngvRWVDNUlIakJsNlBUSGxIbklRSURBUUFCCk1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQlg3UUNFak1NZDBzQmdJem5WSlA2ZU03SlpwRU1rdTAzY1V4TTcKY0ZNajgzbnowemE4TjIxUXhhODFxbVhkd28zejJ5ZFRoeURwVTcvcDBROXJFNVNSOENCZ0VIRjJRa3BYNXVpdgpWVlJoZ1A2ZWl2SDh3MHdsZTdyR0ZQdzlnM2x4MllhZjJ0K1dHVHBoaUd5NDM1bG93N1ZDbENXTGpQWnZuajF6CnA5MjA3UmZDaEJOYTlTSXJERWxBQlowblZPMDhCRy9QZjdaQmVubEh4aWU0cURIZWhHWW9ZVlR1USsrTjVIbVMKVFhreXNwOGxJcGdpVHN5UmVXeVIvaldBYmpuQ2hycmlBdmZGak1zaHg3M2tUZXB4T2tzdjc3RlU4aFlMc0xWawpzZEU1MTNHUFVHazBVVmhpYzYxZE5nV2xVT1IzRm81QmFYNTRqOC91WGVnanRYekEKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQoiO3M6MTU6ImNlcnRGaW5nZXJwcmludCI7czowOiIiO3M6MjQ6ImNlcnRGaW5nZXJwcmludEFsZ29yaXRobSI7czo0OiJzaGExIjt9czozNDoiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9jb21wcmVzcyI7YToyOntzOjg6InJlcXVlc3RzIjtiOjE7czo5OiJyZXNwb25zZXMiO2I6MTt9czozNDoiAE9uZUxvZ2luXFNhbWwyXFNldHRpbmdzAF9zZWN1cml0eSI7YToyMDp7czoxNToibmFtZUlkRW5jcnlwdGVkIjtiOjA7czoxOToiYXV0aG5SZXF1ZXN0c1NpZ25lZCI7YjowO3M6MTk6ImxvZ291dFJlcXVlc3RTaWduZWQiO2I6MDtzOjIwOiJsb2dvdXRSZXNwb25zZVNpZ25lZCI7YjowO3M6MTI6InNpZ25NZXRhZGF0YSI7YjowO3M6MTg6IndhbnRNZXNzYWdlc1NpZ25lZCI7YjowO3M6MjA6IndhbnRBc3NlcnRpb25zU2lnbmVkIjtiOjA7czoxOToid2FudE5hbWVJZEVuY3J5cHRlZCI7YjowO3M6MjE6InJlcXVlc3RlZEF1dGhuQ29udGV4dCI7YjoxO3M6MTA6IndhbnROYW1lSWQiO2I6MTtzOjI2OiJyZWxheERlc3RpbmF0aW9uVmFsaWRhdGlvbiI7YjowO3M6MjY6ImRlc3RpbmF0aW9uU3RyaWN0bHlNYXRjaGVzIjtiOjA7czoyNDoiYWxsb3dSZXBlYXRBdHRyaWJ1dGVOYW1lIjtiOjA7czo0MjoicmVqZWN0VW5zb2xpY2l0ZWRSZXNwb25zZXNXaXRoSW5SZXNwb25zZVRvIjtiOjA7czoyMzoid2FudEFzc2VydGlvbnNFbmNyeXB0ZWQiO2I6MDtzOjE3OiJ3YW50WE1MVmFsaWRhdGlvbiI7YjoxO3M6MTg6InNpZ25hdHVyZUFsZ29yaXRobSI7czo0OToiaHR0cDovL3d3dy53My5vcmcvMjAwMS8wNC94bWxkc2lnLW1vcmUjcnNhLXNoYTI1NiI7czoxNToiZGlnZXN0QWxnb3JpdGhtIjtzOjM5OiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGVuYyNzaGEyNTYiO3M6MjA6ImVuY3J5cHRpb25fYWxnb3JpdGhtIjtzOjQzOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGVuYyNhZXMxMjgtY2JjIjtzOjIwOiJsb3dlcmNhc2VVcmxlbmNvZGluZyI7YjowO31zOjM0OiIAT25lTG9naW5cU2FtbDJcU2V0dGluZ3MAX2NvbnRhY3RzIjthOjI6e3M6OToidGVjaG5pY2FsIjthOjI6e3M6OToiZ2l2ZW5OYW1lIjtzOjQ6Im5hbWUiO3M6MTI6ImVtYWlsQWRkcmVzcyI7czoxMjoibm9AcmVwbHkuY29tIjt9czo3OiJzdXBwb3J0IjthOjI6e3M6OToiZ2l2ZW5OYW1lIjtzOjc6IlN1cHBvcnQiO3M6MTI6ImVtYWlsQWRkcmVzcyI7czoxMjoibm9AcmVwbHkuY29tIjt9fXM6Mzg6IgBPbmVMb2dpblxTYW1sMlxTZXR0aW5ncwBfb3JnYW5pemF0aW9uIjthOjE6e3M6NToiZW4tVVMiO2E6Mzp7czo0OiJuYW1lIjtzOjQ6Ik5hbWUiO3M6MTE6ImRpc3BsYXluYW1lIjtzOjEyOiJEaXNwbGF5IE5hbWUiO3M6MzoidXJsIjtzOjEwOiJodHRwOi8vdXJsIjt9fXM6MzI6IgBPbmVMb2dpblxTYW1sMlxTZXR0aW5ncwBfZXJyb3JzIjthOjA6e31zOjQyOiIAT25lTG9naW5cU2FtbDJcU2V0dGluZ3MAX3NwVmFsaWRhdGlvbk9ubHkiO2I6MDt9czozMjoiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX2F0dHJpYnV0ZXMiO2E6OTp7czo1MzoiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9pZGVudGl0eS9jbGFpbXMvdGVuYW50aWQiO2E6MTp7aTowO3M6MzY6IjJmYjViYWNkLWZmMjgtNGRiOS1hM2M1LTZmYjVkNmMzNWIyZiI7fXM6NjE6Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vaWRlbnRpdHkvY2xhaW1zL29iamVjdGlkZW50aWZpZXIiO2E6MTp7aTowO3M6MzY6IjhlYjJiZDQxLTBlYWYtNDRhYS04M2IzLTM4NjA3MjgwMTlkNyI7fXM6NTY6Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vaWRlbnRpdHkvY2xhaW1zL2Rpc3BsYXluYW1lIjthOjE6e2k6MDtzOjE1OiJLaHVtZXNoIEt1bWF3YXQiO31zOjYxOiJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy9pZGVudGl0eXByb3ZpZGVyIjthOjE6e2k6MDtzOjg6ImxpdmUuY29tIjt9czo1ODoiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9jbGFpbXMvYXV0aG5tZXRob2RzcmVmZXJlbmNlcyI7YToyOntpOjA7czo2NToidXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFjOmNsYXNzZXM6UGFzc3dvcmRQcm90ZWN0ZWRUcmFuc3BvcnQiO2k6MTtzOjgxOiJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvYXV0aGVudGljYXRpb25tZXRob2QvdW5zcGVjaWZpZWQiO31zOjYzOiJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9naXZlbm5hbWUiO2E6MTp7aTowO3M6NzoiS2h1bWVzaCI7fXM6NjE6Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3N1cm5hbWUiO2E6MTp7aTowO3M6NzoiS3VtYXdhdCI7fXM6NjY6Imh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI7YToxOntpOjA7czoyMToia2h1bWVzaGluZm9AZ21haWwuY29tIjt9czo1ODoiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI7YToxOntpOjA7czo1OToia2h1bWVzaGluZm9fZ21haWwuY29tI0VYVCNAa2h1bWVzaGluZm9nbWFpbC5vbm1pY3Jvc29mdC5jb20iO319czo0ODoiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX2F0dHJpYnV0ZXNXaXRoRnJpZW5kbHlOYW1lIjthOjA6e31zOjI4OiIAT25lTG9naW5cU2FtbDJcQXV0aABfbmFtZWlkIjtzOjQzOiJmN3U0dTZBVnBBMGlJbHktY3VnUTdPY3hsblNUSWdTaVlxYzQxUFVkWHFZIjtzOjM0OiIAT25lTG9naW5cU2FtbDJcQXV0aABfbmFtZWlkRm9ybWF0IjtzOjUyOiJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6bmFtZWlkLWZvcm1hdDpwZXJzaXN0ZW50IjtzOjQxOiIAT25lTG9naW5cU2FtbDJcQXV0aABfbmFtZWlkTmFtZVF1YWxpZmllciI7TjtzOjQzOiIAT25lTG9naW5cU2FtbDJcQXV0aABfbmFtZWlkU1BOYW1lUXVhbGlmaWVyIjtOO3M6MzU6IgBPbmVMb2dpblxTYW1sMlxBdXRoAF9hdXRoZW50aWNhdGVkIjtiOjE7czozNDoiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX3Nlc3Npb25JbmRleCI7czozNzoiXzRlMmM3ZjQ1LTZiMDMtNGFhMi04YTk4LWYyMGU3MjkxODEwMCI7czozOToiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX3Nlc3Npb25FeHBpcmF0aW9uIjtOO3M6MzU6IgBPbmVMb2dpblxTYW1sMlxBdXRoAF9sYXN0TWVzc2FnZUlkIjtzOjM3OiJfZmJkNTZhNmMtOTE4My00NjgxLTg1NjctYTc4YWYzZWEwOWIxIjtzOjM3OiIAT25lTG9naW5cU2FtbDJcQXV0aABfbGFzdEFzc2VydGlvbklkIjtzOjM3OiJfNGUyYzdmNDUtNmIwMy00YWEyLThhOTgtZjIwZTcyOTE4MTAwIjtzOjQ3OiIAT25lTG9naW5cU2FtbDJcQXV0aABfbGFzdEFzc2VydGlvbk5vdE9uT3JBZnRlciI7TjtzOjI4OiIAT25lTG9naW5cU2FtbDJcQXV0aABfZXJyb3JzIjthOjA6e31zOjQwOiIAT25lTG9naW5cU2FtbDJcQXV0aABfbGFzdEVycm9yRXhjZXB0aW9uIjtOO3M6MzE6IgBPbmVMb2dpblxTYW1sMlxBdXRoAF9sYXN0RXJyb3IiO047czozNToiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX2xhc3RSZXF1ZXN0SUQiO047czozMzoiAE9uZUxvZ2luXFNhbWwyXEF1dGgAX2xhc3RSZXF1ZXN0IjtOO3M6MzQ6IgBPbmVMb2dpblxTYW1sMlxBdXRoAF9sYXN0UmVzcG9uc2UiO086MTE6IkRPTURvY3VtZW50IjowOnt9fX1zOjc6IgAqAGF1dGgiO086MjY6IkFhY290cm9uZW9cU2FtbDJcU2FtbDJBdXRoIjoyOntzOjc6IgAqAGF1dGgiO3I6NjtzOjE2OiIAKgBzYW1sQXNzZXJ0aW9uIjtOO31zOjY6IgAqAGlkcCI7czozOiJhYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4MToiaHR0cHM6Ly9jYWZpbmRpYS5qYWlzYWxtZXJjaXR5LmNvbS9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWZvbnRzJTJGdm95YWdlci53b2ZmIjt9fQ==', 1634551860),
('LGqZFbjtTHrP8Bk0P0ky5YHoaP54Wsh6Bg3lmR4O', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGZ4UjhqaWZYZVEzMm1VNjNyOVg1d3E4OHdGQzlyakZ6czBBUVdIeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vbWVkaWEvcHVibGljYXRpb25zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634495269),
('m7gv4vw2iKT1KDjXCMJCL81PBBFr3fGH3W7E5FsL', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnZhRlBqY1JmUlVqdVFTb1A0bXZIZlp3YzVVYTVHNjdOUXREemV0UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634241706),
('MMbqDhfCDvYvkMNLqJyngd3vtxVw2ZDk33zB56hC', NULL, '207.46.13.184', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWhvZVpGY1N2dzRsVjZBVUxjSk1IaFR3aUZGRW4yUkR0QWI5UDAxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vdGVhbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634310320),
('mTqfjI6cIngtFCzNd9xwKIgPazuSB7i8TiVn2N2T', NULL, '23.146.241.237', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm5ERE1zS0M3TTVMelZvT3VBUDd5ek9iWElsV0xhb1lmQUp2TFRTdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vcHVibGljL3dwLWNvbnRlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634636769),
('NtQzhaACL1X1fmqkzG8qqyBWRDMlB1lEK6HHKXhn', NULL, '157.55.39.22', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1l6RFh1enFBWVlscEVwdURJemx5cTJHb2drejBBWFpHUlAzM055ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZXZlbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634297891),
('oCFX0SuGI9DNWBYTv5cCGDQyHUWr6WtMdSv0UPDI', NULL, '207.46.13.46', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHBGNHZrblJzMGhsOXRobndMUG9JblZFdDJmMGZieDBDQmdEMFR5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Zvci1pbnN0aXR1dGlvbnMtYW5kLWZvdW5kYXRpb25zL0ZpbmFuY2lhbC1BbmQtQWNjb3VudHMtTWFuYWdlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634348506),
('p3Wj9K06ow4cci67oRSulGR4mUFdoNfYJSacuiS7', NULL, '52.162.161.148', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWpUZUs3NEREUk93c0YweFNobHEzb280VVFoc0s2RHp6MFp2T0hkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAwOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2NvbnRlbnQtZGV0YWlscy9zdG9yaWVzLW9mLWhvcGUvYWJoaXNoZWstc3RyaWtlcy10aGUtcmlnaHQtY2hvcmRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634263121),
('Q8sO3eEaDIi3dUcH7uyQEwUvusrwm5lMXjCopriU', NULL, '40.77.167.15', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzV6Z3U5eXFWeDV3aHR1Z0w3cUVnSmVpdldjZ0NkZlNwSHlUTlhPViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEwOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2NvbnRlbnQtZGV0YWlscy9ibG9ncy93ZS1hcmUtc3RpbGwtY2VsZWJyYXRpbmctd29tZW4tcy1kYXktaW4tYS1tYW4tcy13b3JsZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634605547),
('QlLEJZEFGPswG4EpayVnsa3UZiYlKUl4kNhjykHV', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGdXUGRFYzFmS1YyUEo2WG9ycGZwUmxxV0VpM2I2bmNXZXpsOEFVdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634404108),
('qmqVyMKXLcZhAriDvx935uhiMYzdn0SqXVi6qWPP', NULL, '207.46.13.184', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3g3eHZ1dUFTOElyTzc1N0VNN3VacTFYNXd2Mm5zb0JRYUhJcFJhZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMzOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2Jsb2cvZGV0YWlscy9sZXQtdXMtdXBob2xkLXRoZS1zcGlyaXQtb2YtbmdvLXdvcmtlcnMtd2hvLWNvbnRpbnVlLXRvLXdvcmstaW4tdGhlLWZhY2Utb2YtYWR2ZXJzaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1634213314),
('usmbjlKbDWsa5wUCiZU3i55j0J6oToSL8pbath6y', NULL, '40.77.167.105', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG9xRUE0UVJ3MURaYzFvdmJsejVaWktreWY5MDlzak4zYUN0MEI2aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vd2hhdC13ZS1kby90aGVtYXRpYy1pbXBhY3RzL2VsZGVybHktY2FyZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634517827),
('wIgwlR5AcPavQODzbwn13fuAxCS58TvA922jFrfF', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlJUUmhKbnp1SXJRZkpHa25lQXU3V2xjVWdiNm1kYzNsV3ViMThQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634323586),
('xYHnrRmiPkK2blf2fIaGCDR7lBU8MFhdFto4DYae', NULL, '66.249.79.18', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1hlRzhVVTFTdUlnTUhhazFDd1dUMGFHbEI2VUtXYW42eDFMUjZtUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLWNvbXBhbmllcy9jc3IvY2FwYWNpdHktYnVpbGRpbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634433127),
('yse5NaWyCy9pIyzEI4yaD0KhWVgN68iIAQMF76dT', NULL, '207.46.13.46', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnJWT2RsQkt1RzU0eHN4dmdQSVpQY1FVZjhMRDUwVmkwWVFEbVoyViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLW5nb3MvUmVnaXN0ZXItV2l0aC1VcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634542918),
('YwZIg6LWh9QHIHu8s6fDTpK8oV24F94CmJBCpEhx', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGJ6dmNhdUJRcXhMa1dqT09sRWRlb0hBTllJZXhUa3ZBTnFLWkZqOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634399834),
('Zfdj27W1BTeXDDM9RaxBY36eXrF4uXfwIe0wesiz', NULL, '207.46.13.184', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNU54UXZxd1dDM2gwSVlWQm1CbThlNUZGQnNMTGdWQUZnakhuZWhMVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODg6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vZm9yLWNvbXBhbmllcy9jc3IvY3NyLXBvbGljeS1hbmQtc3RyYXRlZ3ktZGV2ZWxvcG1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634322006),
('zK0PAYoBPXwjrdCzoe1zNN6FUqRoj7LMtIdksgaT', NULL, '203.81.240.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVFZlaUk3WnhBQnM0M2ozaEc1OER3bU5BUkRYTXIwOFhsUGlOUE9RNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjQwOiJodHRwczovL2NhZmluZGlhLmphaXNhbG1lcmNpdHkuY29tL2FkbWluIjt9fQ==', 1634549853),
('ZSjgjo60IpEhHGjyMXJ2qggxSM5I23RdGs3jBEsY', NULL, '207.46.13.98', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmp6bHp6bE9Dc0FYVWU4QVJBNUJSb3RiQUVSNllGYlFnN1VXSlc4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634364641),
('Zy25rbGYne8wmk0UHR6N36N3O7GpWSZDmYpCmINX', NULL, '66.249.79.18', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHZsVzg3eDlyU1JYb2M0aW10NUJvbjdVazRQRU52VHh2NU80bzZPMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vY2FmaW5kaWEuamFpc2FsbWVyY2l0eS5jb20vb3VyLXByb2dyYW1lZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1634433317);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'CAF India', '', 'text', 3, 'Site'),
(2, 'site.description', 'Site Description', 'CAF India', '', 'text', 1, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/November2020/tg9BnRIOZYH6hlUOGyHa.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'CAF India', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to CAF India.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/December2020/toP619vTQWwxRzeVqJcd.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2020/EYNWmJBeupLHYcTrIGaC.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.keywords', 'Site Keywords', 'CAF India,All india', NULL, 'text', 6, 'Site'),
(12, 'site.facebook-link', 'Facebook', 'https://www.facebook.com/CAFIndia', NULL, 'text', 7, 'Site'),
(13, 'site.twitter-link', 'Twitter', 'https://twitter.com/CAFIndia_tweets', NULL, 'text', 8, 'Site'),
(14, 'site.youtube-link', 'Youtube', 'https://www.youtube.com/channel/UCo5aMaf9rVSnYfuWT6rk6Xg', NULL, 'text', 9, 'Site'),
(15, 'site.linkedin-link', 'Linkedin', 'https://in.linkedin.com/company/caf-india', NULL, 'text', 11, 'Site'),
(16, 'site.blog-link', 'Blog', 'https://blog.cafindia.org/', NULL, 'text', 10, 'Site'),
(17, 'site.campaigns-image', 'Campaigns Image', 'settings/January2021/O1lVy278VBdpsWviCOIU.jpg', NULL, 'image', 12, 'Site'),
(18, 'site.campaigns-link', 'Campaigns Link', 'https://cafindia.jaisalmercity.com/give-now', NULL, 'text', 13, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `stories_of_hopes`
--

CREATE TABLE `stories_of_hopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories_of_hopes`
--

INSERT INTO `stories_of_hopes` (`id`, `theme_type`, `alignment_type`, `title`, `description`, `image`, `link`, `link_text`, `link_type`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'B', 'B', 'Devi Will Win The Race', '<p>Hailing from a small village, called Kuranda in Nagercoil, Devi, 14 joined Isha Vidhya (a unit of Isha Education) as a pre-schooler. In this short span of time, Devi and her family have been through several ups and downs.</p>', 'stories-of-hopes\\March2021\\gU9xnQ989SBWpAjzHiig.png', NULL, NULL, 'BUTTON', 0, 'A', '2021-03-22 10:47:05', '2021-03-22 10:47:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin\'s Team', 1, '2020-10-25 04:35:28', '2020-10-25 04:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-10-19 04:19:25', '2020-10-19 04:19:25'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-10-19 04:19:25', '2020-10-19 04:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `trustees`
--

CREATE TABLE `trustees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '1',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trustees`
--

INSERT INTO `trustees` (`id`, `name`, `designation`, `description`, `order`, `type`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'MADHU BALA NATH', 'Country Representative (India) EngenderHealth', '<p>Madhu Bala Nath is presently the Country Representative (India) for EngenderHealth which promotes quality services for reproductive health and family planning in four Indian states. Madhu has spent most of her three-decade long career with UN agencies, working on HIV/AIDS, reproductive and sexual health and women empowerment. She has also served as Senior Adviser at the UN Women headquarters. </p><p>She has served on the advisory board for Women Power Connect, International Centre for Research on Women and at present for Girl Rising in India, as well as, the HIV/AIDS Alliance. She is also an independent director on the board of HPL Electric India.</p>', 1, 'OGT', 'trustees/June2021/C1o6tCHZ5izYEHqP2VQ8.png', 'A', '2021-06-05 04:18:03', '2021-06-05 07:13:45', NULL),
(5, 'SHRAVANI DANG', 'VP, Group Head – Corporation Communication Avantha Group', '<p>Shravani Dang is an Independent Board Director and an experienced business, public affairs and CSR leader with over two decades of quantifiable achievements. Her expertise in marketing, especially digital marketing, branding communications and CSR has made her an A lister by Campaign India and named as among the top Indian communications professionals by Reputation magazine. </p>\r\n<p>Shravani’s experience base is in multinational companies across Technology, Financial, Not-for-profit and Industrial sectors, in both complex and large organizations with staff strength ranging from 10 to 100,000 and includes stints in HCL, CARE, CSC, Fidelity and the Avantha Group. Till March 2019, she was Vice President –Marketing & Communications at the Avantha Group. </p>\r\n<p>Currently, she serves as Advisor to the Avantha Group, a broad-based industrial conglomerate. She is also senior Advisor to Thapar Institute of Engineering and Technology –TIET, (previously Thapar University). TIET is a globally ranked private varsity and ranked among the top higher education institutes in India. Additionally, she is co-founder and board member of the Asia Pacific Association of Communication Directors (APACD) and its elected Treasurer. Well networked and reputed, Shravani is a frequent contributor to publications and speaks on multiple forums. She holds a Masters in Mass communications, an undergraduate degree in Sociology and has specialized in Marketing in a Digital World from UIUC, USA.</p>', 1, 'OGT', 'trustees/June2021/ZchOwQ59niSWGBAQ0Vlq.png', 'A', '2021-06-05 04:20:27', '2021-06-05 07:14:10', NULL),
(6, 'AJAY S. MEHTA', 'President Vidya Bhawan', 'Ajay S. Mehta joined the Indian Railways in 1980 after working briefly for the government-instituted Commission for Controls and Subsidies. In 1985, he joined Seva Mandir and took on the role of chief executive from 1990 to 1999. Following this, he served as the general secretary of the Association of Voluntary Organisations for Rural Development (AVARD) for a span of two years. In 2001, he moved on to The National Foundation for India (NFI) as the executive director. After a 10-year service, Ajay joined the State Planning Board of Rajasthan till 2013. Currently, he is the president of the board of Vidya Bhawan.', 1, 'OGT', 'trustees/June2021/dsQaRn89GkdRrvZcT0ap.png', 'A', '2021-06-05 04:22:09', '2021-06-05 07:14:35', NULL),
(7, 'NAVIN BAHL', 'Chartered Accountant', '<p>Navin Bahl is a Fellow from the Institute of Chartered Accountants in England and Wales. He has worked with Ernst & Young in London and Scandinavia and as the head of finance at large industrial organisations in India. Navin has 35 years of experience as a practicing chartered accountant. Besides being a trustee of various charitable trusts like the Blind Relief Association of New Delhi, he is also the president of the Association for Advancement and Rehabilitation of Handicapped Children, which is running a school in Vasant Kunj for handicapped children. </p>\r\n<p>Navin also holds the office of treasurer and trustee of Cord which is working in 600 villages to empower rural women through self help groups, micro-credit banking and income generation activities.</p>', 1, 'OGT', 'trustees/June2021/r2GmR1zVjepOqoWhPGOt.png', 'A', '2021-06-05 04:23:48', '2021-06-05 07:14:55', NULL),
(8, 'ARJUN MALHOTRA', 'Former Chairman & CEO, Headstrong', '<p>A pioneer of the Indian IT industry, Mr. Malhotra served as Chairman of Headstrong’s Board of Directors before its acquisition by Genpact in May 2011. Prior to Headstrong he was Chief Executive Officer and Chairman of TechSpan, which merged with Headstrong in October 2003. Mr. Malhotra has a long string of entrepreneurial successes. </p>\r\n<p>He co-founded the HCL group in 1975, taking it from a six-person “garage operation” to one of India’s largest Information Technology corporations. The first leading Indian entrepreneur to relocate to USA, Mr Malhotra took over HCL’s US operation in 1989 and grew it to nearly $100 million annual revenues. In 1992 he ran the HCL-HP joint venture in India, and in 1996 he set up and ran the joint venture with Deluxe Corporation. Mr Malhotra is on the Board of Governors of ISB, Hyderabad and IIT (Kharagpur) Foundation. </p>\r\n<p>He is a past Co-Chair of the Global Pan-IIT Alumni Association. He is also a Member of IPSS and was on the Board of Governors of The Doon School. A Life Fellow of IIT Kharagpur, he has been awarded Doctor of Science (Honoris Causa) in September 2012. Punjab Technical University conferred an Honorary PhD on him in 2013. He is a Charter Member of TiE, having previously served as the Chairman of their Global Board. Mr. Malhotra studied at The Doon School, Dehradun, graduated from IIT Kharagpur with B.Tech. (Hons.) in Electronics & Electrical Communication Engineering and received the Dr. B.C. Roy Gold Medal. In 1985, he attended the Advanced Management Program at Harvard Business School. </p>\r\n<p>He was awarded the Albert Einstein Technology Medal for 2001. The Institution of Engineers (India) has named Mr. Malhotra an Eminent Engineering Personality. For his contributions to the Indian IT Industry, he got the DQ LIFETIME ACHIEVEMENT Award. He is presently an Advisor in a number of start-ups in Education and healthcare space.</p>', 1, 'OGT', 'trustees/June2021/dLYtSb3MDw9zvd9HdRMN.png', 'A', '2021-06-05 04:26:30', '2021-06-05 07:15:17', NULL),
(9, 'VASVI BHARAT RAM', 'Past President of FLO 2017-18', '<p>Vasvi Bharat Ram is the Past President of FLO 2017-18, the women’s wing of the Federation of Indian Chambers of Commerce and Industry (FICCI). FLO is the premier women’s business organization in the country and implements a number of National Initiatives to create employment and entrepreneurship opportunities for women at all levels and works on policy and advocacy with the Government to strengthen the position of women in society. </p>\r\n<p>Vasvi has been working towards the cause of women empowerment for many years. She is a strong advocate of equal participation of women in economic activities across all strata. In the past, she has also held the office of the Chairperson of the Young FICCI Ladies Organization (YFLO), Delhi, in the year 2010-11. She has held the post of and ‘Spouse Forum Chair’ in the Young Presidents Organisation (YPO), Delhi and has won International awards for the same. In addition to spearheading FLO, Vasvi is the Joint Vice Chairperson of The Shri Ram Schools, which have been consistently rated as one of the top schools in India. Under the aegis of Shri Educare Limited, she has been instrumental in setting up The Shri Ram Millennium Schools and The Shri Ram Early Years play schools in the National Capital Region. She is on the Board of the SRF Foundation and SAVE the Children India, both of which work towards providing a better quality of life to the under privileged children of our country. </p>\r\n<p>She is a member of various Education Forums including the FICCI School Education Committee and the Forum of Progressive Schools. Vasvi earned a degree in Bachelors of Arts from Delhi University and did her post-graduation in Business of Fashion Management from the London College of Fashion in London. She has also completed a number of executive education programs from globally renowned universities, including one from the Harvard Business School in Boston. She started her career as an entrepreneur making wrought iron furniture, home accessories and artefacts working with and providing a livelihood to local women artisans. Outside of work, Vasvi enjoys reading, travelling, music and theatre. She and her husband live in New Delhi with their two daughters.</p>', 1, 'OGT', 'trustees/June2021/WWqbYN8Lr2WzWsAENkDx.png', 'A', '2021-06-05 04:28:55', '2021-06-05 07:48:35', NULL),
(10, 'SANJAY PATRA', 'Chartered Accountant', '<p>Dr. (CA) Sanjay Patra has experience of 30 years in the Voluntary & Non-Profit Sector. He is currently the Executive Director of the Financial Management Services Foundation (FMSF) and has served with this organization since 1998. In the year 2005-07 he was a member of the Task Group formed by the Planning Commission for drafting policy on the Voluntary Sector. </p>\r\n<p>He has also been a Resource Person in many National as well as International Workshops specializing in the areas of Financial Management, Governance and Legal aspects of the Voluntary Sector. Till date he has facilitated more than 500 workshops. He is also a visiting faculty for Birla Institute of Management Technology (BIMTECH), Greater NOIDA. He also teaches stewardship at Haggai Institute, Hawaii. He is a firm believer and flag bearer of Accountability & Transparency in South Asia. Over the years, he has engaged in major research, training and has also authored books on financial audit & written several articles. Some of them include “Finance & Legal Handbook on Voluntary Organizations”, “FCRA 2010”, “Handbook on Financial Audit and Reporting in NGOs”, and “Handbook on Social Audit in NGOs”. </p>\r\n<p>He is also the author of Interface (half yearly journal of FMSF), Ecommuniqué “Standards & Norms” and Governance Tool Box Series. Dr. Patra also coordinates the online Programme, NPO Governance Programme which is run by Financial Management Service Foundation (FMSF). A recognized social activist and writer, Sanjay has been a member of a number of committees of the Government of India and several national and international non-profit groups working on civil society issues. He also provides support to Voluntary Associations Network of India [VANI], which provides an interface with the government. He is also a fellow member of the Institute of Chartered Accountants of India, with a Ph.D degree on commerce.</p>', 1, 'OGT', 'trustees/June2021/l9wG1KOHPAPkzwLD9kDd.png', 'A', '2021-06-05 04:31:03', '2021-06-05 07:17:00', NULL),
(11, 'SUMIT BOSE', 'Retired Civil Servant', '<p>Sumit Bose was the Union Finance Secretary and Revenue Secretary in the Ministry of Finance, Government of India till his retirement from the Indian Administrative Service in March, 2014. In the Ministry of Finance he was also Secretary in the Departments of Expenditure and Disinvestment. As Joint Secretary in the Department of Elementary Education, he was responsible for the launch of the Sarva Shiksha Abhiyan. He was also Secretary, School Education in Madhya Pradesh. </p>\r\n<p>Currently he serves as an Independent Director on the boards of several companies and on the boards of various non-profits such as Vidhi Centre for Legal Policy, Jal Seva Charitable Foundation (WaterAid India), Parivaar Education Society (Kolkata), Educate Girls and Samaj Pragati Sahayog, Bagli, Dewas.</p>', 1, 'OGT', 'trustees/June2021/uSJq3usjWXrKDSNkUAx5.png', 'A', '2021-06-05 04:32:38', '2021-06-05 07:17:24', NULL),
(12, 'NEELIMA KHETAN', 'Sr. CSR & Social Sector Expert', '<p>Neelima Khetan is a senior CSR and Social Sector expert. She has over 3 decades of experience in this space, having worked with leading for-profit and non-profit organizations in the country. Her current affiliations include Visiting Fellow with Centre for Social and Economic Progress (earlier called Brookings India) and Partner, Nous Consultants.</p>\r\n<p>Earlier, Neelima has been the Group CSR Head for Vedanta Group, where she provided oversight and guidance to the CSR efforts of 11 business units of the Group, located across India and Africa. She was also (concurrently) Vice President, CSR at Hindustan Zinc. Prior to joining Vedanta, Neelima was the Director, CSR and Sustainability for Coca Cola India and South West Asia – where she led the company’s CSR/Sustainability programs across 6 countries in South Asia.</p>\r\n<p>Neelima has long experience of the social sector, having held leadership positions like – India Country Director of the American India Foundation and Chief Executive of Seva Mandir in Udaipur. In between, she was also the Acting Director of the Institute of Rural Management, Anand (IRMA). </p>Neelima has served on the Boards of many NGOs and Academic Institutions. She has also served on many Central and State Government <p>Committees, including the Land Reforms Committee of the Government of India and the Task Force to suggest Decentralized Funding Mechanisms to the Planning Commission. Neelima holds a Master’s in Rural Management from IRMA and a Bachelor’s in Commerce from Shri Ram College of Commerce, Delhi University.</p>', 1, 'OGT', 'trustees/June2021/Z2uEY1nuUoqAOC7kTHHV.png', 'A', '2021-06-05 04:34:34', '2021-06-05 07:17:47', NULL),
(13, 'BADRI AGARWAL', 'Ex-President & CEO, Bharti Foundation Currently - Social Worker', '<p>Mr. Badri Agarwal has been passionate about improving the quality of education, especially in rural India. He quit his job as the President at Airtel (Infotel business) in 2006 and joined Bharti Foundation as its honorary President & CEO.</p>\r\n<p>It was with his unique approach that Bharti Foundation set up 250+ schools during 2006-09. He has also volunteered at Pardada Pardadi Education Society, TAP India, The Gyan Prakash Foundation, all focused on education for the underprivileged and skill-building at the grassroots level.</p>', 1, 'OGT', 'trustees/June2021/kRvEp4GfGB6r81yyfUA3.png', 'A', '2021-06-05 04:35:54', '2021-06-05 07:18:08', NULL),
(14, 'SOM MITTAL', 'Former Chairman & President, NASSCOM', NULL, 1, 'FT', 'trustees/June2021/AA630I3j2SmIVJpRQ7dW.png', 'A', '2021-06-05 04:54:48', '2021-06-05 07:18:50', NULL),
(15, 'LALIT NIRULA', 'Director, LMN Investments & Agriculture Pvt. Ltd', NULL, 1, 'FT', 'trustees/June2021/Uyj3Srg4yrVFxMrDDtup.png', 'A', '2021-06-05 04:55:24', '2021-06-05 07:19:19', NULL),
(16, 'ARUN BHARAT RAM', 'Chairman, SRF Limited', NULL, 1, 'FT', 'trustees/June2021/0zoAe7HMh7aryXph7QuM.png', 'A', '2021-06-05 04:55:52', '2021-06-05 07:19:59', NULL),
(17, 'PRANOY ROY', 'Co-Founder and Executive, Co-Chairperson of NDTV', NULL, 1, 'FT', 'trustees/June2021/76W8hP8DtPXrA1BHuuau.png', 'A', '2021-06-05 04:56:28', '2021-06-05 07:20:37', NULL),
(18, 'RENU KARNAD', 'Managing Director, HDFC LTD.', NULL, 1, 'FT', 'trustees/June2021/ZHkxqYAhYrE3cxJbCy0i.png', 'A', '2021-06-05 04:57:04', '2021-06-05 07:21:03', NULL),
(20, 'RATI FORBES', 'Director, Forbes Marshall Ltd.', NULL, 1, 'FT', 'trustees/June2021/IP5WFNvdbBTpFrJNeFKE.png', 'A', '2021-06-05 05:15:05', '2021-06-05 07:21:31', NULL),
(21, 'ISHER JUDGE AHUWALIA', 'Chairperson, Board of Governors Indian Counsil for Research on International Economic', NULL, 1, 'FT', 'trustees/June2021/JgHWxRiTU56cVcakGBbq.png', 'A', '2021-06-05 05:17:26', '2021-06-05 07:21:59', NULL),
(22, 'MUKUND GOVIND RAJAN', 'Ph.D. - Managing Partner, Tata Mutual Fund - Tata Large & Mld Cap-Fund', NULL, 1, 'FT', 'trustees/June2021/TDYMRFByFU46Zl9KySEh.png', 'A', '2021-06-05 05:18:36', '2021-06-05 07:22:26', NULL),
(23, 'K. N. MEMAMI', 'Chairman - Quality Review Board at India Ministry of Corporate Affairs & Board member of 10 companies', NULL, 1, 'FT', 'trustees/June2021/g8s8FedA9KG0Sev7UzMy.png', 'A', '2021-06-05 05:26:17', '2021-06-05 07:22:58', NULL),
(24, 'SUBODH BHARGAVA', 'Chairman of Tata Communications Limited & Director on Board of L&T', NULL, 1, 'FT', 'trustees/June2021/IIfqycainxdjJ8cvtzya.png', 'A', '2021-06-05 05:26:51', '2021-06-05 07:23:34', NULL),
(25, 'PREMA SAGAR', 'Chief Executive Officer & Founder Genesis Burson Marsteller', NULL, 1, 'FT', 'trustees/June2021/IAN7WuTIxVzdPtdHl5BD.png', 'A', '2021-06-05 05:27:26', '2021-06-05 07:24:12', NULL),
(26, 'KISHOR ANANT CHAUKAR', 'Independent Non-Executive Director Kirloskar Brothers Ltd.', NULL, 1, 'FT', 'trustees/June2021/0k3Mpwrizrt7YVmcxzCn.png', 'A', '2021-06-05 05:28:26', '2021-06-05 07:24:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trustee_detail`
--

CREATE TABLE `trustee_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `small_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trustee_detail`
--

INSERT INTO `trustee_detail` (`id`, `image`, `title`, `description`, `small_title`) VALUES
(1, 'assets/img/trustee_banner_image.jpg', 'TRUSTEES', 'Our Trustees delegate management responsibilities to the Chief Executive and certain other functions to our sub-committees.', 'Our Governance');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `current_team_id` bigint(20) DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `contact_number` bigint(20) DEFAULT NULL,
  `dob` bigint(20) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_paying_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso_user_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `deleted_at`, `two_factor_secret`, `two_factor_recovery_codes`, `current_team_id`, `profile_photo_path`, `contact_number`, `dob`, `address`, `country`, `state`, `city`, `pin_code`, `tax_paying_status`, `sso_user_id`, `username`) VALUES
(1, 1, 'CAF Admin', 'admin@admin.com', 'users/December2020/uOjYFoS51r2Y18yVeTo8.png', NULL, '$2y$10$DgxMoc/oV8IAXCUgGTVNKu.m3JRJTEBtwvkUjrSAru6IZ3Cv44eyi', 'GxYZWBYKerNoVas1w35f2lzNBqvVvEmw3xT1tok0zTfVfl29kWmKrCta4EAY', '{\"locale\":\"en\"}', '2020-10-19 04:19:25', '2020-12-02 00:39:04', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Caf', 'user@cafindia.org', 'users/default.png', NULL, '$2y$10$0Aiz4nwSozi6vtlktjf4tOzxvfA.OgoXfR75e/J10WrV5HOJm6Iz2', NULL, '{\"locale\":\"en\"}', '2020-11-01 02:06:38', '2021-03-10 18:29:55', NULL, NULL, NULL, NULL, NULL, 9632587410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'Dev', 'developer@cafindia.org', 'users/default.png', NULL, '$2y$10$DgxMoc/oV8IAXCUgGTVNKu.m3JRJTEBtwvkUjrSAru6IZ3Cv44eyi', NULL, '{\"locale\":\"en\"}', '2020-11-07 01:43:09', '2020-11-07 01:43:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'M.K.Bohra', 'infomkbohra@gmail.com', 'users/default.png', NULL, '$2y$10$mNoaYBiuKx215O2g6CsZxO71iDavCFGmNtBVc57Xo45R1S1s.E1a.', NULL, '{\"locale\":\"en\"}', '2020-11-24 02:31:47', '2020-11-24 02:31:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'Lakshit prajapati', 'king@gmail.com', 'users/default.png', NULL, '$2y$10$DtRY0WR5rPcLac4158lDJuB4zVaEAZvqJf9edAsH6jvszBJjbenDe', NULL, '{\"locale\":\"ar\"}', '2020-11-28 03:41:29', '2020-11-28 03:41:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 'Deepak', 'deepak.sharma@cafindia.org', 'users/default.png', NULL, '$2y$10$tqYF.nBp.4SZIFoeyfjRTevLRzLewsQuOrqwu16wdKmNyZIlKeIvO', NULL, NULL, '2020-12-29 08:59:31', '2020-12-29 08:59:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2, 'Ram', 'ramr2@gmail.com', 'users/default.png', NULL, '$2y$10$G1c8YCiQZ9gkkqK7ebcoXOW4lyp3LTPaaS7tIKOj0.CkyibtxDXCi', NULL, NULL, '2021-01-04 06:27:13', '2021-01-04 06:27:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'King', 'king@king.com', 'users/default.png', NULL, '$2y$10$9EFrtLtQ1ZnnTOs0jWLA1.V1x8oFr1TXG11ZpAouh6yH/ngXq/Iy.', NULL, '{\"locale\":\"en\"}', '2021-01-21 07:36:15', '2021-01-21 07:36:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 2, 'aryan', 'aryan.solanki@cafindia.org', 'users/default.png', NULL, '$2y$10$7lQCHQvp6BY9547dMxoCxuwl6dR8TX5KVlbn6cUd8g5PfbS3r9fke', NULL, NULL, '2021-02-08 05:19:46', '2021-02-08 05:19:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 7, 'Finance Admin', 'finance@cafindia.org', 'users/default.png', NULL, '$2y$10$oeTuTbjE8TFuRv4744sT2ukRjeEwjm3lUlB3VwK9Y92lTJDNy9qKi', NULL, '{\"locale\":\"en\"}', '2021-02-08 09:53:06', '2021-06-03 10:41:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 2, 'sanjeev', 'sanjeev.kumar@cafindia.org', 'users/default.png', NULL, '$2y$10$fUWVhbzEGFu.4MNUewR1ceTXWD9yoQeLrRZ9vXX3cjW3zqBfeO.L.', NULL, '{\"locale\":\"en\"}', '2021-03-08 08:52:16', '2021-03-10 19:10:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 2, 'ram', 'khumeshinfo@gmail.com', 'users/default.png', NULL, '$2y$10$YEdr6FzutEMSKspT2zoc6ug5aKUJUrMZ6jCuSSDLzh10jz91n1hFy', NULL, NULL, '2021-05-20 12:20:24', '2021-05-20 12:20:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 2, 'Aryan', 'aryan.solanki@hotmail.com', 'users/default.png', NULL, '$2y$10$0eszr/ipBOeWVXOrkw8QGOyQhjbijlb4RWW/p6IryzA9ReG8EtEaq', NULL, NULL, '2021-05-20 12:26:56', '2021-05-20 12:26:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 2, 'Rakesh Sharma', 'rakeshr2@gmail.com', 'users/default.png', NULL, '$2y$10$mRwFigk5pymIU6ZpEUWVxeX0k4bLH0AnR4/16UDrTobrCs9ITJh3q', NULL, NULL, '2021-06-14 05:35:32', '2021-06-14 05:40:31', NULL, NULL, NULL, NULL, NULL, 9999999999, 1986, 'test address ', 'test  Countery ', 'Test state ', 'test City', '341511.2', 'Monthly ', NULL, NULL),
(25, 1, 'Demo', 'test@text.com', 'users/default.png', NULL, '$2y$10$rJ3u6r2Ra8pEsMWpuFi1V.Rg2oNjwIJxbRKldHGqXA244739Gj4yK', NULL, '{\"locale\":\"en\"}', '2021-06-30 13:25:47', '2021-06-30 13:25:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 2, 'Deepak Gupta', 'deepak.gupta@cafindia.org', 'users/default.png', NULL, '$2y$10$NIeV6Ok8WqKYHpP9ZLHQQ.DX5HUjja8aQAMHjKBG33jPu0u1BPlri', NULL, NULL, '2021-07-22 08:46:32', '2021-07-22 08:46:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 2, 'Nikhil Sharma', 'nik.i.am@hotmail.com', 'users/default.png', NULL, '$2y$10$/WTYHvBBsIIPRqrtpcH6WuDaJ3pul8Kjm3t9dmrrSkx3M.Nx1hYxK', NULL, NULL, '2021-08-03 10:40:27', '2021-08-03 10:40:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 2, 'Nikhil Sharma', 'nikhil.rsharma@khumeshinfogmail.onmicrosoft.com', 'users/default.png', NULL, '$2y$10$RvQbpob9CS/Nt3aPZkhBM.x..h4p4JkMW0wH6aY5Qb4EaXSLk6v3O', 'oBv8mCFvdf3K7RxK6ECkOgS04dJ02EEpxWqiAWfVjqLaUW6jFMV1fNDvrAZL', NULL, '2021-08-06 07:56:32', '2021-08-06 07:56:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KWjY9CTC83J71GA-yjBij_lzZRY5DbeHkS1iSpogCA4', 'nikhil.rsharma@khumeshinfogmail.onmicrosoft.com'),
(32, 1, 'Khumesh Kumawat', 'khumeshinfo_gmail.com#EXT#@khumeshinfogmail.onmicrosoft.com', 'users/default.png', NULL, '$2y$10$4JiqOaEM/vIAMSzBYTunDuAzZQKIs2rSJvDtCqnBm58Uk8T0O7b0u', 'YHXAvFj2HOF5J81ia28rgqWe4G40FLDKRROS4FkpeNxLuJDPtnQyRswgAkoG', NULL, '2021-08-06 08:11:22', '2021-08-06 08:23:18', NULL, NULL, NULL, NULL, NULL, 45345345345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f7u4u6AVpA0iIly-cugQ7OcxlnSTIgSiYqc41PUdXqY', 'khumeshinfo_gmail.com#EXT#@khumeshinfogmail.onmicrosoft.com'),
(33, 2, 'TestUser', 'testuser@cafindia.org', 'users/default.png', NULL, '$2y$10$7SWLtO1XEZPuUH1bYSGyEOi6asxY20J8.rMxwVrCsLidmcrIfyiIu', 'QrK9FesU23ljqKaiYHZsSq3JmWO3eORVVkqRuT6M7YlNboXcF6pGMXXH7c5q', NULL, '2021-08-06 08:46:24', '2021-08-06 08:46:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lm62spY8_2bOakO7yvSjs9GXVlQ9DB-RZbJ4VqAYAWU', 'testuser@cafindia.org'),
(34, 2, 'Rahul Bhasin', 'rahul.bhasin@cafindia.org', 'users/default.png', NULL, '$2y$10$3JCcsQw2erKK6NT6.ekk6OrpxuF0PXwRaWAMBFBB/xQ1XPMXTx4.a', 'kjzteBVNjyF9FMIiInREqlHDvftYm9gbtGaT5Z6lAtzGfh3IuOy0Vw6SRhyt', NULL, '2021-08-06 10:05:15', '2021-08-06 10:05:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3VAWF-nSI4LOHDwy4JGp99-ylF8FQBwko6Ns6Mz7HRo', 'rahul.bhasin@cafindia.org'),
(35, 2, 'TESTING USER 002', 'test002@cafindia.org', 'users/default.png', NULL, '$2y$10$2P2ndEun0mnoa8.t1rjMWOjcmN5IGpci4yVXOanSQHv1CW1ZlZI.K', '8VsvRv1wQmLD1wpHCY0wqBmNdM2uIoKDY0K7jctijxonE1DPnO5xnYKWPK7q', NULL, '2021-08-06 10:23:10', '2021-08-06 10:23:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08xwu8qt-qihvuWUgJ9wxfCksIEbcQ7sRWo4kI8iFaQ', 'test002@cafindia.org'),
(39, 1, 'Sample User', 'sample@khumeshinfogmail.onmicrosoft.com', 'users/default.png', NULL, '$2y$10$jUiy1fI.aHHA7QwtjSB3UeqxRmOXQm41KCdxytNliqSirnkmdLC4e', 'PmooDzhei1rtHfyV8155wi1JrNgrM8uvVRWqFEmwOgYSEdLxcQQoVp0GSH15', NULL, '2021-09-13 13:49:42', '2021-09-13 13:49:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tOBk1vx1OSmhvG2aWBhSY5m2wz3F-9awyaWh2Ri2DXU', 'sample@khumeshinfogmail.onmicrosoft.com'),
(41, 1, 'TEST USER 005', 'testuser005@khumeshinfogmail.onmicrosoft.com', 'users/default.png', NULL, '$2y$10$4YNHCkx4vA2iOnhxUExPQOfveIe68j99HOc.psyTOtThjWSHfsaAS', 'Tlxec2dBV3Lst6ep3H3tAIXgjpdquPI5Rs00xlie5L0JCHYQULmRtQLbWj47', NULL, '2021-09-14 06:01:44', '2021-09-14 06:01:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cjCIcdYl-TTB5sRgs4llT1uQ-nUhNd_mHsTlNRzdTFA', 'testuser005@khumeshinfogmail.onmicrosoft.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(10, 2),
(19, 7);

-- --------------------------------------------------------

--
-- Table structure for table `web_firebase_tokens`
--

CREATE TABLE `web_firebase_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `deleted_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_firebase_tokens`
--

INSERT INTO `web_firebase_tokens` (`id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'd0p1b1Iw3415GVIP7UJXXh:APA91bFKSWVOv8jdXbuEkpnGYTDrvNYxZskmEsYsqFdLocaU19AQHJiVYAW1MFpM_3srPDnbGF_RU3oXTB-FYmXDlWq5FSZLkSS8iHKQUa5YNxBUWNxsQ6d1pUoilW5Gv3rifydWdIzI', 1613586392, 1632488567, NULL),
(2, 'dCecwCqzR8hY6Q9Mp9Re_h:APA91bFZytDHJYrRp3ns1RlqcEw2cEsMmMVm5qE3uhc-FQpoTWsaYoJbHYe6aHHJODOq8DgfRqyRUbtTp4vB2vjOPYhk0lJlEe4HPeIJvi17Opgf8g8_oHrDRHOTlO-HReiddSIryqi1', 1613623435, 1627473437, NULL),
(3, 'drvyV4rPRZPhuUN5cbymhF:APA91bG_KoqyOF7z--WT4HnTC4I9Xkf097xXAb50gTRNyZ7L-bHyR0UM5f8ZqraAyqLyQuLmkFW-91c0TrF1EPTW1thZ3mkB1JGjVwgyDQC-kveuk7thkhwAIxsw6LDHnq5eP4Vr4UQ5', 1613714040, 1617712464, NULL),
(4, 'dMI1mlqQUwnNTYuqK2_0YV:APA91bHkdlCqMxBJLCtqwdmfTD7C1RaMPIBarlzMxDVYkliZx4prxXE0kB1GgY9hQQujeGHYsTqfcFGhJsMX3iPNLTXQ8APOHbgd1WuS6HUpOsCz1_8vttm0z8D-zEdu8F-5NoBg3pYc', 1613824762, 1632375812, NULL),
(5, 'dMI1mlqQUwnNTYuqK2_0YV:APA91bHkTEMJOMGSV11hFv4Yn5ZfADz38t-MGj-U0il1ujedRYzdHZEY4O5Vgp9W3pmXU9-AMegPL3GZgPe90DUnchOSwHrz1skPK9NLbawNovVriHHwvOVsfqfCufkk_eksltX1VU2M', 1613824762, 1613824762, NULL),
(6, 'dg2vPqCtihlO5R3Lsup33Q:APA91bFmhNlHWfJSdtbJWiEN915nII6RHMeQy4dXYdwj7MHmpjIOBcD8gOjt3ZGIlm5oUTD08ijV9t_dXJwGkPCJYpVt4ct-lLQw3JedeECgklNUz2UcoX0_RRgifkvyNfU6xZTYWqeG', 1614092457, 1615134962, NULL),
(7, 'dMKRikRAAAnjHTfw3yiIT2:APA91bEQ1-GCkEYg5ngyYMD2pRxxzclPd6KGa8MMB_M7ZOZw1N5Ebv1M0NX1oEOjn6v2ag-7NIs2KtCdP9e83sONiIddXSbrBOHMbxFbhgeF5UZQIddhBEbUArveHFus1CfM1IQusfMt', 1614105568, 1614105806, NULL),
(8, 'fZiMwOZn_3hCOLhP_WGsCu:APA91bG6MSUnx6k24KXNIw8U-GntwVGWhdE9MiXCBH0r9RMxAxfsIjU-eGJ5S-wrdDgsg1W30FqQRH0MFB9FA_IML80Dhh5uLNp1M1wr1rhGlhJ8qyO8GSthGpJCBZoxZPbuwDhGOKsh', 1614310141, 1629868712, NULL),
(9, 'ctJFfcO3wQt1kjdpr5vU1r:APA91bHvL5iqPFaubfWfFFtppRMAGzhF36VSZGT5VRjZae6PHopgERYN9GQrvYdcrqDLqGS4-jjR_BiV5K4rcwMg3XPhBKXSo163Xk5049d6RKEoCsNoHZ-voNTP0dyG7LsT3uoMPe0H', 1614414122, 1622866435, NULL),
(10, 'fGT0MZ7_gFsOzxr--RvdVB:APA91bEVSK2y3L7ddEmt0-DQ0wjE3Y2x_eL7T_y0zPV_yxjqNdsTwf-9SXXffOLLg1aHVnHWg6UiUYiOoxPIBw0IjNhpkf0kHD9Hb5ML4LrEIaOlxA5EmLzFdyyQ_OEVW641kJEbyRHP', 1615228825, 1615228904, NULL),
(11, 'f4YBrKuoRFAL03ebcmyKU0:APA91bG4HyQPxukxnpYlqlmFEIr5rlEQuxrtTibC_gHk31zs4vlM6QqSMOR1UQU_RyLYX3XRnpTLAISN6esxrxQ36iis8IP-zlM-WAV8wpYt2pl3QbEgM-iL-wxNTy4bLK91GGANDiUQ', 1617863364, 1617863422, NULL),
(12, 'fRschpEIt3-MwDnVw_qIhK:APA91bHkW7aay8i27Q7pGM6Bmf7_kPM5DUXl722Qr_2Z9qxzpAEHSJx2HJjZkz1uCrnPHLrouH-0RFP62YKry0DRva7xuwC96pK_oK5WUVuvHnzCnzAmU0YhgMs0Rqaa7GPu8p2WVbgU', 1618308496, 1618309488, NULL),
(13, 'exEh2E0sHU9Edq4KvguLr9:APA91bFZ8IiOU7z1Cye0vJuXP7AbkkDWheggGYd6UxsyhqnlB_Rncs62p6SGAMqzrrXiznFONPJLNmon5BWKXcrOdukvnbelwKCcBU9OlIdTvCs_3W1lFzwlvpMZnr0kA1CDWUtFsnuD', 1618310300, 1618310300, NULL),
(14, 'ezDX73jlYGszQPiM9dZRsB:APA91bEa85SOy5v50e-wt2IKuMPxhmtcHQrOqm7bJ7uVHi3C5GZSYWc5fFGPjd6sPJRGrumnHooHllajjZvmy1dpZWe78ckYuyRAUK-0mOD9k1Q7FYqtw-RV4rytvuKtZCNJsk0YNAX-', 1618460630, 1618460629, NULL),
(15, 'cZGrL-Pe4lbEWVolTOG7q4:APA91bHUdHnnVJcS79Nh4fpChgD6WefeE4HtVWQAKFZKMBAbE0py6JaUwNpJSL_4EVew2uuCkl6_60e2x286Tdt14MxMhy0dab4N1jhtmVZoAsb3t_hUwiDvuyUZJSYg0xIqoLuwOUPI', 1618646834, 1618661955, NULL),
(16, 'clwVQiGhCgehjwI35b5dR1:APA91bHFm2sDxTi7aJ0p7sOgoC91RDAzYbJKsOCnbVBd8c9OuLu-cvcWl6IJLeM2Y9sromw0a3l39aOoZTNVTb_yVT6-GYwuc7_esWIoZO-w9CSUAnGU-9i9Bufrl2MdFsVVuI5gxxRQ', 1618807268, 1618812282, NULL),
(17, 'dcGlo4OQExVCTSEyWQHTUw:APA91bEU1HTT-vghDani0xTobrUXD-jq_iERJjagnkKo9o7YQR_tjeQUEtJ_icBte88m6F168Sei897Xsai1LMWPQp2Jvbb2dMYwp39QQ7jGd7PHOICt6q_ssJK44w0oWs-PGtbmxK9F', 1619611508, 1619614012, NULL),
(18, 'fTLED_bVeFYEsZ-v5EoPcl:APA91bG4rtVxoSVfiWESZXITLryY96yAnkwEdeTEGWwgdGXF5EHZieEhn2ZLa0fnSnOkeJBhjUjS2_ZRWlflBeO0BfHWZ8heUWDdfbt3q8KBkH4d1598DfvOQJ0-R7YcDSIgPiWjlFgQ', 1621514158, 1630567434, NULL),
(19, 'eAnGWUEj_Lr-jqQ_nrTrs4:APA91bGfE-HXVSr3a7nEsgIuUgVrCp_BojCLYXW2f0ljOjwh8kcJYE5e9TEJcYpuh1GAkCM2ZqMuqbF4H4_U8fDEJWeIKJDG0D7ZBIZc-eyZ4bklrx_4zWLYDSmRgl6j7Pm6Mk1VO4IQ', 1621595421, 1621600966, NULL),
(20, 'eAnGWUEj_Lr-jqQ_nrTrs4:APA91bH7xtsWisK-LVXl22ylSsE5YjgRXiC_Pt0rSdt_34VSUnIGI8umbTxlryldDJo8x-nxRQZTYGk1fpkSs0KGlvcgEY_XNva1_G1RUzltoOsW9eyumLW_CWqA7dA8GW0BTMgHjf2M', 1622635274, 1622635466, NULL),
(21, 'eeS2u0RPRNpDiYbDw3xhRp:APA91bEIU5KlwiOuEIKa6lAHqdq1_3xYJeTkYefdNNu7cXf2ruyiHLGfrVHIvMnpoP3AHej5-KakkQ-uOx1vVAVS5kmzhfUL77g1AhCAjj_YudDs6vo-KL55lucMVfcMwWOCOfgsF5wY', 1623051883, 1623051883, NULL),
(22, 'f-2yTsqkXYRmhUWuvuaKbk:APA91bH3ggfCV4KAk7Tvw0oG0Lf-rQJPxg6BdnXfThQtBvvdxaBlZ4UT38hzGdeN9cFphiKNUue5ZDI4hqb-LnYwwhmtOZq-twYBins971dCGR_1C4gqpvwZD-sTJKddCW7AtAxY4o_A', 1623495605, 1623497181, NULL),
(23, 'eJJWpUHP5m2uuWC86e6Rla:APA91bEyJcvH8mqnV5uMpaN-RKu3ElGrsCrqsd53RDrrudzXnemmaHukeFhfi6spMArA4oQ8hXq4SrSPj9mr8wqhEr45QNwH7uj8E4QlkNpA3tRLnrDCMtMPhGANNQRP_VzSYdCdeQ8O', 1630565396, 1630565406, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_reports`
--
ALTER TABLE `annual_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `campaign_management`
--
ALTER TABLE `campaign_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_management`
--
ALTER TABLE `career_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cause_management`
--
ALTER TABLE `cause_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_stories`
--
ALTER TABLE `featured_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_page_sections`
--
ALTER TABLE `footer_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_page_section_cards`
--
ALTER TABLE `footer_page_section_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_management`
--
ALTER TABLE `gallery_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_the_news`
--
ALTER TABLE `in_the_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_management`
--
ALTER TABLE `ngo_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partner_management`
--
ALTER TABLE `partner_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `press_releases`
--
ALTER TABLE `press_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_categories`
--
ALTER TABLE `primary_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`,`parent_id`) USING BTREE,
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `primary_pages`
--
ALTER TABLE `primary_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `primary_page_sections`
--
ALTER TABLE `primary_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_page_section_cards`
--
ALTER TABLE `primary_page_section_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_sub_pages`
--
ALTER TABLE `primary_sub_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource_management`
--
ALTER TABLE `resource_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `right_side_banners`
--
ALTER TABLE `right_side_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stories_of_hopes`
--
ALTER TABLE `stories_of_hopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `trustees`
--
ALTER TABLE `trustees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trustee_detail`
--
ALTER TABLE `trustee_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `web_firebase_tokens`
--
ALTER TABLE `web_firebase_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_reports`
--
ALTER TABLE `annual_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaign_management`
--
ALTER TABLE `campaign_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `career_management`
--
ALTER TABLE `career_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cause_management`
--
ALTER TABLE `cause_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_stories`
--
ALTER TABLE `featured_stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `footer_page_sections`
--
ALTER TABLE `footer_page_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `footer_page_section_cards`
--
ALTER TABLE `footer_page_section_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `gallery_management`
--
ALTER TABLE `gallery_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `in_the_news`
--
ALTER TABLE `in_the_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ngo_management`
--
ALTER TABLE `ngo_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partner_management`
--
ALTER TABLE `partner_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `press_releases`
--
ALTER TABLE `press_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `primary_categories`
--
ALTER TABLE `primary_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `primary_pages`
--
ALTER TABLE `primary_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `primary_page_sections`
--
ALTER TABLE `primary_page_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `primary_page_section_cards`
--
ALTER TABLE `primary_page_section_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `primary_sub_pages`
--
ALTER TABLE `primary_sub_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resource_management`
--
ALTER TABLE `resource_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `right_side_banners`
--
ALTER TABLE `right_side_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stories_of_hopes`
--
ALTER TABLE `stories_of_hopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `trustees`
--
ALTER TABLE `trustees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `trustee_detail`
--
ALTER TABLE `trustee_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `web_firebase_tokens`
--
ALTER TABLE `web_firebase_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
