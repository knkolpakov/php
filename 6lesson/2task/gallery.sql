-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 20 2019 г., 20:29
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gbphp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `id_good` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `url`, `id_good`, `date`) VALUES
(1, 'Layer4', 'img/Layer4.jpg', 1, '2019-05-19 15:42:19'),
(2, 'Layer4', 'img/Layer2.jpg', 1, '2019-05-19 15:42:19'),
(3, 'Layer4', 'img/Layer3.jpg', 1, '2019-05-19 15:42:19'),
(4, 'Layer4', 'img/Layer3.jpg', 2, '2019-05-19 15:42:19'),
(5, 'Layer4', 'img/Layer8.jpg', 2, '2019-05-19 15:42:19'),
(6, 'Layer4', 'img/Layer8.jpg', 3, '2019-05-19 15:42:19'),
(7, 'Layer4', 'img/Layer7.jpg', 3, '2019-05-19 15:42:19'),
(8, 'Layer4', 'img/Layer2.jpg', 4, '2019-05-19 15:42:19'),
(9, 'Layer4', 'img/Layer3.jpg', 4, '2019-05-19 15:42:19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
