-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 23 2023 г., 15:18
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mysite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_eng`
--

CREATE TABLE `about_eng` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `pretitle` text NOT NULL,
  `paragraph` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `about_eng`
--

INSERT INTO `about_eng` (`id`, `title`, `pretitle`, `paragraph`, `img`) VALUES
(1, 'Welcome', 'This is company Archi', 'Our company creates websites.<br> \r\n                    We promote websites and do a redesign.<br>\r\n                    We will create a turnkey website for you.<br>\r\n                    Our slogan ', 'welcome-image.png');

-- --------------------------------------------------------

--
-- Структура таблицы `about_ru`
--

CREATE TABLE `about_ru` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `pretitle` text NOT NULL,
  `paragraph` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `about_ru`
--

INSERT INTO `about_ru` (`id`, `title`, `pretitle`, `paragraph`, `img`) VALUES
(1, 'Добро пожаловать', 'Это компания Archi', 'Наша компания создает веб-сайты.<br>\r\n                        Мы продвигаем веб-сайты и <br>занимаемся редизайном.<br>\r\n                        Мы создадим для вас сайт \"под ключ\".<br>\r\n                    Наш слоган', 'welcome-image.png');

-- --------------------------------------------------------

--
-- Структура таблицы `carousel`
--

CREATE TABLE `carousel` (
  `id` int NOT NULL,
  `img-one` varchar(255) NOT NULL,
  `img-two` varchar(255) NOT NULL,
  `img-three` varchar(255) NOT NULL,
  `img-four` varchar(255) NOT NULL,
  `img-five` varchar(255) NOT NULL,
  `img-six` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `carousel`
--

INSERT INTO `carousel` (`id`, `img-one`, `img-two`, `img-three`, `img-four`, `img-five`, `img-six`) VALUES
(1, 'carousel-1.png', 'carousel-2.png', 'carousel-3.png', 'carousel-4.png', 'carousel-5.png', 'carousel-6.png');

-- --------------------------------------------------------

--
-- Структура таблицы `footer_eng`
--

CREATE TABLE `footer_eng` (
  `id` int NOT NULL,
  `title-logo` text NOT NULL,
  `about` text NOT NULL,
  `contact` text NOT NULL,
  `project` text NOT NULL,
  `paragraph` text NOT NULL,
  `pre-paragraph` text NOT NULL,
  `icon-one` varchar(255) NOT NULL,
  `icon-two` varchar(255) NOT NULL,
  `icon-three` varchar(255) NOT NULL,
  `copyright` text NOT NULL,
  `policy` text NOT NULL,
  `logo-footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer_eng`
--

INSERT INTO `footer_eng` (`id`, `title-logo`, `about`, `contact`, `project`, `paragraph`, `pre-paragraph`, `icon-one`, `icon-two`, `icon-three`, `copyright`, `policy`, `logo-footer`) VALUES
(1, 'Archi', 'About', 'Contact', 'Project', 'Our company creates websites.<br>\r\n                    We promote websites and do a redesign.<br>\r\n                    We will create a turnkey website for you.<br>\r\n', 'You can writing to us', 'watsapp.svg', 'telegram.svg', 'github.svg', 'Copyright © 2023 Archi. All rights reserved.', 'Privacy Policy', 'logo.png');

-- --------------------------------------------------------

--
-- Структура таблицы `footer_ru`
--

CREATE TABLE `footer_ru` (
  `id` int NOT NULL,
  `title-archi` text NOT NULL,
  `about` text NOT NULL,
  `contact` text NOT NULL,
  `project` text NOT NULL,
  `paragraph` text NOT NULL,
  `icon-one` varchar(255) NOT NULL,
  `icon-two` varchar(255) NOT NULL,
  `icon-three` varchar(255) NOT NULL,
  `pre-paragraph` text NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `policy` text NOT NULL,
  `logo-footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `footer_ru`
--

