SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(1, 'Header');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '999',
  `link` varchar(255) NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `menu_id`, `name`, `parent`, `position`, `link`) VALUES
(1, 1, 'About Us', 0, 999, '/page/about'),
(2, 1, 'Contact', 0, 999, '/page/contact');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `segment` varchar(255) NOT NULL,
  `type` varchar(155) NOT NULL DEFAULT 'page',
  `status` varchar(55) NOT NULL DEFAULT 'publish',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `segment`, `type`, `status`, `date`) VALUES
(1, 'About', '<p>​</p>', 'about', 'about', 'publish', '2017-10-29 14:08:55'),
(2, 'Contact', '<p>​</p>', 'contact', 'about', 'publish', '2017-10-30 15:15:54');

-- --------------------------------------------------------

--
-- Структура таблицы `plugin`
--

CREATE TABLE `plugin` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'publish',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `status`, `date`) VALUES
(1, 'Test post title', '<p>Test content​</p>', 'publish', '2017-10-30 15:17:34');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key_field` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  `section` varchar(155) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `name`, `key_field`, `value`, `section`) VALUES
(1, 'Name site', 'name_site', 'Start site on FlexiCMS', 'general'),
(2, 'Description', 'description', 'Example description', 'general'),
(3, 'Admin email', 'admin_email', 'admin@admin.test', 'general'),
(4, 'Language', 'language', 'russian', 'general'),
(5, 'Active theme', 'active_theme', 'default', 'theme');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('admin','moderator','user','') NOT NULL,
  `hash` varchar(32) NOT NULL,
  `date_reg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `hash`, `date_reg`) VALUES
(1, 'admin@admin.com', 'b59c67bf196a4758191e42f76670ceba', 'admin', 'ce47a9994ac4a1404b7435903dc3cbfd', '2017-11-05 16:18:59');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plugin`
--
ALTER TABLE `plugin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `key` (`key_field`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `plugin`
--
ALTER TABLE `plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
