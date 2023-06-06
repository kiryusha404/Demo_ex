-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 02 2023 г., 11:14
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tea`
--

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id_order` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_tea` int DEFAULT NULL,
  `time` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `part_tea`
--

CREATE TABLE `part_tea` (
  `id_part` int NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `part_tea`
--

INSERT INTO `part_tea` (`id_part`, `name`) VALUES
(1, 'Белый чай'),
(2, 'Зеленый чай'),
(3, 'Зеленый чай  добавками'),
(4, 'Ройбуш'),
(5, 'Фруктовый и травяной чай'),
(6, 'Черный чай'),
(7, 'Черный чай с добавками');

-- --------------------------------------------------------

--
-- Структура таблицы `tea`
--

CREATE TABLE `tea` (
  `id_tea` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `contry` varchar(100) DEFAULT NULL,
  `part` int NOT NULL,
  `vkus` varchar(100) DEFAULT NULL,
  `ingr` varchar(100) DEFAULT NULL,
  `main_note` varchar(100) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `tea`
--

INSERT INTO `tea` (`id_tea`, `name`, `price`, `img`, `contry`, `part`, `vkus`, `ingr`, `main_note`, `info`) VALUES
(1, 'Бай Му Дань', 615, '2b39b0bbad61007837caf22be3e1185a.webp', 'Китай', 1, 'Сухофрукты, Травяной', NULL, 'Курага, Чернослив', 'Бай Му Дань – популярный белый чай, произрастающий близ города Фудин китайской провинции Фуцзянь. \r\n'),
(2, 'Инь Чжень', 970, '011ad0bcc68511a338f36eff76dc8b7f.webp', 'Китай', 1, 'Травяной, Цветочный', NULL, 'Орхидея, Виноград', 'Инь Чжень – высококлассный чай, изготавливаемый специально для \"Чайной лавки\" на небольшой аутентичной плантации \r\nЧенгуан в китайской провинции Хуннань. Именно этот сорт считается в Китае высочайшим стандартом белого чая. '),
(3, 'Жасмин Манки Кинг', 260, '41dbf26412c1384a954c980a972af226.webp', 'Китай', 2, 'Солодовый, Цветочный', 'Жасмин, Зеленый чай', '', 'Красный чай Цзинь Хоу родом из провинции Фуцзянь. История производства красных чаев здесь насчитывает много веков. \r\n'),
(4, 'Девять Драконов', 460, '958fc64e432bb101eecca0dce1cb87b5.webp', 'Китай', 2, 'Сладкий, Травяной, Цветочный', NULL, 'Мед, Хмель, Одуванчик', '«Девять драконов» – чай, собранный и приготовленный на горных плантациях провинции Фуцзянь.'),
(5, 'Лун Цзин', 755, '682b64c7106cad070c3dda6c9e4fe7df.webp', 'Китай', 2, 'Ореховый, Цветочный', NULL, 'Свежий миндаль, Копчение на огнедуванчик', 'Лун Цзин (кит. трад. 龍井茶, пиньинь lóngjǐngchá, кит. – «Колодец Дракона») – непревзойденный зеленый чай \r\nиз китайской провинции Чжецзян.'),
(6, 'Ягодный Смусс', 170, '85f4845254af62669c613145b22b937d.webp', 'Россия', 3, 'Цветочный, Ягодный', 'Ежевика, Смородина красная, Смородина черная, Чай зеленый, Лимон, Лемонграсс.', NULL, 'Более привычно сочетать в смуссе фрукты, ягоды и молоко или сок, но мы не удержались и решили \r\nпоэкспериментировать с чаем в качестве его основы.'),
(7, 'Настроение Манго', 195, 'e20b50961174b50f147d29db1e900d45.webp', 'Россия', 3, 'Цветочный, Ягодный', 'Чай зеленый, Ноготки, Сафлор, Ананас, Папайя, Клубника.', NULL, 'Этот яркий чай очень легко отличить от других зеленых чаев с добавками. Сочетание папайи и ананаса \r\nделают вкус чая красочным и незабываемым.'),
(8, 'Секрет Императрицы', 280, '2838cb45e5d7cfcc6a13fffce8e57b0c.webp', 'Россия', 3, 'Фруктовый, Цветочный', 'Вишня, Чай зеленый, Мальва, Роза, Ананас, Лемонграсс.', NULL, 'Сенча, лежащая в основе напитка, – это зеленый чай, отличие которого состоит в его обработке. '),
(9, 'Ройбуш Тропик-Лимон', 180, 'd3d1359e2f86ddd7f075277f9868ef9c.webp', 'Россия', 4, 'Цитрусовый, Ягодный', 'Ройбуш, Ананас, Лимон, Папайя, Лемонграсс.', NULL, '«Ройбуш Тропик-Лимон» вполне корректно сравнить с готовым легким безалкогольным тропическим коктейлем. '),
(10, 'Ройбуш Барбарис-Малина', 205, 'd9af2bfd60ffadb00ccd23f76e4737b5.webp', 'Россия', 4, 'Ягодный', 'Ройбуш, Малина, Папайя, Ноготки.', NULL, 'Этнический южноафриканский напиток ройбуш, сам по себе легкий и фруктовый, служит отличной основой для ягод, \r\nфруктов и цветов.'),
(11, 'Ройбуш Черничный', 265, 'a4e0d2c08fc19190bd788ff0496b2aa0.webp', 'Россия', 4, 'Ягодный', 'Ройбуш, Черника, Васильки, Можжевельник ягоды.', NULL, 'Экзотический бескофеиновый напиток ройбуш уникален своим запоминающимся вкусом с естественной сладостью, \r\nтонким ароматом и лечебными свойствами.'),
(12, 'Апельсин с Имбирем', 430, 'b3d31798f6632d81f9f619b262839555.webp', 'Германия', 5, 'Цитрусовый', 'Ройбуш, Яблоко, Чай зеленый, Кардамон, Корица, Апельсиновая цедра, Тулси трава, Перец розовый.\r\n', NULL, 'Чай яркий, цитрусовый и согревающий. По-разному раскрывается, но одинаково хорош в горячем и в холодном виде.'),
(13, 'Тайский «синий» чай', 475, '41f7926e946ace92743764307c94304c.webp', 'Тайланд', 5, 'Травяной, Цветочный', 'Анчан.', NULL, 'Синий чай – это напиток из высушенных бутонов клитории тройчатой (Clitoria ternatea). Это травяной чай \r\nс удивительным набором полезных свойств и не содержащий кофеина.'),
(14, 'Иван-Чай', 260, 'bcee246b102ea96ed10b22f4137e497e.webp', 'Россия', 5, 'Травяной.', 'Иван-чай.', NULL, 'Иван-чай в первую очередь – это напиток для нормализации сна, успокоения нервной системы, снятия напряжения и \r\nстресса. Стакан травяного чая перед сном поможет организму расслабиться, быстрее войти в сон.'),
(15, 'Джамира TGFOP', 430, '2a0d4fbc773bfeb0cc5d3c268e3a3e26.webp', 'Индия', 6, 'Пряный, Фруктовый', NULL, 'Мед, Чернослив', 'Джамира TGFOP, чай, выращенный на одноименной плантации Джамира, практически на границе \r\nс Бангладеш, – классический представитель черного чая из индийского региона Ассам. '),
(16, 'Рукери', 320, '32f73f6e10306898f103d421711b2c15.webp', 'Руанда', 6, 'Сухофрукты, Солодовый', NULL, 'Абрикос', 'Маленькую африканскую страну Руанду часто называют «землей тысячи холмов». \r\nХолмистый ландшафт, влажный субэкваториальный климат и плодородная почва создали прекрасные \r\nусловия для выращивания чая.'),
(18, 'Цзинь Хоу (Золотая Обезьяна)', 645, 'e17425a8fa502a12c28dea55f79cf880.webp', 'Китай', 6, 'Сухофрукты', NULL, 'Мед, Хлеб', 'Красный чай Цзинь Хоу родом из провинции Фуцзянь. История производства красных чаев здесь насчитывает много веков. ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `patronymic` varchar(100) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `name`, `surname`, `patronymic`, `login`, `email`, `pass`, `role`) VALUES
(1, 'Админ', 'Админов', NULL, 'admin2023', 'admin2023@gmail.com', 'tea2023', 'admin'),
(3, 'Юзер', 'Юзеров', '', 'user', 'fhdjsg@gmail.com', '1234', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_tea` (`id_tea`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `part_tea`
--
ALTER TABLE `part_tea`
  ADD PRIMARY KEY (`id_part`);

--
-- Индексы таблицы `tea`
--
ALTER TABLE `tea`
  ADD PRIMARY KEY (`id_tea`),
  ADD KEY `part` (`part`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `part_tea`
--
ALTER TABLE `part_tea`
  MODIFY `id_part` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tea`
--
ALTER TABLE `tea`
  MODIFY `id_tea` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_tea`) REFERENCES `tea` (`id_tea`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `tea`
--
ALTER TABLE `tea`
  ADD CONSTRAINT `tea_ibfk_1` FOREIGN KEY (`part`) REFERENCES `part_tea` (`id_part`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
