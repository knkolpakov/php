-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июн 03 2019 г., 19:30
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id товара';

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
