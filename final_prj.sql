-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 11:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_prj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Theme', 7, 'add_theme'),
(26, 'Can change Theme', 7, 'change_theme'),
(27, 'Can delete Theme', 7, 'delete_theme'),
(28, 'Can view Theme', 7, 'view_theme'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add data', 9, 'add_data'),
(34, 'Can change data', 9, 'change_data'),
(35, 'Can delete data', 9, 'delete_data'),
(36, 'Can view data', 9, 'view_data'),
(37, 'Can add result', 10, 'add_result'),
(38, 'Can change result', 10, 'change_result'),
(39, 'Can delete result', 10, 'delete_result'),
(40, 'Can view result', 10, 'view_result'),
(41, 'Can add message', 11, 'add_message'),
(42, 'Can change message', 11, 'change_message'),
(43, 'Can delete message', 11, 'delete_message'),
(44, 'Can view message', 11, 'view_message'),
(45, 'Can add room', 12, 'add_room'),
(46, 'Can change room', 12, 'change_room'),
(47, 'Can delete room', 12, 'delete_room'),
(48, 'Can view room', 12, 'view_room'),
(49, 'Can add message', 13, 'add_message'),
(50, 'Can change message', 13, 'change_message'),
(51, 'Can delete message', 13, 'delete_message'),
(52, 'Can view message', 13, 'view_message'),
(53, 'Can add room', 14, 'add_room'),
(54, 'Can change room', 14, 'change_room'),
(55, 'Can delete room', 14, 'delete_room'),
(56, 'Can view room', 14, 'view_room');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$paUILlxCn6GHAkkeF3arMv$Dk/E7/DYIKeCAPPlIgGQgA2C3oGWwXCKKYQQcBeBd+k=', '2021-12-02 07:57:31.994388', 1, 'Admin12', '', '', 'essan8630@gmail.com', 1, 1, '2021-06-22 11:14:26.674012');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chatroom_message`
--

CREATE TABLE `chatroom_message` (
  `id` bigint(20) NOT NULL,
  `value` mediumtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `user` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `room_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatroom_message`
--

INSERT INTO `chatroom_message` (`id`, `value`, `date`, `user`, `category`, `room_id`) VALUES
(2, 'Hello My Friends', '2021-12-02 04:21:25.346221', 'admin', 'ham', 1),
(3, 'To claim your reward visit our website www.abc.com', '2021-12-02 04:21:51.326256', 'admin', 'spam', 1),
(4, 'Hello friends', '2021-12-02 07:15:56.821772', 'Ishan', 'ham', 1),
(5, 'Hello my name is Ishan.', '2021-12-02 07:15:56.821772', 'Ishan', 'ham', 1),
(6, 'Hello my name is Ishan.', '2021-12-02 07:53:51.280424', 'Ishan', 'ham', 2),
(7, '', '2021-12-02 07:53:51.284414', 'Ishan', 'ham', 2),
(8, 'Hello my name is Rahul\n', '2021-12-02 07:54:16.453008', 'Rahul', 'ham', 2),
(9, '', '2021-12-02 07:54:16.456001', 'Rahul', 'ham', 2),
(10, 'Hello Rahul', '2021-12-02 07:59:05.311199', 'Ishan', 'ham', 2),
(11, '', '2021-12-02 07:59:05.319176', 'Ishan', 'ham', 2),
(12, 'Nice to meet you', '2021-12-02 08:02:07.303468', 'Ishan', 'ham', 2),
(13, 'Now you can buy our products at 10 % discount. Visit our neareast store to know more', '2021-12-02 08:02:48.764077', 'Rahul', 'ham', 2),
(14, '', '2021-12-02 08:02:48.774053', 'Rahul', 'ham', 2),
(15, 'Claim your free coupon', '2021-12-02 08:03:26.573676', 'Ishan', 'spam', 2),
(16, 'Claim your prize at www', '2021-12-02 08:04:13.902666', 'Rahul', 'spam', 2),
(17, 'Hello adain', '2021-12-02 08:07:33.782861', 'Ishan', 'ham', 2);

-- --------------------------------------------------------

--
-- Table structure for table `chatroom_room`
--

CREATE TABLE `chatroom_room` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatroom_room`
--

INSERT INTO `chatroom_room` (`id`, `name`) VALUES
(1, 'Room1'),
(2, 'Room2');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-25 11:56:04.305408', '1', 'ham', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-06-25 11:56:09.915670', '2', 'spam', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-06-25 12:01:51.676606', '1', 'Go until jurong point, crazy.. Available only in bugis n great world la e buffet... Cine there got amore wat...', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-06-25 12:02:44.432246', '2', 'Ok lar... Joking wif u oni...', 1, '[{\"added\": {}}]', 9, 1),
(5, '2021-06-25 12:03:13.977103', '3', 'Free entry in 2 a wkly comp to win FA Cup final tkts 21st May 2005. Text FA to 87121 to receive entry question(std txt rate)T&C\'s apply 08452810075over18\'s', 1, '[{\"added\": {}}]', 9, 1),
(6, '2021-06-25 12:03:40.358798', '4', 'U dun say so early hor... U c already then say...', 1, '[{\"added\": {}}]', 9, 1),
(7, '2021-06-25 12:04:00.361164', '5', 'FreeMsg Hey there darling it\'s been 3 week\'s now and no word back! I\'d like some fun you up for it still? Tb ok! XxX std chgs to send, Â£1.50 to rcv', 1, '[{\"added\": {}}]', 9, 1),
(8, '2021-06-25 12:04:20.830139', '6', 'Even my brother is not like to speak with me. They treat me like aids patent.', 1, '[{\"added\": {}}]', 9, 1),
(9, '2021-06-25 12:06:34.762376', '7', 'Rofl. Its true to its name', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-06-25 12:07:01.524499', '8', 'As per your request \'Melle Melle (Oru Minnaminunginte Nurungu Vettam)\' has been set as your callertune for all Callers. Press *9 to copy your friends Callertune', 1, '[{\"added\": {}}]', 9, 1),
(11, '2021-06-25 12:07:28.676073', '9', 'WINNER!! As a valued network customer you have been selected to receivea Â£900 prize reward! To claim call 09061701461. Claim code KL341. Valid 12 hours only.', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-06-25 12:07:52.444779', '10', 'Had your mobile 11 months or more? U R entitled to Update to the latest colour mobiles with camera for Free! Call The Mobile Update Co FREE on 08002986030', 1, '[{\"added\": {}}]', 9, 1),
(13, '2021-06-25 12:08:11.299177', '11', 'I\'m gonna be home soon and i don\'t want to talk about this stuff anymore tonight, k? I\'ve cried enough today.', 1, '[{\"added\": {}}]', 9, 1),
(14, '2021-06-25 12:08:33.883252', '12', 'SIX chances to win CASH! From 100 to 20,000 pounds txt> CSH11 and send to 87575. Cost 150p/day, 6days, 16+ TsandCs apply Reply HL 4 info', 1, '[{\"added\": {}}]', 9, 1),
(15, '2021-06-25 12:08:55.670734', '13', 'URGENT! You have won a 1 week FREE membership in our Â£100,000 Prize Jackpot! Txt the word: CLAIM to No: 81010 T&C www.dbuk.net LCCLTD POBOX 4403LDNW1A7RW18', 1, '[{\"added\": {}}]', 9, 1),
(16, '2021-06-25 12:09:15.585446', '14', 'The guy did some bitching but I acted like i\'d be interested in buying something else next week and he gave it to us for free', 1, '[{\"added\": {}}]', 9, 1),
(17, '2021-06-25 12:09:56.034434', '15', 'I\'ve been searching for the right words to thank you for this breather. I promise i wont take your help for granted and will fulfil my promise. You have been wonderful and a', 1, '[{\"added\": {}}]', 9, 1),
(18, '2021-06-25 12:10:15.580011', '14', 'The guy did some bitching but I acted like i\'d be interested in buying something else next week and he gave it to us for free', 3, '', 9, 1),
(19, '2021-06-25 12:10:43.474706', '16', 'blessing at all times.', 1, '[{\"added\": {}}]', 9, 1),
(20, '2021-06-25 12:11:15.453932', '17', 'I HAVE A DATE ON SUNDAY WITH WILL!!', 1, '[{\"added\": {}}]', 9, 1),
(21, '2021-06-25 12:11:38.996046', '18', 'XXXMobileMovieClub: To use your credit, click the WAP link in the next txt message or click here>> http://wap. xxxmobilemovieclub.com?n=QJKGIGHJJGCBL', 1, '[{\"added\": {}}]', 9, 1),
(22, '2021-06-25 12:12:00.932907', '19', 'Oh k...i\'m watching here:)', 1, '[{\"added\": {}}]', 9, 1),
(23, '2021-06-25 12:12:38.460368', '20', 'Eh u remember how 2 spell his name... Yes i did. He v naughty make until i v wet.', 1, '[{\"added\": {}}]', 9, 1),
(24, '2021-06-25 12:12:56.248370', '21', 'Fine if thatÂ’s the way u feel. ThatÂ’s the way its gota b', 1, '[{\"added\": {}}]', 9, 1),
(25, '2021-06-25 12:13:15.665397', '22', 'England v Macedonia - dont miss the goals/team news. Txt ur national team to 87077 eg ENGLAND to 87077 Try:WALES, SCOTLAND 4txt/Ãº1.20 POBOXox36504W45WQ 16+', 1, '[{\"added\": {}}]', 9, 1),
(26, '2021-06-25 12:13:33.260824', '23', 'Is that seriously how you spell his name?', 1, '[{\"added\": {}}]', 9, 1),
(27, '2021-06-25 12:13:50.810655', '24', 'Aft i finish my lunch then i go str down lor. Ard 3 smth lor. U finish ur lunch already?', 1, '[{\"added\": {}}]', 9, 1),
(28, '2021-06-25 12:14:13.082523', '25', 'This is the 2nd time we have tried 2 contact u. U have won the Â£750 Pound prize. 2 claim is easy, call 087187272008 NOW1! Only 10p per minute. BT-national-rate.', 1, '[{\"added\": {}}]', 9, 1),
(29, '2021-06-25 12:14:45.967394', '26', 'Did you catch the bus ? Are you frying an egg ? Did you make a tea? Are you eating your mom\'s left over dinner ? Do you feel my Love ?', 1, '[{\"added\": {}}]', 9, 1),
(30, '2021-06-25 12:15:05.606348', '27', 'I\'m back &amp; we\'re packing the car now, I\'ll let you know if there\'s room', 1, '[{\"added\": {}}]', 9, 1),
(31, '2021-06-25 12:15:25.368184', '28', 'K tell me anything about you.', 1, '[{\"added\": {}}]', 9, 1),
(32, '2021-06-25 12:15:40.541432', '29', 'For fear of fainting with the of all that housework you just did? Quick have a cuppa', 1, '[{\"added\": {}}]', 9, 1),
(33, '2021-06-25 12:15:58.149391', '30', 'Thanks for your subscription to Ringtone UK your mobile will be charged Â£5/month Please confirm by replying YES or NO. If you reply NO you will not be charged', 1, '[{\"added\": {}}]', 9, 1),
(34, '2021-06-25 12:16:17.666120', '31', 'Oops, I\'ll let you know when my roommate\'s done', 1, '[{\"added\": {}}]', 9, 1),
(35, '2021-06-25 12:21:50.969261', '32', 'I see the letter B on my car', 1, '[{\"added\": {}}]', 9, 1),
(36, '2021-06-25 12:22:08.784310', '33', 'Anything lor... U decide...', 1, '[{\"added\": {}}]', 9, 1),
(37, '2021-06-25 12:22:25.962631', '34', 'Hello! How\'s you and how did saturday go? I was just texting to see if you\'d decided to do anything tomo. Not that i\'m trying to invite myself or anything!', 1, '[{\"added\": {}}]', 9, 1),
(38, '2021-06-25 12:22:46.164374', '35', 'Pls go ahead with watts. I just wanted to be sure. Do have a great weekend. Abiola', 1, '[{\"added\": {}}]', 9, 1),
(39, '2021-06-25 12:23:28.149759', '36', 'SMS. ac Sptv: The New Jersey Devils and the Detroit Red Wings play Ice Hockey. Correct or Incorrect? End? Reply END SPTV', 1, '[{\"added\": {}}]', 9, 1),
(40, '2021-06-25 12:23:44.517413', '37', 'Do you know what Mallika Sherawat did yesterday? Find out now @  &lt;URL&gt;', 1, '[{\"added\": {}}]', 9, 1),
(41, '2021-06-25 12:24:01.676501', '38', 'Congrats! 1 year special cinema pass for 2 is yours. call 09061209465 now! C Suprman V, Matrix3, StarWars3, etc all 4 FREE! bx420-ip4-5we. 150pm. Dont miss out!', 1, '[{\"added\": {}}]', 9, 1),
(42, '2021-06-25 12:24:16.740492', '39', 'Sorry, I\'ll call later in meeting.', 1, '[{\"added\": {}}]', 9, 1),
(43, '2021-06-25 12:24:33.732493', '40', 'Tell where you reached', 1, '[{\"added\": {}}]', 9, 1),
(44, '2021-06-25 12:24:49.138696', '41', 'Yes..gauti and sehwag out of odi series.', 1, '[{\"added\": {}}]', 9, 1),
(45, '2021-06-25 12:25:04.011104', '42', 'Your gonna have to pick up a $1 burger for yourself on your way home. I can\'t even move. Pain is killing me.', 1, '[{\"added\": {}}]', 9, 1),
(46, '2021-06-25 12:25:20.021738', '43', 'Ha ha ha good joke. Girls are situation seekers.', 1, '[{\"added\": {}}]', 9, 1),
(47, '2021-06-25 12:26:03.362853', '44', 'Its a part of checking IQ', 1, '[{\"added\": {}}]', 9, 1),
(48, '2021-06-25 12:26:19.373383', '45', 'Sorry my roommates took forever, it ok if I come by now?', 1, '[{\"added\": {}}]', 9, 1),
(49, '2021-06-25 12:26:44.212754', '46', 'Ok lar i double check wif da hair dresser already he said wun cut v short. He said will cut until i look nice.', 1, '[{\"added\": {}}]', 9, 1),
(50, '2021-06-25 12:27:03.208250', '47', 'As a valued customer, I am pleased to advise you that following recent review of your Mob No. you are awarded with a Â£1500 Bonus Prize, call 09066364589', 1, '[{\"added\": {}}]', 9, 1),
(51, '2021-06-25 12:27:22.332764', '48', 'Today is \"song dedicated day..\" Which song will u dedicate for me? Send this to all ur valuable frnds but first rply me...', 1, '[{\"added\": {}}]', 9, 1),
(52, '2021-06-25 12:27:52.679694', '49', 'Urgent UR awarded a complimentary trip to EuroDisinc Trav, Aco&Entry41 Or Â£1000. To claim txt DIS to 87121 18+6*Â£1.50(moreFrmMob. ShrAcomOrSglSuplt)10, LS1 3AJ', 1, '[{\"added\": {}}]', 9, 1),
(53, '2021-06-25 12:28:10.443519', '50', 'Did you hear about the new \"Divorce Barbie\"? It comes with all of Ken\'s stuff!', 1, '[{\"added\": {}}]', 9, 1),
(54, '2021-06-25 12:28:44.960586', '51', 'I plane to give on this month end.', 1, '[{\"added\": {}}]', 9, 1),
(55, '2021-06-25 12:29:02.809557', '52', 'Wah lucky man... Then can save money... Hee...', 1, '[{\"added\": {}}]', 9, 1),
(56, '2021-06-25 12:29:16.742766', '53', 'Finished class where are you.', 1, '[{\"added\": {}}]', 9, 1),
(57, '2021-06-25 12:29:32.681774', '54', 'HI BABE IM AT HOME NOW WANNA DO SOMETHING? XX', 1, '[{\"added\": {}}]', 9, 1),
(58, '2021-06-25 12:29:46.458368', '55', 'K..k:)where are you?how did you performed?', 1, '[{\"added\": {}}]', 9, 1),
(59, '2021-06-25 12:30:03.561930', '56', 'Thats cool. i am a gentleman and will treat you with dignity and respect.', 1, '[{\"added\": {}}]', 9, 1),
(60, '2021-06-25 12:37:12.952545', '57', 'I like you peoples very much:) but am very shy pa.', 1, '[{\"added\": {}}]', 9, 1),
(61, '2021-06-25 12:37:30.071677', '58', 'Does not operate after  &lt;#&gt;  or what', 1, '[{\"added\": {}}]', 9, 1),
(62, '2021-06-25 12:37:45.244381', '59', 'Its not the same here. Still looking for a job. How much do Ta\'s earn there.', 1, '[{\"added\": {}}]', 9, 1),
(63, '2021-06-25 12:37:59.787771', '60', 'Sorry, I\'ll call later', 1, '[{\"added\": {}}]', 9, 1),
(64, '2021-06-25 12:38:14.460450', '61', 'K. Did you call me just now ah?', 1, '[{\"added\": {}}]', 9, 1),
(65, '2021-06-25 12:38:30.306212', '62', 'Ok i am on the way to home hi hi', 1, '[{\"added\": {}}]', 9, 1),
(66, '2021-06-25 12:38:44.591967', '63', 'You will be in the place of that man', 1, '[{\"added\": {}}]', 9, 1),
(67, '2021-06-25 12:39:01.863499', '64', 'Yup next stop.', 1, '[{\"added\": {}}]', 9, 1),
(68, '2021-06-25 12:39:21.119195', '65', 'I call you later, don\'t have network. If urgnt, sms me.', 1, '[{\"added\": {}}]', 9, 1),
(69, '2021-06-25 12:39:36.219537', '66', 'For real when u getting on yo? I only need 2 more tickets and one more jacket and I\'m done. I already used all my multis.', 1, '[{\"added\": {}}]', 9, 1),
(70, '2021-06-25 12:39:52.171680', '67', 'Yes I started to send requests to make it but pain came back so I\'m back in bed. Double coins at the factory too. I gotta cash in all my nitros.', 1, '[{\"added\": {}}]', 9, 1),
(71, '2021-06-25 12:40:10.144317', '68', 'Sorry to be a pain. Is it ok if we meet another night? I spent late afternoon in casualty and that means i haven\'t done any of y stuff42moro and that includes all my time sheets and that. Sorry.', 1, '[{\"added\": {}}]', 9, 1),
(72, '2021-06-25 12:40:28.175423', '69', 'Smile in Pleasure Smile in Pain Smile when trouble pours like Rain Smile when sum1 Hurts U Smile becoz SOMEONE still Loves to see u Smiling!!', 1, '[{\"added\": {}}]', 9, 1),
(73, '2021-06-25 12:40:44.912593', '70', 'Please call our customer service representative on 0800 169 6031 between 10am-9pm as you have WON a guaranteed Â£1000 cash or Â£5000 prize!', 1, '[{\"added\": {}}]', 9, 1),
(74, '2021-06-25 12:41:25.190139', '71', 'Havent planning to buy later. I check already lido only got 530 show in e afternoon. U finish work already?', 1, '[{\"added\": {}}]', 9, 1),
(75, '2021-06-25 12:41:41.252058', '72', 'Your free ringtone is waiting to be collected. Simply text the password \"MIX\" to 85069 to verify. Get Usher and Britney. FML, PO Box 5249, MK17 92H. 450Ppw 16', 1, '[{\"added\": {}}]', 9, 1),
(76, '2021-06-25 12:41:55.187547', '73', 'Watching telugu movie..wat abt u?', 1, '[{\"added\": {}}]', 9, 1),
(77, '2021-06-25 12:42:14.737155', '74', 'GENT! We are trying to contact you. Last weekends draw shows that you won a Â£1000 prize GUARANTEED. Call 09064012160. Claim Code K52. Valid 12hrs only. 150ppm', 1, '[{\"added\": {}}]', 9, 1),
(78, '2021-06-25 12:42:29.894402', '75', 'Wa, ur openin sentence very formal... Anyway, i\'m fine too, juz tt i\'m eatin too much n puttin on weight...Haha... So anythin special happened?', 1, '[{\"added\": {}}]', 9, 1),
(79, '2021-06-25 12:43:12.279206', '76', 'As I entered my cabin my PA said, \'\' Happy B\'day Boss !!\'\'. I felt special. She askd me 4 lunch. After lunch she invited me to her apartment. We went there.', 1, '[{\"added\": {}}]', 9, 1),
(80, '2021-06-25 12:43:28.665302', '77', 'You are a winner U have been specially selected 2 receive Â£1000 or a 4* holiday (flights inc) speak to a live operator 2 claim 0871277810910p/min (18+)', 1, '[{\"added\": {}}]', 9, 1),
(81, '2021-06-25 12:43:47.276671', '78', 'Goodo! Yes we must speak friday - egg-potato ratio for tortilla needed!', 1, '[{\"added\": {}}]', 9, 1),
(82, '2021-06-25 12:44:01.557575', '79', 'Hmm...my uncle just informed me that he\'s paying the school directly. So pls buy food.', 1, '[{\"added\": {}}]', 9, 1),
(83, '2021-06-25 12:44:15.279194', '80', 'PRIVATE! Your 2004 Account Statement for 07742676969 shows 786 unredeemed Bonus Points. To claim call 08719180248 Identifier Code: 45239 Expires', 1, '[{\"added\": {}}]', 9, 1),
(84, '2021-06-25 12:44:32.345178', '81', 'URGENT! Your Mobile No. was awarded Â£2000 Bonus Caller Prize on 5/9/03 This is our final try to contact U! Call from Landline 09064019788 BOX42WR29C, 150PPM', 1, '[{\"added\": {}}]', 9, 1),
(85, '2021-06-25 12:45:26.016993', '82', 'Are you unique enough? Find out from 30th August. www.areyouunique.co.uk', 1, '[{\"added\": {}}]', 9, 1),
(86, '2021-06-25 12:45:54.963616', '83', '500 New Mobiles from 2004, MUST GO! Txt: NOKIA to No: 89545 & collect yours today!From ONLY Â£1 www.4-tc.biz 2optout 087187262701.50gbp/mtmsg18', 1, '[{\"added\": {}}]', 9, 1),
(87, '2021-06-25 12:47:41.414283', '84', 'Sorry, I\'ll call later', 1, '[{\"added\": {}}]', 9, 1),
(88, '2021-06-25 12:48:01.805661', '85', 'Text & meet someone sexy today. U can find a date or even flirt its up to U. Join 4 just 10p. REPLY with NAME & AGE eg Sam 25. 18 -msg recd@thirtyeight pence', 1, '[{\"added\": {}}]', 9, 1),
(89, '2021-06-25 12:48:17.735748', '86', 'U 447801259231 have a secret admirer who is looking 2 make contact with U-find out who they R*reveal who thinks UR so special-call on 09058094597', 1, '[{\"added\": {}}]', 9, 1),
(90, '2021-06-25 12:48:34.827347', '87', 'Tomarrow final hearing on my laptop case so i cant.', 1, '[{\"added\": {}}]', 9, 1),
(91, '2021-06-25 12:48:49.050763', '88', 'PLEASSSSSSSEEEEEE TEL ME V AVENT DONE SPORTSx', 1, '[{\"added\": {}}]', 9, 1),
(92, '2021-06-25 12:49:05.557755', '89', 'I\'m going for bath will msg you next  &lt;#&gt;  min..', 1, '[{\"added\": {}}]', 9, 1),
(93, '2021-06-25 12:49:29.004182', '90', 'REMINDER FROM O2: To get 2.50 pounds free call credit and details of great offers pls reply 2 this text with your valid name, house no and postcode', 1, '[{\"added\": {}}]', 9, 1),
(94, '2021-06-25 12:49:46.093720', '91', 'Why don\'t you wait \'til at least wednesday to see if you get your .', 1, '[{\"added\": {}}]', 9, 1),
(95, '2021-06-25 12:50:01.220413', '92', 'Ooooooh I forgot to tell u I can get on yoville on my phone', 1, '[{\"added\": {}}]', 9, 1),
(96, '2021-06-25 12:50:17.878121', '93', 'The current leading bid is 151. To pause this auction send OUT. Customer Care: 08718726270', 1, '[{\"added\": {}}]', 9, 1),
(97, '2021-06-25 12:50:39.338584', '94', 'Camera - You are awarded a SiPix Digital Camera! call 09061221066 fromm landline. Delivery within 28 days.', 1, '[{\"added\": {}}]', 9, 1),
(98, '2021-06-25 12:50:39.635603', '95', 'Camera - You are awarded a SiPix Digital Camera! call 09061221066 fromm landline. Delivery within 28 days.', 1, '[{\"added\": {}}]', 9, 1),
(99, '2021-06-25 12:51:00.569559', '96', 'Are u awake? Is there snow there?', 1, '[{\"added\": {}}]', 9, 1),
(100, '2021-06-25 12:51:25.485793', '97', 'I can\'t make it tonight', 1, '[{\"added\": {}}]', 9, 1),
(101, '2021-06-25 12:51:38.652044', '98', 'At WHAT TIME should i come tomorrow', 1, '[{\"added\": {}}]', 9, 1),
(102, '2021-06-25 12:51:59.623750', '99', 'XMAS iscoming & ur awarded either Â£500 CD gift vouchers & free entry 2 r Â£100 weekly draw txt MUSIC to 87066 TnC www.Ldew.com1win150ppmx3age16subscription', 1, '[{\"added\": {}}]', 9, 1),
(103, '2021-06-25 12:52:18.667939', '100', 'URGENT! Your Mobile number has been awarded with a Â£2000 prize GUARANTEED. Call 09061790126 from land line. Claim 3030. Valid 12hrs only 150ppm', 1, '[{\"added\": {}}]', 9, 1),
(104, '2021-06-25 12:52:35.428683', '101', 'So u wan 2 come for our dinner tonight a not?', 1, '[{\"added\": {}}]', 9, 1),
(105, '2021-06-25 12:53:03.511587', '102', 'If you don\'t, your prize will go to another customer. T&C at www.t-c.biz 18+ 150p/min Polo Ltd Suite 373 London W1J 6HL Please call back if busy', 1, '[{\"added\": {}}]', 9, 1),
(106, '2021-12-02 04:32:17.067071', '1', 'Message object (1)', 3, '', 13, 1),
(107, '2021-12-02 07:24:09.524048', '4', 'Message object (4)', 2, '[{\"changed\": {\"fields\": [\"Value\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'chatapp', 'message'),
(12, 'chatapp', 'room'),
(13, 'chatroom', 'message'),
(14, 'chatroom', 'room'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'SpamIdentification', 'category'),
(9, 'SpamIdentification', 'data'),
(10, 'SpamIdentification', 'result');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-22 11:08:00.707360'),
(2, 'auth', '0001_initial', '2021-06-22 11:08:16.317144'),
(3, 'admin', '0001_initial', '2021-06-22 11:08:20.382869'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-22 11:08:20.535925'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-22 11:08:20.636528'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-22 11:08:22.312962'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-22 11:08:24.687424'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-22 11:08:24.843656'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-22 11:08:24.921764'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-22 11:08:26.000042'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-22 11:08:26.078159'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-22 11:08:26.140642'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-22 11:08:26.718626'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-22 11:08:27.468444'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-22 11:08:27.765255'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-22 11:08:27.843400'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-22 11:08:27.999570'),
(18, 'sessions', '0001_initial', '2021-06-22 11:08:28.968144'),
(19, 'admin_interface', '0001_initial', '2021-06-22 11:26:29.579899'),
(20, 'admin_interface', '0002_add_related_modal', '2021-06-22 11:26:30.548458'),
(21, 'admin_interface', '0003_add_logo_color', '2021-06-22 11:26:30.782742'),
(22, 'admin_interface', '0004_rename_title_color', '2021-06-22 11:26:30.954612'),
(23, 'admin_interface', '0005_add_recent_actions_visible', '2021-06-22 11:26:31.188903'),
(24, 'admin_interface', '0006_bytes_to_str', '2021-06-22 11:26:31.423206'),
(25, 'admin_interface', '0007_add_favicon', '2021-06-22 11:26:31.938718'),
(26, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2021-06-22 11:26:32.251186'),
(27, 'admin_interface', '0009_add_enviroment', '2021-06-22 11:26:32.985400'),
(28, 'admin_interface', '0010_add_localization', '2021-06-22 11:26:33.094692'),
(29, 'admin_interface', '0011_add_environment_options', '2021-06-22 11:26:33.969491'),
(30, 'admin_interface', '0012_update_verbose_names', '2021-06-22 11:26:34.032032'),
(31, 'admin_interface', '0013_add_related_modal_close_button', '2021-06-22 11:26:34.235056'),
(32, 'admin_interface', '0014_name_unique', '2021-06-22 11:26:34.484990'),
(33, 'admin_interface', '0015_add_language_chooser_active', '2021-06-22 11:26:34.719310'),
(34, 'admin_interface', '0016_add_language_chooser_display', '2021-06-22 11:26:35.328595'),
(35, 'admin_interface', '0017_change_list_filter_dropdown', '2021-06-22 11:26:35.406647'),
(36, 'admin_interface', '0018_theme_list_filter_sticky', '2021-06-22 11:26:35.625362'),
(37, 'admin_interface', '0019_add_form_sticky', '2021-06-22 11:26:36.468952'),
(38, 'admin_interface', '0020_module_selected_colors', '2021-06-22 11:26:37.484331'),
(39, 'admin_interface', '0021_file_extension_validator', '2021-06-22 11:26:37.562394'),
(40, 'SpamIdentification', '0001_initial', '2021-06-25 11:50:39.810160'),
(41, 'SpamIdentification', '0002_result', '2021-11-18 12:03:05.959859'),
(42, 'SpamIdentification', '0003_delete_result', '2021-11-19 07:13:54.105390'),
(43, 'chatapp', '0001_initial', '2021-12-01 11:34:44.175954'),
(44, 'chatroom', '0001_initial', '2021-12-01 12:16:19.730105'),
(45, 'ChatRoom', '0001_initial', '2021-12-02 03:34:55.367549'),
(46, 'ChatRoom', '0002_alter_message_category', '2021-12-02 04:19:38.658105');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2opfvfi1t278wzhmezddgk3g4lwr8xn6', '.eJxVjDsOwjAQBe_iGller7-U9JzB8meNA8iR4qRC3B0ipYD2zcx7sRC3tYVt0BKmws4M2Ol3SzE_qO-g3GO_zTzPfV2mxHeFH3Tw61zoeTncv4MWR_vWmIWPUD0JXQC1QG1z8lI54cAkZyxUUpStQLKmoAMho1dYs3IWpSf2_gC8nja7:1msPYY:ymKvKZACv4TYsTLSpp7GdgvK7WC9ghLXz_HUZGGN57E', '2021-12-15 13:21:54.392908');

-- --------------------------------------------------------

--
-- Table structure for table `spamidentification_category`
--

CREATE TABLE `spamidentification_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spamidentification_category`
--

INSERT INTO `spamidentification_category` (`id`, `name`) VALUES
(1, 'ham'),
(2, 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `spamidentification_data`
--

CREATE TABLE `spamidentification_data` (
  `id` bigint(20) NOT NULL,
  `message` varchar(250) NOT NULL,
  `dateAdded` date NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spamidentification_data`
--

INSERT INTO `spamidentification_data` (`id`, `message`, `dateAdded`, `category_id`) VALUES
(1, 'Go until jurong point, crazy.. Available only in bugis n great world la e buffet... Cine there got amore wat...', '2021-06-25', 1),
(2, 'Ok lar... Joking wif u oni...', '2021-06-25', 1),
(3, 'Free entry in 2 a wkly comp to win FA Cup final tkts 21st May 2005. Text FA to 87121 to receive entry question(std txt rate)T&C\'s apply 08452810075over18\'s', '2021-06-25', 2),
(4, 'U dun say so early hor... U c already then say...', '2021-06-25', 1),
(5, 'FreeMsg Hey there darling it\'s been 3 week\'s now and no word back! I\'d like some fun you up for it still? Tb ok! XxX std chgs to send, Â£1.50 to rcv', '2021-06-25', 2),
(6, 'Even my brother is not like to speak with me. They treat me like aids patent.', '2021-06-25', 1),
(7, 'Rofl. Its true to its name', '2021-06-25', 1),
(8, 'As per your request \'Melle Melle (Oru Minnaminunginte Nurungu Vettam)\' has been set as your callertune for all Callers. Press *9 to copy your friends Callertune', '2021-06-25', 1),
(9, 'WINNER!! As a valued network customer you have been selected to receivea Â£900 prize reward! To claim call 09061701461. Claim code KL341. Valid 12 hours only.', '2021-06-25', 2),
(10, 'Had your mobile 11 months or more? U R entitled to Update to the latest colour mobiles with camera for Free! Call The Mobile Update Co FREE on 08002986030', '2021-06-25', 2),
(11, 'I\'m gonna be home soon and i don\'t want to talk about this stuff anymore tonight, k? I\'ve cried enough today.', '2021-06-25', 1),
(12, 'SIX chances to win CASH! From 100 to 20,000 pounds txt> CSH11 and send to 87575. Cost 150p/day, 6days, 16+ TsandCs apply Reply HL 4 info', '2021-06-25', 2),
(13, 'URGENT! You have won a 1 week FREE membership in our Â£100,000 Prize Jackpot! Txt the word: CLAIM to No: 81010 T&C www.dbuk.net LCCLTD POBOX 4403LDNW1A7RW18', '2021-06-25', 2),
(15, 'I\'ve been searching for the right words to thank you for this breather. I promise i wont take your help for granted and will fulfil my promise. You have been wonderful and a', '2021-06-25', 1),
(16, 'blessing at all times.', '2021-06-25', 1),
(17, 'I HAVE A DATE ON SUNDAY WITH WILL!!', '2021-06-25', 1),
(18, 'XXXMobileMovieClub: To use your credit, click the WAP link in the next txt message or click here>> http://wap. xxxmobilemovieclub.com?n=QJKGIGHJJGCBL', '2021-06-25', 2),
(19, 'Oh k...i\'m watching here:)', '2021-06-25', 1),
(20, 'Eh u remember how 2 spell his name... Yes i did. He v naughty make until i v wet.', '2021-06-25', 1),
(21, 'Fine if thatÂ’s the way u feel. ThatÂ’s the way its gota b', '2021-06-25', 1),
(22, 'England v Macedonia - dont miss the goals/team news. Txt ur national team to 87077 eg ENGLAND to 87077 Try:WALES, SCOTLAND 4txt/Ãº1.20 POBOXox36504W45WQ 16+', '2021-06-25', 2),
(23, 'Is that seriously how you spell his name?', '2021-06-25', 1),
(24, 'Aft i finish my lunch then i go str down lor. Ard 3 smth lor. U finish ur lunch already?', '2021-06-25', 1),
(25, 'This is the 2nd time we have tried 2 contact u. U have won the Â£750 Pound prize. 2 claim is easy, call 087187272008 NOW1! Only 10p per minute. BT-national-rate.', '2021-06-25', 2),
(26, 'Did you catch the bus ? Are you frying an egg ? Did you make a tea? Are you eating your mom\'s left over dinner ? Do you feel my Love ?', '2021-06-25', 1),
(27, 'I\'m back &amp; we\'re packing the car now, I\'ll let you know if there\'s room', '2021-06-25', 1),
(28, 'K tell me anything about you.', '2021-06-25', 1),
(29, 'For fear of fainting with the of all that housework you just did? Quick have a cuppa', '2021-06-25', 1),
(30, 'Thanks for your subscription to Ringtone UK your mobile will be charged Â£5/month Please confirm by replying YES or NO. If you reply NO you will not be charged', '2021-06-25', 2),
(31, 'Oops, I\'ll let you know when my roommate\'s done', '2021-06-25', 1),
(32, 'I see the letter B on my car', '2021-06-25', 1),
(33, 'Anything lor... U decide...', '2021-06-25', 1),
(34, 'Hello! How\'s you and how did saturday go? I was just texting to see if you\'d decided to do anything tomo. Not that i\'m trying to invite myself or anything!', '2021-06-25', 1),
(35, 'Pls go ahead with watts. I just wanted to be sure. Do have a great weekend. Abiola', '2021-06-25', 1),
(36, 'SMS. ac Sptv: The New Jersey Devils and the Detroit Red Wings play Ice Hockey. Correct or Incorrect? End? Reply END SPTV', '2021-06-25', 2),
(37, 'Do you know what Mallika Sherawat did yesterday? Find out now @  &lt;URL&gt;', '2021-06-25', 1),
(38, 'Congrats! 1 year special cinema pass for 2 is yours. call 09061209465 now! C Suprman V, Matrix3, StarWars3, etc all 4 FREE! bx420-ip4-5we. 150pm. Dont miss out!', '2021-06-25', 2),
(39, 'Sorry, I\'ll call later in meeting.', '2021-06-25', 1),
(40, 'Tell where you reached', '2021-06-25', 1),
(41, 'Yes..gauti and sehwag out of odi series.', '2021-06-25', 1),
(42, 'Your gonna have to pick up a $1 burger for yourself on your way home. I can\'t even move. Pain is killing me.', '2021-06-25', 1),
(43, 'Ha ha ha good joke. Girls are situation seekers.', '2021-06-25', 1),
(44, 'Its a part of checking IQ', '2021-06-25', 1),
(45, 'Sorry my roommates took forever, it ok if I come by now?', '2021-06-25', 1),
(46, 'Ok lar i double check wif da hair dresser already he said wun cut v short. He said will cut until i look nice.', '2021-06-25', 1),
(47, 'As a valued customer, I am pleased to advise you that following recent review of your Mob No. you are awarded with a Â£1500 Bonus Prize, call 09066364589', '2021-06-25', 2),
(48, 'Today is \"song dedicated day..\" Which song will u dedicate for me? Send this to all ur valuable frnds but first rply me...', '2021-06-25', 1),
(49, 'Urgent UR awarded a complimentary trip to EuroDisinc Trav, Aco&Entry41 Or Â£1000. To claim txt DIS to 87121 18+6*Â£1.50(moreFrmMob. ShrAcomOrSglSuplt)10, LS1 3AJ', '2021-06-25', 2),
(50, 'Did you hear about the new \"Divorce Barbie\"? It comes with all of Ken\'s stuff!', '2021-06-25', 2),
(51, 'I plane to give on this month end.', '2021-06-25', 1),
(52, 'Wah lucky man... Then can save money... Hee...', '2021-06-25', 1),
(53, 'Finished class where are you.', '2021-06-25', 1),
(54, 'HI BABE IM AT HOME NOW WANNA DO SOMETHING? XX', '2021-06-25', 1),
(55, 'K..k:)where are you?how did you performed?', '2021-06-25', 1),
(56, 'Thats cool. i am a gentleman and will treat you with dignity and respect.', '2021-06-25', 1),
(57, 'I like you peoples very much:) but am very shy pa.', '2021-06-25', 1),
(58, 'Does not operate after  &lt;#&gt;  or what', '2021-06-25', 1),
(59, 'Its not the same here. Still looking for a job. How much do Ta\'s earn there.', '2021-06-25', 1),
(60, 'Sorry, I\'ll call later', '2021-06-25', 1),
(61, 'K. Did you call me just now ah?', '2021-06-25', 1),
(62, 'Ok i am on the way to home hi hi', '2021-06-25', 1),
(63, 'You will be in the place of that man', '2021-06-25', 1),
(64, 'Yup next stop.', '2021-06-25', 1),
(65, 'I call you later, don\'t have network. If urgnt, sms me.', '2021-06-25', 1),
(66, 'For real when u getting on yo? I only need 2 more tickets and one more jacket and I\'m done. I already used all my multis.', '2021-06-25', 1),
(67, 'Yes I started to send requests to make it but pain came back so I\'m back in bed. Double coins at the factory too. I gotta cash in all my nitros.', '2021-06-25', 1),
(68, 'Sorry to be a pain. Is it ok if we meet another night? I spent late afternoon in casualty and that means i haven\'t done any of y stuff42moro and that includes all my time sheets and that. Sorry.', '2021-06-25', 1),
(69, 'Smile in Pleasure Smile in Pain Smile when trouble pours like Rain Smile when sum1 Hurts U Smile becoz SOMEONE still Loves to see u Smiling!!', '2021-06-25', 1),
(70, 'Please call our customer service representative on 0800 169 6031 between 10am-9pm as you have WON a guaranteed Â£1000 cash or Â£5000 prize!', '2021-06-25', 2),
(71, 'Havent planning to buy later. I check already lido only got 530 show in e afternoon. U finish work already?', '2021-06-25', 1),
(72, 'Your free ringtone is waiting to be collected. Simply text the password \"MIX\" to 85069 to verify. Get Usher and Britney. FML, PO Box 5249, MK17 92H. 450Ppw 16', '2021-06-25', 2),
(73, 'Watching telugu movie..wat abt u?', '2021-06-25', 1),
(74, 'GENT! We are trying to contact you. Last weekends draw shows that you won a Â£1000 prize GUARANTEED. Call 09064012160. Claim Code K52. Valid 12hrs only. 150ppm', '2021-06-25', 2),
(75, 'Wa, ur openin sentence very formal... Anyway, i\'m fine too, juz tt i\'m eatin too much n puttin on weight...Haha... So anythin special happened?', '2021-06-25', 1),
(76, 'As I entered my cabin my PA said, \'\' Happy B\'day Boss !!\'\'. I felt special. She askd me 4 lunch. After lunch she invited me to her apartment. We went there.', '2021-06-25', 1),
(77, 'You are a winner U have been specially selected 2 receive Â£1000 or a 4* holiday (flights inc) speak to a live operator 2 claim 0871277810910p/min (18+)', '2021-06-25', 2),
(78, 'Goodo! Yes we must speak friday - egg-potato ratio for tortilla needed!', '2021-06-25', 1),
(79, 'Hmm...my uncle just informed me that he\'s paying the school directly. So pls buy food.', '2021-06-25', 1),
(80, 'PRIVATE! Your 2004 Account Statement for 07742676969 shows 786 unredeemed Bonus Points. To claim call 08719180248 Identifier Code: 45239 Expires', '2021-06-25', 2),
(81, 'URGENT! Your Mobile No. was awarded Â£2000 Bonus Caller Prize on 5/9/03 This is our final try to contact U! Call from Landline 09064019788 BOX42WR29C, 150PPM', '2021-06-25', 2),
(82, 'Are you unique enough? Find out from 30th August. www.areyouunique.co.uk', '2021-06-25', 2),
(83, '500 New Mobiles from 2004, MUST GO! Txt: NOKIA to No: 89545 & collect yours today!From ONLY Â£1 www.4-tc.biz 2optout 087187262701.50gbp/mtmsg18', '2021-06-25', 2),
(84, 'Sorry, I\'ll call later', '2021-06-25', 1),
(85, 'Text & meet someone sexy today. U can find a date or even flirt its up to U. Join 4 just 10p. REPLY with NAME & AGE eg Sam 25. 18 -msg recd@thirtyeight pence', '2021-06-25', 2),
(86, 'U 447801259231 have a secret admirer who is looking 2 make contact with U-find out who they R*reveal who thinks UR so special-call on 09058094597', '2021-06-25', 2),
(87, 'Tomarrow final hearing on my laptop case so i cant.', '2021-06-25', 1),
(88, 'PLEASSSSSSSEEEEEE TEL ME V AVENT DONE SPORTSx', '2021-06-25', 1),
(89, 'I\'m going for bath will msg you next  &lt;#&gt;  min..', '2021-06-25', 1),
(90, 'REMINDER FROM O2: To get 2.50 pounds free call credit and details of great offers pls reply 2 this text with your valid name, house no and postcode', '2021-06-25', 2),
(91, 'Why don\'t you wait \'til at least wednesday to see if you get your .', '2021-06-25', 1),
(92, 'Ooooooh I forgot to tell u I can get on yoville on my phone', '2021-06-25', 1),
(93, 'The current leading bid is 151. To pause this auction send OUT. Customer Care: 08718726270', '2021-06-25', 2),
(94, 'Camera - You are awarded a SiPix Digital Camera! call 09061221066 fromm landline. Delivery within 28 days.', '2021-06-25', 2),
(95, 'Camera - You are awarded a SiPix Digital Camera! call 09061221066 fromm landline. Delivery within 28 days.', '2021-06-25', 2),
(96, 'Are u awake? Is there snow there?', '2021-06-25', 1),
(97, 'I can\'t make it tonight', '2021-06-25', 1),
(98, 'At WHAT TIME should i come tomorrow', '2021-06-25', 1),
(99, 'XMAS iscoming & ur awarded either Â£500 CD gift vouchers & free entry 2 r Â£100 weekly draw txt MUSIC to 87066 TnC www.Ldew.com1win150ppmx3age16subscription', '2021-06-25', 2),
(100, 'URGENT! Your Mobile number has been awarded with a Â£2000 prize GUARANTEED. Call 09061790126 from land line. Claim 3030. Valid 12hrs only 150ppm', '2021-06-25', 2),
(101, 'So u wan 2 come for our dinner tonight a not?', '2021-06-25', 1),
(102, 'If you don\'t, your prize will go to another customer. T&C at www.t-c.biz 18+ 150p/min Polo Ltd Suite 373 London W1J 6HL Please call back if busy', '2021-06-25', 2),
(111, 'This is to inform you that the meeting scheduled for tommrrow has been rescheduled for sunday at the same time.', '2021-10-07', 1),
(113, 'ewweqq', '2021-11-18', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chatroom_message`
--
ALTER TABLE `chatroom_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ChatRoom_message_room_id_52609eb7_fk_ChatRoom_room_id` (`room_id`);

--
-- Indexes for table `chatroom_room`
--
ALTER TABLE `chatroom_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `spamidentification_category`
--
ALTER TABLE `spamidentification_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spamidentification_data`
--
ALTER TABLE `spamidentification_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SpamIdentification_d_category_id_eb242cd0_fk_SpamIdent` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chatroom_message`
--
ALTER TABLE `chatroom_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chatroom_room`
--
ALTER TABLE `chatroom_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `spamidentification_category`
--
ALTER TABLE `spamidentification_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spamidentification_data`
--
ALTER TABLE `spamidentification_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chatroom_message`
--
ALTER TABLE `chatroom_message`
  ADD CONSTRAINT `ChatRoom_message_room_id_52609eb7_fk_ChatRoom_room_id` FOREIGN KEY (`room_id`) REFERENCES `chatroom_room` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `spamidentification_data`
--
ALTER TABLE `spamidentification_data`
  ADD CONSTRAINT `SpamIdentification_d_category_id_eb242cd0_fk_SpamIdent` FOREIGN KEY (`category_id`) REFERENCES `spamidentification_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
