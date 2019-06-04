--- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июн 03 2019 г., 19:46
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  `count` int(11) DEFAULT NULL COMMENT 'Количество просмотров',
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `type`, `preview`, `description`, `characteristics`, `count`, `date`) VALUES
(1, 'Mango People T-shirt', 52, 'T-shirt', 'img/Layer4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur autem quasi sint, iusto quas modi natus repudiandae unde sit? Labore?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur autem quasi sint, iusto quas modi natus repudiandae unde sit? Labore?', 0, '2019-05-19 15:55:47'),
(2, 'Mango People shirt 234', 36, 'T-shirt', 'img/Layer7.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(3, 'Mango 258454', 45, 'T-shirt', 'img/Layer2.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse illum temporibus, amet ipsum consectetur eligendi soluta maiores placeat veniam voluptatum!', '', 0, '2019-05-19 20:23:40'),
(4, 'Mango People T-shirt 23434', 65, 'T-shirt', 'img/Layer3.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(5, 'Mango People T-shirt 234234', 23, 'T-shirt', 'img/Layer5.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(6, 'Mango People T-shirt 23445', 57, 'T-shirt', 'img/Layer6.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(7, 'Mango People T-shirt 2457', 89, 'T-shirt', 'img/Layer8.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(8, 'Mango People T-shirt 2780', 46, 'T-shirt', 'img/Layer9.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea quo distinctio magni quam. Praesentium, accusamus?', 'Ea quo distinctio magni quam. Praesentium, accusamus?', 0, '2019-05-19 17:16:35'),
(9, 'Mango People shirt 234', 36, 'T-shirt', 'img/Layer9.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis exercitationem voluptates beatae. Adipisci, officia deserunt necessitatibus quod hic perspiciatis unde odio iure rem consectetur omnis ex dolorum soluta, impedit nam alias quos aliquam animi itaque neque. Hic magni sunt cupiditate!', '', 0, '2019-05-19 21:34:58');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  `order_items` json NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Новый'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `comment`, `order_items`, `status`) VALUES
(13, 4, '2019-05-26 21:26:19', '', '{\"1\": {\"name\": \"Mango People T-shirt\", \"price\": \"52\", \"quantity\": 1}, \"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}}', 'Оплачен'),
(14, 4, '2019-05-26 21:32:25', '', '{\"1\": {\"name\": \"Mango People T-shirt\", \"price\": \"52\", \"quantity\": 2}, \"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 2}}', 'Новый'),
(15, NULL, '2019-05-26 21:34:47', '', '{\"1\": {\"name\": \"Mango People T-shirt\", \"price\": \"52\", \"quantity\": 1}, \"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}, \"3\": {\"name\": \"Mango 258454\", \"price\": \"45\", \"quantity\": 1}}', 'Новый'),
(16, 4, '2019-05-26 21:55:51', '', '{\"1\": {\"name\": \"Mango People T-shirt\", \"price\": \"52\", \"quantity\": 1}, \"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}}', 'Новый'),
(17, 2, '2019-05-26 22:22:27', '', '{\"1\": {\"name\": \"Mango People T-shirt\", \"price\": \"52\", \"quantity\": 1}, \"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}, \"3\": {\"name\": \"Mango 258454\", \"price\": \"45\", \"quantity\": 1}}', 'Новый'),
(18, 2, '2019-05-26 22:33:34', '', '{\"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}, \"3\": {\"name\": \"Mango 258454\", \"price\": \"45\", \"quantity\": 1}, \"4\": {\"name\": \"Mango People T-shirt 23434\", \"price\": \"65\", \"quantity\": 1}}', 'Новый'),
(19, 2, '2019-05-26 22:34:05', '', '{\"2\": {\"name\": \"Mango People shirt 234\", \"price\": \"36\", \"quantity\": 1}, \"3\": {\"name\": \"Mango 258454\", \"price\": \"45\", \"quantity\": 1}, \"4\": {\"name\": \"Mango People T-shirt 23434\", \"price\": \"65\", \"quantity\": 1}}', 'Новый');

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
(2, 'Alex Pro', 'Alex', 'd41a2e876cd74bb324b0e15380beae79', '2019-05-14 14:41:15', 0),
(4, NULL, 'admin', 'f8a8075d7c724f18ddf01867a86366b1', '2019-05-17 14:37:40', 0),
(19, 'anonim', '123', '123', '2019-05-21 14:41:20', 0);

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
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;