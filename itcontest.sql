-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-09-25 05:32:04
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `itcontest`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mtgname` varchar(255) NOT NULL,
  `venuename` varchar(255) NOT NULL,
  `reservation` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `lesson` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `meetings`
--

INSERT INTO `meetings` (`id`, `name`, `mtgname`, `venuename`, `reservation`, `start_time`, `end_time`, `lesson`) VALUES
(1, 'もうよじたろう', 'どうすんねん学校会議', '実家', '2023-09-25', '04:00:00', '09:00:00', 'venue'),
(2, '構成テスト', '二時限目超眠い会議', '教室', '2023-09-25', '10:11:00', '10:13:00', 'venue'),
(3, '送信後テスト', '何とか会議', '教室', '2023-09-25', '10:29:00', '11:30:00', 'venue'),
(4, '送信後テスト2', '何とか会議', '教室', '2023-09-25', '10:32:00', '11:30:00', 'online'),
(5, '送信後テスト3', '何とか会議', '教室', '2023-09-25', '10:35:00', '11:30:00', 'online'),
(6, '送信後テスト4', '何とか会議', '教室', '2023-09-25', '10:50:00', '11:30:00', 'online'),
(7, '6', '回', '目のテスト', '2023-09-25', '10:51:00', '10:52:00', 'venue'),
(8, '７', '回目', 'テスト', '2023-09-25', '11:03:00', '11:04:00', 'online'),
(9, '八', '回目', 'テスト', '2023-09-25', '11:06:00', '11:06:00', 'online'),
(10, '9', '回目', 'テスト', '2023-09-25', '11:08:00', '11:09:00', 'venue'),
(11, '10', '回目', 'テスト', '2023-09-25', '11:11:00', '11:11:00', 'online'),
(12, '11', '回目', 'テスト', '2023-09-13', '11:24:00', '11:26:00', 'online'),
(13, '12', '回目', 'テスト', '2023-09-25', '11:28:00', '11:29:00', 'venue'),
(14, '13', '回目', 'テスト', '2023-09-25', '11:50:00', '11:53:00', 'venue'),
(15, '14', '回目', 'テスト', '2023-09-25', '11:58:00', '11:58:00', 'venue'),
(16, '15回目', 'のテスト', 'です', '2023-09-25', '12:07:00', '12:07:00', 'online'),
(17, '16', '回目', 'テスト', '2023-09-25', '12:18:00', '12:19:00', 'venue'),
(18, '17', '回目', 'テスト', '2023-09-25', '12:19:00', '12:20:00', 'online'),
(19, '18', '回目', 'テスト', '2023-09-25', '12:21:00', '12:22:00', 'venue'),
(20, '19', '回目', 'テスト', '2023-09-25', '12:22:00', '12:23:00', 'online');

-- --------------------------------------------------------

--
-- テーブルの構造 `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `tel3` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `questions`
--

INSERT INTO `questions` (`id`, `name`, `email`, `tel1`, `tel2`, `tel3`, `lesson`, `question`, `created_at`) VALUES
(1, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'なんだかいけそうな気がするーーーー', '2023-07-20 05:21:05'),
(2, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'なんだかいけそうな気がするーーーー', '2023-07-20 05:22:01'),
(3, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'お腹すきました', '2023-07-20 05:23:36'),
(4, '飢え太郎', 'hetta@yo.com', '222', '5555', '8888', 'venue', 'やっとうまくいった！！！？', '2023-07-20 05:24:48'),
(5, '田中太郎', 'tanakatarou@douyo.com', '000', '1111', '1111', 'venue', 'ｓｓｓｓ', '2023-09-24 06:16:13'),
(6, '2時33分', 'onakahet@yo.com', '333', '3333', '3333', 'venue', 'あとは会議のテーブル作る', '2023-09-24 17:34:09'),
(7, '2時33分', 'onakahet@yo.com', '333', '3333', '3333', 'venue', 'あとは会議のテーブル作る', '2023-09-24 18:40:35'),
(8, 'ｓｓｓ', '', '', '', '', 'online', 'ｓｓｓｓ', '2023-09-24 18:47:31');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルの AUTO_INCREMENT `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
