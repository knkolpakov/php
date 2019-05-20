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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_good` int(11) NOT NULL COMMENT 'id товара',
  `text` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата написания отзыва'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `id_good`, `text`, `date`) VALUES
(2, 2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto minima quidem consectetur. Distinctio porro deserunt maxime aspernatur facere voluptatum esse.', '2019-05-19 15:42:56'),
(4, 2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto minima quidem consectetur. Distinctio porro deserunt maxime aspernatur facere voluptatum esse.', '2019-05-19 15:42:56'),
(5, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto minima quidem consectetur. Distinctio porro deserunt maxime aspernatur facere voluptatum esse.', '2019-05-19 15:42:56'),
(6, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto ', '2019-05-19 15:42:56'),
(7, 3, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto minima quidem consectetur. Distinctio porro deserunt maxime ', '2019-05-19 15:42:56'),
(8, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iusto minima quidem consectetur. Distinctio porro deserunt maxime ', '2019-05-19 15:42:56'),
(19, 8, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, minima.', '2019-05-19 21:20:52');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
