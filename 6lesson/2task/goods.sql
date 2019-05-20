-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 20 2019 г., 20:30
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id товара', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