INSERT INTO `footer_ru` (`id`, `title-archi`, `about`, `contact`, `project`, `paragraph`, `icon-one`, `icon-two`, `icon-three`, `pre-paragraph`, `copyright`, `policy`, `logo-footer`) VALUES
(1, 'Archi', 'О нас', 'Контакты', 'Проекты', 'Наша компания создает веб-сайты.<br>\r\n                        Мы продвигаем веб-сайты и занимаемся<br> редизайном.\r\n                        Мы создадим для вас сайт \"под ключ\".<br>', 'watsapp.svg', 'telegram.svg', 'github.svg', 'Вы можете написать нам', 'Copyright © 2023 Archi. Все права защищены.', 'Политика конфиденциальности', 'logo.png');

-- --------------------------------------------------------

--
-- Структура таблицы `form_eng`
--

CREATE TABLE `form_eng` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `pretitle-one` text NOT NULL,
  `pretitle-two` text NOT NULL,
  `pretitle-three` text NOT NULL,
  `img-laptop` varchar(255) NOT NULL,
  `img-phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `form_eng`
--

INSERT INTO `form_eng` (`id`, `title`, `paragraph`, `pretitle-one`, `pretitle-two`, `pretitle-three`, `img-laptop`, `img-phone`) VALUES
(1, 'Send us a message', 'If you have any questions or suggestions for cooperation - fill out the form below', 'Only English letters', 'In the format: name@mail.com', 'In the format: 88000000000 or 78000000000', 'laptop.png', 'iphone.png');

-- --------------------------------------------------------

--
-- Структура таблицы `form_ru`
--

CREATE TABLE `form_ru` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `pre-input-one` varchar(255) NOT NULL,
  `pre-input-two` varchar(255) NOT NULL,
  `pre-input-three` varchar(255) NOT NULL,
  `img-laptop` varchar(255) NOT NULL,
  `img-phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `form_ru`
--

INSERT INTO `form_ru` (`id`, `title`, `paragraph`, `pre-input-one`, `pre-input-two`, `pre-input-three`, `img-laptop`, `img-phone`) VALUES
(1, 'Отправьте нам сообщение', 'Если у вас есть какие-то вопросы или предложения по сотрудничеству -\r\n            заполните форму ниже', 'Только русские буквы', 'В формате: name@mail.com', 'В формате: 88000000000 или 78000000000', 'laptop.png', 'iphone.png'),
(2, 'Отправьте нам сообщение', 'Если у вас есть какие-то вопросы или предложения по сотрудничеству -\r\n            заполните форму ниже', 'Только русские буквы', 'В формате: name@mail.com', 'В формате: 88000000000 или 78000000000', 'laptop.png', 'iphone.png');

-- --------------------------------------------------------

--
-- Структура таблицы `header_eng`
--

