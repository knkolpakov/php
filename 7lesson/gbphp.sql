-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 23 2019 г., 23:19
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
(19, 8, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, minima.', '2019-05-19 21:20:52'),
(20, 7, 'vsfg', '2019-05-21 16:55:01'),
(21, 2, 'asd', '2019-05-22 19:38:38'),
(22, 2, 'jh', '2019-05-23 21:19:25');

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

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL COMMENT 'id товара',
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL COMMENT 'цена товара',
  `type` varchar(50) NOT NULL COMMENT 'Категория товара',
  `preview` varchar(100) NOT NULL COMMENT 'Изображение для списка товаров',
  `description` varchar(300) NOT NULL,
  `characteristics` varchar(150) NOT NULL COMMENT 'Характеристики',
  `count` int(11) NOT NULL COMMENT 'Количество просмотров',
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `type`, `preview`, `description`, `characteristics`, `count`, `date`) VALUES
(1, 'Mango People T-shirt', 52, 'T-shirt', 'img/Layer4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur autem quasi sint, iusto quas modi natus repudiandae unde sit? Labore?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur autem quasi sint, iusto quas modi natus repudiandae unde sit? Labore?', 0, '2019-05-19 15:55:47'),
(2, 'Mango People shirt 234', 36, 'T-shirt', 'img/Layer7.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(3, 'Mango 258454', 45, 'T-shirt', 'img/Layer2.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse illum temporibus, amet ipsum consectetur eligendi soluta maiores placeat veniam voluptatum!', '', 0, '2019-05-19 20:23:40'),
(4, 'Mango People T-shirt 23434', 65, 'T-shirt', 'img/Layer3.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '0000-00-00 00:00:00'),
(5, 'Mango People T-shirt 234234', 23, 'T-shirt', 'img/Layer5.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(6, 'Mango People T-shirt 23445', 57, 'T-shirt', 'img/Layer6.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(7, 'Mango People T-shirt 2457', 89, 'T-shirt', 'img/Layer8.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(8, 'Mango People T-shirt 2780', 46, 'T-shirt', 'img/Layer9.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(9, 'Mango People shirt 234', 36, 'T-shirt', 'img/Layer9.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis exercitationem voluptates beatae. Adipisci, officia deserunt necessitatibus quod hic perspiciatis unde odio iure rem consectetur omnis ex dolorum soluta, impedit nam alias quos aliquam animi itaque neque. Hic magni sunt cupiditate!', '', 0, '2019-05-19 21:34:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fio` varchar(50) DEFAULT 'anonim',
  `login` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата первой регистрации',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT 'Количество просмотров'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fio`, `login`, `password`, `date`, `count`) VALUES
(2, 'Alex Pro', 'Alex', 'd41a2e876cd74bb324b0e15380beae79', '2019-05-14 17:41:15', 0),
(4, NULL, 'admin', 'f8a8075d7c724f18ddf01867a86366b1', '2019-05-17 17:37:40', 0),
(19, 'anonim', '123', '123', '2019-05-21 17:41:20', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id товара', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
