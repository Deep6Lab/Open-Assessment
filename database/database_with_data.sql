-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 01:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_examination_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `asign_student`
--

CREATE TABLE `asign_student` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(255) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asign_student`
--

INSERT INTO `asign_student` (`id`, `roll_no`, `class_id`, `student_id`, `created_at`) VALUES
(1, '22', '13', '24', '2021-11-06 20:21:28'),
(2, '50', '11', '25', '2021-11-06 20:22:27'),
(5, '12', '14', '27', '2021-11-23 06:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `asign_subject`
--

CREATE TABLE `asign_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(255) NOT NULL,
  `subject_id` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asign_subject`
--

INSERT INTO `asign_subject` (`id`, `class_id`, `subject_id`, `created_at`) VALUES
(6, 11, 10, '2021-11-06 14:35:17'),
(7, 12, 10, '2021-11-06 14:36:46'),
(9, 11, 9, '2021-11-06 14:39:30'),
(12, 13, 1, '2021-11-13 13:12:24'),
(13, 13, 2, '2021-11-13 13:12:32'),
(14, 13, 3, '2021-11-13 13:12:39'),
(15, 14, 4, '2021-11-23 06:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_name`, `status`, `created_at`) VALUES
(11, 'BA', 0, '2021-11-06 14:21:17'),
(12, 'FA', NULL, '2021-11-06 14:21:31'),
(13, 'commerce', 0, '2021-11-13 13:11:27'),
(14, 'open assesment', 0, '2021-11-23 06:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `exam_dur` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `exam_name`, `class_id`, `exam_dur`, `status`, `created_at`) VALUES
(1, 'Annual Exams 2021', '13', '5 Minute', 2, '2021-11-13 13:19:13'),
(2, 'open assesment exam', '14', '5 Minute', 2, '2021-11-23 07:00:02'),
(3, 'open assesment exam', '14', '5 Minute', 2, '2021-11-23 07:18:03'),
(4, 'anual open assesment', '14', '5 Minute', 0, '2021-11-25 23:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject`
--

CREATE TABLE `exam_subject` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `exam_duraion` timestamp NULL DEFAULT NULL,
  `tot_q` varchar(255) NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `wrong_ans` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_subject`
--

INSERT INTO `exam_subject` (`id`, `exam_id`, `subject_id`, `exam_duraion`, `tot_q`, `correct_ans`, `wrong_ans`, `status`, `created_at`) VALUES
(1, '1', '1', '2021-11-13 15:30:00', '5', '1', '-1', NULL, '2021-11-13 13:22:00'),
(2, '1', '2', '2021-11-13 15:35:00', '5', '1', '-1', NULL, '2021-11-13 13:25:12'),
(3, '1', '3', '2021-11-13 15:40:00', '5', '1', '-1', NULL, '2021-11-13 13:27:19'),
(4, '2', '4', '2021-11-23 07:10:00', '5', '1', '-1', NULL, '2021-11-23 07:00:47'),
(5, '3', '4', '2021-11-25 23:50:00', '5', '1', '-1', 0, '2021-11-25 23:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `exam_subject_id` int(11) NOT NULL,
  `q_title` varchar(255) NOT NULL,
  `option_1` varchar(255) NOT NULL,
  `option_2` varchar(255) NOT NULL,
  `option_3` varchar(255) NOT NULL,
  `option_4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `exam_subject_id`, `q_title`, `option_1`, `option_2`, `option_3`, `option_4`, `ans`, `created_at`) VALUES
(1, 1, 'WHAT IS AJIADJSIADJ', 'A', 'kb', 'D', 'd', '2', '2021-11-13 13:23:15'),
(2, 1, 'nkasdnk', 'nk', 'nkkn', 'k', 'nk', '3', '2021-11-13 13:23:25'),
(3, 1, 'klqwnejqwkneo', 'hio', 'hoho', 'ionio', 'nio', '2', '2021-11-13 13:23:34'),
(4, 1, 'nk', 'jnjk', 'n', 'kn', 'jkn', '4', '2021-11-13 13:23:43'),
(5, 1, 'wenrjknwerwno', 'nionio', 'nionio', 'n', 'ion', '3', '2021-11-13 13:23:51'),
(6, 2, 'what is ajax', 'jaquery', 'server side', 'php', 'ok', '3', '2021-11-13 13:25:36'),
(7, 2, 'what is php', 'prograaming langaugae', 'english language', 'A is right', 'B is wrong', '4', '2021-11-13 13:26:06'),
(8, 2, 'qkwemk', 'k', 'nk', 'n', 'kn', '2', '2021-11-13 13:26:14'),
(9, 2, 'knn', 'kn', 'n', 'kn', 'kn', '2', '2021-11-13 13:26:21'),
(10, 2, 'knk', 'nk', 'n', 'kn', 'kn', '1', '2021-11-13 13:26:28'),
(11, 3, 'bj', 'bj', 'bj', 'bjb', 'jb', '1', '2021-11-13 13:27:30'),
(12, 3, 'qwejb', 'bjjb', 'jbj', 'bj', 'bj', '2', '2021-11-13 13:27:40'),
(13, 3, 'qweqej', 'bj', 'b', 'jbj', 'bj', '1', '2021-11-13 13:27:59'),
(14, 3, 'qwejqe', 'jbj', 'b', 'jb', 'j', '2', '2021-11-13 13:28:07'),
(15, 3, 'qweqwe', 'jbj', 'b', 'jb', 'jb', '3', '2021-11-13 13:28:16'),
(16, 4, 'what is full form of A!', 'artificial intelligence', 'articarft intelligence', 'aero intelligence', 'allian intelligence', '1', '2021-11-23 07:01:48'),
(17, 4, 'what is full form of ml', 'machine learning', 'man learning', 'mean learning', 'math leraning', '1', '2021-11-23 07:02:32'),
(18, 4, 'wha tis full form of ds', 'data science', 'deal science', 'dual science', 'day science', '1', '2021-11-23 07:03:02'),
(19, 4, 'what is reinecfoecement learningh', 'he', 'hello', 'hey', 'mean', '2', '2021-11-23 07:03:42'),
(20, 4, 'how was the exam', 'tough', 'easy', 'hard', 'medium', '2', '2021-11-23 07:04:10'),
(21, 5, 'full form of fdb', 'a', 'b', 'fundamentals of db', 'functional ', '3', '2021-11-25 23:45:08'),
(22, 5, '2', 'a', 'b', 'c', 'd', '1', '2021-11-25 23:45:34'),
(23, 5, '3', 'a', 'b', 'c', 'd', '4', '2021-11-25 23:45:55'),
(24, 5, '4', 'a', 'b', 'c', 'd', '3', '2021-11-25 23:46:52'),
(25, 5, '4', 'a', 'b', 'c', 'd', '3', '2021-11-25 23:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `result_publish`
--

CREATE TABLE `result_publish` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `publish_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_publish`
--

INSERT INTO `result_publish` (`id`, `exam_id`, `publish_date`, `created_at`) VALUES
(1, 6, '2021-11-12 17:39:00', '2021-11-12 17:43:47'),
(2, 8, '2021-11-12 18:14:00', '2021-11-12 18:14:10'),
(3, 1, '2021-11-13 15:47:00', '2021-11-13 15:47:12'),
(4, 3, '2021-11-25 23:57:00', '2021-11-25 23:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `s_password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `s_image` longtext NOT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `s_name`, `s_address`, `s_email`, `s_password`, `gender`, `dob`, `s_image`, `status`, `created_at`) VALUES
(27, 'sri pragna', '200 Bonnie brae', 'sripragnaa@gmail.com', 'sa1203', 'Female', '2021-11-21', 'usui.jpg', 0, '2021-11-23 06:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_answers`
--

CREATE TABLE `student_exam_answers` (
  `id` int(11) NOT NULL,
  `exam_subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_option` int(11) NOT NULL,
  `marks_obtained` decimal(10,2) DEFAULT NULL,
  `is_correct` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_exam_answers`
--

INSERT INTO `student_exam_answers` (`id`, `exam_subject_id`, `student_id`, `question_id`, `user_option`, `marks_obtained`, `is_correct`, `created_at`) VALUES
(1, 1, 24, 1, 4, '-1.00', 0, '2021-11-13 15:34:31'),
(2, 1, 24, 2, 4, '-1.00', 0, '2021-11-13 15:34:35'),
(3, 1, 24, 3, 4, '-1.00', 0, '2021-11-13 15:34:38'),
(4, 1, 24, 4, 1, '-1.00', 0, '2021-11-13 15:34:41'),
(5, 1, 24, 5, 3, '1.00', 1, '2021-11-13 15:34:44'),
(6, 2, 24, 6, 2, '-1.00', 0, '2021-11-13 15:35:17'),
(7, 2, 24, 7, 3, '-1.00', 0, '2021-11-13 15:35:20'),
(8, 2, 24, 8, 4, '-1.00', 0, '2021-11-13 15:35:23'),
(9, 2, 24, 9, 1, '-1.00', 0, '2021-11-13 15:35:26'),
(10, 2, 24, 10, 1, '1.00', 1, '2021-11-13 15:35:28'),
(11, 3, 24, 11, 1, '1.00', 1, '2021-11-13 15:40:38'),
(12, 3, 24, 12, 4, '-1.00', 0, '2021-11-13 15:40:42'),
(13, 3, 24, 13, 4, '-1.00', 0, '2021-11-13 15:40:45'),
(14, 3, 24, 14, 3, '-1.00', 0, '2021-11-13 15:40:49'),
(15, 3, 24, 15, 3, '1.00', 1, '2021-11-13 15:40:53'),
(16, 5, 27, 21, 3, '1.00', 1, '2021-11-25 23:52:31'),
(17, 5, 27, 22, 2, '-1.00', 0, '2021-11-25 23:52:36'),
(18, 5, 27, 23, 3, '-1.00', 0, '2021-11-25 23:52:42'),
(19, 5, 27, 25, 4, '-1.00', 0, '2021-11-25 23:52:49'),
(20, 5, 27, 24, 4, '-1.00', 0, '2021-11-25 23:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `status`, `created_at`) VALUES
(1, 'acCOUNTING', NULL, '2021-11-13 13:11:55'),
(2, 'cOMPUTER sCIENCE', NULL, '2021-11-13 13:12:03'),
(3, 'uRDU', NULL, '2021-11-13 13:12:10'),
(4, 'open assestment exam', NULL, '2021-11-23 06:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `u_name`, `image`, `contact`, `email`, `password`, `status`, `created_at`) VALUES
(13, 'Admin', 'appstore.png', '000000', 'admin@gmail.com', 'iub12345678', 0, '2021-11-07 22:40:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asign_student`
--
ALTER TABLE `asign_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asign_subject`
--
ALTER TABLE `asign_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_subject`
--
ALTER TABLE `exam_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam_answers`
--
ALTER TABLE `student_exam_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asign_student`
--
ALTER TABLE `asign_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asign_subject`
--
ALTER TABLE `asign_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_subject`
--
ALTER TABLE `exam_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `result_publish`
--
ALTER TABLE `result_publish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_exam_answers`
--
ALTER TABLE `student_exam_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