CREATE TABLE `header_eng` (
  `id` int NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `contact` text NOT NULL,
  `project` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `header_eng`
--

INSERT INTO `header_eng` (`id`, `logo`, `about`, `contact`, `project`) VALUES
(1, 'logo.png', 'About', 'Contact', 'Project');

-- --------------------------------------------------------

--
-- Структура таблицы `header_ru`
--

CREATE TABLE `header_ru` (
  `id` int NOT NULL,
  `h-about` text NOT NULL,
  `h-contact` text NOT NULL,
  `h-project` text NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `header_ru`
--

INSERT INTO `header_ru` (`id`, `h-about`, `h-contact`, `h-project`, `logo`) VALUES
(1, 'О нас', 'Контакты', 'Проекты', 'logo.png');

-- --------------------------------------------------------

--
-- Структура таблицы `services_eng`
--

CREATE TABLE `services_eng` (
  `id` int NOT NULL,
  `title-one` text NOT NULL,
  `title-two` text NOT NULL,
  `title-three` text NOT NULL,
  `title-four` text NOT NULL,
  `title-five` text NOT NULL,
  `paragraph-one` text NOT NULL,
  `paragraph-two` text NOT NULL,
  `paragraph-three` text NOT NULL,
  `paragraph-four` text NOT NULL,
  `paragraph-five` text NOT NULL,
  `more-detailed` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `services_eng`
--

INSERT INTO `services_eng` (`id`, `title-one`, `title-two`, `title-three`, `title-four`, `title-five`, `paragraph-one`, `paragraph-two`, `paragraph-three`, `paragraph-four`, `paragraph-five`, `more-detailed`) VALUES
(1, 'Turnkey website', 'Online Store', 'Redesine', 'Promotion', 'Landing Page', 'Let\'s create a turnkey website.<br> Created with your suggestions and imagination.', 'We will create an online store,<br> for your wishes and preferences.', 'We will redesign your website,<br> according to your imagination and scheme.', 'We will promote your site, your site will be on the first lines.', 'We will create a Landing Page for you,<br> according to your scheme or with the help of our design.', 'More detailed');

-- --------------------------------------------------------

--
-- Структура таблицы `services_ru`
--

CREATE TABLE `services_ru` (
  `id` int NOT NULL,
  `title-one` text NOT NULL,
  `title-two` text NOT NULL,
  `title-three` text NOT NULL,
  `title-four` text NOT NULL,
  `title-five` text NOT NULL,
  `paragraph-one` text NOT NULL,
  `paragraph-two` text NOT NULL,
  `paragraph-three` text NOT NULL,
  `paragraph-four` text NOT NULL,
  `paragraph-five` text NOT NULL,
  `more-detailed` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `services_ru`
--

INSERT INTO `services_ru` (`id`, `title-one`, `title-two`, `title-three`, `title-four`, `title-five`, `paragraph-one`, `paragraph-two`, `paragraph-three`, `paragraph-four`, `paragraph-five`, `more-detailed`) VALUES
(1, 'Сайт под ключ', 'Интернет магазин', 'Редизайн', 'Продвижение', 'Landing Page (Сайт визитка)', 'Давайте создадим сайт \"под ключ\".<br> Создадим с учетом ваших предложений и воображения.', 'Мы создадим интернет-магазин<br> с учетом ваших пожеланий и предпочтений.', 'Мы сделаем редизайн вашего сайта<br> в соответствии с вашим воображением и схемой.', 'Мы будем продвигать ваш сайт, ваш сайт будет на первых строчках.', 'Мы создадим для вас целевую страницу<br>\r\n                        по вашей схеме или с помощью нашего дизайна.', 'Подробнее');

-- --------------------------------------------------------

--
-- Структура таблицы `way_eng`
--

CREATE TABLE `way_eng` (
  `id` int NOT NULL,
  `title-null` text NOT NULL,
  `title-one` text NOT NULL,
  `title-two` text NOT NULL,
  `title-three` text NOT NULL,
  `paragraph-one` text NOT NULL,
  `paragraph-two` text NOT NULL,
  `paragraph-three` text NOT NULL,
  `img-one` varchar(255) NOT NULL,
  `img-two` varchar(255) NOT NULL,
  `img-three` varchar(255) NOT NULL,
  `img-background` varchar(255) NOT NULL,
  `img-bush` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `way_eng`
--

INSERT INTO `way_eng` (`id`, `title-null`, `title-one`, `title-two`, `title-three`, `paragraph-one`, `paragraph-two`, `paragraph-three`, `img-one`, `img-two`, `img-three`, `img-background`, `img-bush`) VALUES
(1, 'Way your web-site', 'Discussion of the topic and purpose of the site', 'Creating a website', 'Completion', 'Discussion of the subject of the site means colors,<br> text, why the site is created and under what category (for example, real estate).', 'We are starting to develop a website according to your scheme.<br> We make an adaptive website and practical.You are happy to get a job.', 'We give you a report if necessary.<br> You can ask us if something is unclear about the work of the site,<br> we will explain everything clearly to you.', '1 No Icon.svg', '2 No Icon.svg', '3 No Icon.svg', 'background-way.png', 'spotted blue succulent plant.png');

-- --------------------------------------------------------

--
-- Структура таблицы `way_ru`
--

CREATE TABLE `way_ru` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `pretitle-one` text NOT NULL,
  `pretitle-two` text NOT NULL,
  `pretitle-three` text NOT NULL,
  `paragraph-one` text NOT NULL,
  `paragraph-two` text NOT NULL,
  `paragraph-three` text NOT NULL,
  `img-one` varchar(255) NOT NULL,
  `img-two` varchar(255) NOT NULL,
  `img-three` varchar(255) NOT NULL,
  `img-bush` varchar(255) NOT NULL,
  `img-background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `way_ru`
--

INSERT INTO `way_ru` (`id`, `title`, `pretitle-one`, `pretitle-two`, `pretitle-three`, `paragraph-one`, `paragraph-two`, `paragraph-three`, `img-one`, `img-two`, `img-three`, `img-bush`, `img-background`) VALUES
(1, 'Путь вашего веб-сайта', 'Обсуждение темы и назначения сайта', 'Создание веб-сайта', 'Завершение', 'Обсуждение тематики сайта означает цвета, текст,<br> для чего сайт создан и под какой категорией (например, недвижимость).', 'Мы приступаем к разработке веб-сайта по вашей схеме. <br>Мы создаем адаптивный веб-сайт и практичный.Вы счастливы получить работу.', 'При необходимости мы предоставим вам отчет.<br> Вы можете спросить нас, если что-то непонятно в работе сайта, мы вам все доходчиво объясним.', '1 No Icon.svg', '2 No Icon.svg', '3 No Icon.svg', 'background-way.png', 'spotted blue succulent plant.png');

-- --------------------------------------------------------

--
-- Структура таблицы `why_eng`
--

CREATE TABLE `why_eng` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `gif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `why_eng`
--

INSERT INTO `why_eng` (`id`, `title`, `paragraph`, `logo`, `gif`) VALUES
(1, 'Why us?', ' 1. Choosing us you are sure that the site will be executed qualitatively.<br>\r\n                2. We will always come out to meet you, if there are any misunderstandings about the work of the site.<br>\r\n                3. We provide a full range of services. Choosing us, you trust the professionals.<br>', 'logo.png', 'Duck.gif');

-- --------------------------------------------------------

--
-- Структура таблицы `why_ru`
--

CREATE TABLE `why_ru` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `paragraph` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `gif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `why_ru`
--

INSERT INTO `why_ru` (`id`, `title`, `paragraph`, `logo`, `gif`) VALUES
(1, 'Почему именно мы?', '1. Выбирая нас вы уверены что сайт будет выполнен качественно.<br>\r\n                2. Мы всегда выйдем вам навстречу, при каких нибудь недопониманиях по работе сайта.<br>\r\n                3. Мы предоставляем полный спектр услуг. Выбирая нас вы доверяетесь профессионалам.', 'logo.png', 'Duck.gif');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about_eng`
--
ALTER TABLE `about_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_ru`
--
ALTER TABLE `about_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_eng`
--
ALTER TABLE `footer_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_ru`
--
ALTER TABLE `footer_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form_eng`
--
ALTER TABLE `form_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form_ru`
--
ALTER TABLE `form_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `header_eng`
--
ALTER TABLE `header_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `header_ru`
--
ALTER TABLE `header_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_eng`
--
ALTER TABLE `services_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_ru`
--
ALTER TABLE `services_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `way_eng`
--
ALTER TABLE `way_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `way_ru`
--
ALTER TABLE `way_ru`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `why_eng`
--
ALTER TABLE `why_eng`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `why_ru`
--
ALTER TABLE `why_ru`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about_eng`
--
ALTER TABLE `about_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `about_ru`
--
ALTER TABLE `about_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `footer_eng`
--
ALTER TABLE `footer_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `footer_ru`
--
ALTER TABLE `footer_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `form_eng`
--
ALTER TABLE `form_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `form_ru`
--
ALTER TABLE `form_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `header_eng`
--
ALTER TABLE `header_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `header_ru`
--
ALTER TABLE `header_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `services_eng`
--
ALTER TABLE `services_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `services_ru`
--
ALTER TABLE `services_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `way_eng`
--
ALTER TABLE `way_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `way_ru`
--
ALTER TABLE `way_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `why_eng`
--
ALTER TABLE `why_eng`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `why_ru`
--
ALTER TABLE `why_ru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
