-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-07-20 07:40:07
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
-- テーブルの構造 `form_data`
--

CREATE TABLE `form_data` (
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
-- テーブルのデータのダンプ `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `email`, `tel1`, `tel2`, `tel3`, `lesson`, `question`, `created_at`) VALUES
(1, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'なんだかいけそうな気がするーーーー', '2023-07-20 05:21:05'),
(2, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'なんだかいけそうな気がするーーーー', '2023-07-20 05:22:01'),
(3, 'まじでおなか', 'hetta@yo.com', '111', '4444', '3333', 'online', 'お腹すきました', '2023-07-20 05:23:36'),
(4, '飢え太郎', 'hetta@yo.com', '222', '5555', '8888', 'venue', 'やっとうまくいった！！！？', '2023-07-20 05:24:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
