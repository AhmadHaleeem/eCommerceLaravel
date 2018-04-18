# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: udemyProject4
# Generation Time: 2018-03-08 15:29:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(4,'2014_10_12_000000_create_users_table',1),
	(5,'2014_10_12_100000_create_password_resets_table',1),
	(6,'2018_03_08_093648_create_products_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'Rerum corrupti ut voluptatibus.','uploads/products/book.png',200,'Totam corrupti impedit est. Minima ea autem sit impedit dolor et. Neque error maiores ut magnam. Ut consequatur quod hic similique consequatur.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(2,'Et qui excepturi accusantium autem et quisquam sed.','uploads/products/book2.png',854,'Fuga eos perspiciatis error occaecati laboriosam totam. Natus inventore qui ut ea ex. Facilis nihil quo nihil consequuntur. Molestias eius ut consectetur blanditiis.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(3,'Et ut quia et qui qui.','uploads/products/book3.png',8241,'Libero quisquam mollitia impedit et. Aut nihil est sed sapiente consectetur officia asperiores. Occaecati quis ipsam non et et optio velit.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(4,'Ipsum exercitationem exercitationem iste recusandae sapiente.','uploads/products/book.png',8687,'Aut quo ea aliquam quia. Quod et neque officia. Ipsa voluptates cupiditate eum quia dolorum quas qui. Magni maiores natus id corporis sint. At qui cupiditate molestiae eum quasi error praesentium architecto.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(5,'Quisquam a modi veritatis odio tenetur.','uploads/products/book.png',3352,'Provident hic ea eligendi rerum voluptas quasi. Cum totam sunt ut rerum et nihil aut. Perspiciatis sed odit sit qui libero. Expedita possimus aperiam tenetur id vel. Sed omnis aperiam repudiandae nihil.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(6,'Laborum animi ab soluta similique nihil excepturi at impedit.','uploads/products/book.png',5892,'Omnis molestias totam voluptatem reiciendis consequatur ad. Sed amet ipsum a recusandae quasi. Consequatur quas voluptatem esse esse. Id nesciunt voluptatem cumque rerum. Et libero odio nihil qui asperiores vero.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(7,'Rerum atque vel ab sed.','uploads/products/book.png',1834,'Quam qui nam et dolor at. Delectus dolor reprehenderit velit animi expedita sequi. Dignissimos nemo ad a. Reprehenderit ut voluptas illo sunt id non optio.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(8,'Omnis est dolor modi quis.','uploads/products/book.png',3241,'Ratione similique impedit nobis quibusdam autem corporis optio. Eos eum voluptatum voluptatem unde ut a. Enim omnis et atque. Consequatur ut in quo temporibus unde.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(9,'Quia sit omnis natus ipsum quia.','uploads/products/book.png',73,'Officia harum distinctio sint perspiciatis. Enim aspernatur quo neque illum officiis incidunt magni. Perferendis sed ullam aut facilis recusandae eos sed. Adipisci molestiae est dolorum temporibus ipsum. Non dolorem necessitatibus in assumenda dignissimos architecto quia.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(10,'Est dolorum architecto nihil error.','uploads/products/book.png',1042,'Et alias quia ut dolorem. Et sunt sapiente ea ipsam. Et velit et tempore sit possimus non cum qui. Sint et error perferendis quo voluptas dolore.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(11,'Aperiam placeat possimus corporis praesentium.','uploads/products/book.png',3444,'Ea reiciendis ut omnis et quia optio dolorum. Aspernatur explicabo dolor voluptatem est non dolores. Voluptas eius temporibus eius esse corporis commodi sint. Hic nemo atque earum tempora voluptatum quaerat. Ab magnam et nihil odit omnis ut non. Animi ullam sapiente molestias ducimus iure ut odio.','2018-03-08 10:25:49','2018-03-08 10:30:21'),
	(12,'In enim quos sit aliquam nihil.','uploads/products/book.png',7176,'Cumque rem voluptas quasi fugit ipsam enim. Dolor quia et ab est eveniet quidem et velit. Dicta omnis quia magni eos. Accusantium delectus similique laudantium in at sed ipsum dolores.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(13,'Totam non iure esse mollitia aut.','uploads/products/book.png',6000,'Rerum accusamus quae ea accusantium asperiores. Cumque molestiae nam at quidem placeat. Aut molestias ex eveniet id. Ut quae qui deleniti dolorum. Cum harum aliquid aut quaerat fugit ut.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(14,'Qui facilis perferendis in nam recusandae error.','uploads/products/book.png',8768,'Et nihil occaecati maxime voluptatem voluptatem quas sunt est. Quam sint velit expedita quos. Aliquam non molestiae itaque culpa et dolores atque veniam. Nobis unde labore eveniet et. Debitis nam voluptatem reprehenderit consequatur earum ratione quia. Iure doloremque illo provident modi minus.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(15,'Dolorem nam fuga dolorem quia aut.','uploads/products/book.png',2403,'Facere sed eius distinctio illum illo harum. Dolorem dolore nemo commodi quas similique qui. Cum suscipit nobis quod dolores porro. Amet beatae incidunt distinctio dolores perspiciatis et facilis debitis.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(16,'Qui quia omnis maxime esse tenetur debitis.','uploads/products/book.png',7067,'Quo autem id veniam velit ut. Provident rerum qui est doloribus. Et ducimus molestiae totam itaque et. Aut amet eius alias consequatur laboriosam. Corporis voluptas et quo pariatur aut.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(17,'Deleniti vero nihil laboriosam.','uploads/products/book.png',5299,'Laboriosam ut ratione incidunt. Et qui non autem est. Ut reiciendis temporibus illo ipsum nostrum.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(18,'Suscipit tempora consequuntur molestias.','uploads/products/book.png',5753,'Inventore nesciunt velit eligendi atque rem. Voluptatem officia dolor doloribus consequatur earum voluptas. Dignissimos totam quisquam inventore quia. Molestiae occaecati distinctio omnis. Eligendi minima accusantium rerum laudantium labore minus ipsum voluptatem.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(19,'Ab asperiores consequuntur et vel.','uploads/products/book.png',9683,'Ut debitis libero molestiae voluptates praesentium. Non voluptates itaque tempora. Deserunt hic in autem tempora labore impedit. Deleniti non corrupti nam aut. Voluptatem odit fugit provident est.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(20,'Et doloribus consequatur perferendis repellat ab.','uploads/products/book.png',7713,'Consequatur qui in est tenetur. Dolores sit temporibus eveniet et minus. Voluptas nesciunt assumenda sequi eius doloribus sed quia. Impedit ut voluptate ut. Impedit velit quae quos facilis.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(21,'Et voluptatem dolor voluptate sunt.','uploads/products/book.png',100,'Cupiditate sed vel dolores magnam et sit. Suscipit tempora voluptas ducimus et expedita delectus non. Aut modi quae et rerum vel molestias enim. Illo consequatur rerum reprehenderit voluptatem aut accusamus quos.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(22,'Quasi et aspernatur neque tempore dignissimos.','uploads/products/book.png',8224,'Sit eos dolor velit non deleniti sit fuga. Alias iure hic quod qui. Unde sit velit porro fugit voluptatem atque alias perferendis. Sit itaque non aut asperiores eveniet corrupti provident. Explicabo veniam porro qui.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(23,'Et aut omnis molestiae sint quisquam.','uploads/products/book.png',489,'Vel iusto eligendi suscipit eum. Est ea deserunt sequi eum itaque atque omnis. Soluta aut voluptatem debitis voluptatibus sint blanditiis. Repudiandae et consequuntur ipsam minima. Occaecati autem quae nihil est quia doloribus rerum.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(24,'Iure maxime sit distinctio explicabo itaque maxime.','uploads/products/book.png',5584,'In earum deleniti eius nesciunt officia quaerat. Nobis laboriosam quos labore velit tenetur. Id cum qui totam quaerat. Voluptates quos unde ipsum est quidem reprehenderit voluptas. Quibusdam voluptas officia dolores amet sed autem.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(25,'Id quaerat quia sit quo accusamus sed.','uploads/products/book.png',6021,'Minima minima et explicabo nostrum sit. Et vitae et saepe ab voluptatum quia quo voluptatem. Necessitatibus aut porro error voluptates. Adipisci sit enim perspiciatis officia earum.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(26,'Quos quod exercitationem quaerat eum quis sit necessitatibus.','uploads/products/book.png',9188,'Deleniti suscipit sed atque non repellendus perspiciatis. Sit quaerat et quaerat voluptas. Eos sed laborum est. Odio repellat ex ut non.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(27,'Eos similique fugiat sapiente nam pariatur eos.','uploads/products/book.png',8171,'Est magnam dignissimos in. Doloremque consequuntur aut omnis. In harum natus quaerat autem est saepe consectetur. Quia saepe sunt velit et. Quaerat quas commodi officia maxime ullam et. Maxime laboriosam rerum voluptates sunt amet tenetur dolorem.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(28,'Et ex illum exercitationem dolorum at.','uploads/products/book.png',5154,'Dolor sit alias tenetur deleniti. Ea dolores impedit impedit omnis. Ab consectetur consequatur corrupti praesentium molestias sint consequatur eum. Aut id culpa optio amet non sit amet. Quaerat tempora dolores quam et ipsa odit numquam. Maiores sint earum cum qui ullam nesciunt.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(29,'Enim aspernatur molestiae nesciunt.','uploads/products/book.png',4424,'Facilis ex sed veniam illum. Non quod consequuntur tempora ullam eum. Amet ut quia officiis eos recusandae error incidunt. Praesentium repellendus iusto ipsam praesentium.','2018-03-08 10:25:49','2018-03-08 10:25:49'),
	(30,'Nesciunt explicabo nostrum a iste.','uploads/products/book.png',448,'Voluptatem facilis qui eligendi ut. Mollitia blanditiis exercitationem suscipit. Reprehenderit vero non veniam eligendi ipsa porro. Rem eveniet qui voluptatibus inventore et nihil voluptate eos. Voluptatem libero in laboriosam.','2018-03-08 10:25:49','2018-03-08 10:25:49');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','coldman9910@gmail.com','$2y$10$emgTp/2uFgU/1u5iXYBlHei1BfVgdEo6aiR3/niUnhQstRHR2liBa',NULL,'2018-03-08 10:25:49','2018-03-08 10:25:49');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
