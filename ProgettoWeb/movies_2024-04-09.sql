# ************************************************************
# Sequel Ace SQL dump
# Version 20033
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.3.0)
# Database: movies
# Generation Time: 2024-04-09 09:04:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table actor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `actor`;

CREATE TABLE `actor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;

INSERT INTO `actor` (`id`, `first_name`, `last_name`, `birthday_date`)
VALUES
	(1,'Tim','Robbins',NULL),
	(2,'Marlon','Brando',NULL),
	(3,'Samuel L.','Jackson',NULL),
	(4,'Leonardo','DiCaprio',NULL);

/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table director
# ------------------------------------------------------------

DROP TABLE IF EXISTS `director`;

CREATE TABLE `director` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;

INSERT INTO `director` (`id`, `first_name`, `last_name`, `birthday_date`)
VALUES
	(1,'Frank','Darabont',NULL),
	(2,'Francis Ford','Coppola',NULL),
	(3,'Quentin','Tarantino',NULL),
	(4,'Christopher','Nolan',NULL);

/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table genre
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;

INSERT INTO `genre` (`id`, `name`, `slug`)
VALUES
	(1,'Drama',NULL),
	(2,'Crime',NULL),
	(3,'Thriller',NULL),
	(4,'Action',NULL),
	(5,'Sci-Fi',NULL);

/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movie
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `synopsis` text,
  `title` varchar(128) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `released_year` date DEFAULT NULL,
  `poster` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;

INSERT INTO `movie` (`id`, `synopsis`, `title`, `duration`, `released_year`, `poster`)
VALUES
	(1,'An innocent man wrongly convicted of murder plots an elaborate escape from prison.','The Shawshank Redemption',NULL,'0000-00-00',NULL),
	(2,'The aging patriarch of an organized crime dynasty transfers control of his empire to his son.','The Godfather',NULL,'0000-00-00',NULL),
	(3,'The lives of twomob hitmen, a boxer, and a gangster and his wife intertwine.','Pulp Fiction',NULL,'0000-00-00',NULL),
	(4,'A thief who steals corporate secrets through the use of dream-sharing technology is in trouble.','Inception',NULL,'0000-00-00',NULL),
	(5,'A linguist is recruited by the military to communicate with aliens.','Arrival',NULL,'2016-11-10',NULL),
	(7,'A quirky and visually...','The Grand Budapest Hotel',100,'2014-02-06',NULL),
	(8,'A powerful historical drama...','12 Years a Slave',134,'2013-10-18',NULL),
	(9,'A unique film following...','Boyhood',165,'2014-07-11',NULL),
	(10,'A retired hitman seeks revenge...','John Wick',101,'2014-10-24',NULL),
	(11,'Ethan Hunt and his team...','Mission: Impossible - Ghost Protocol',133,'2011-12-16',NULL),
	(12,'James Bond confronts a dangerous...','Skyfall',143,'2012-10-26',NULL),
	(13,'Astronauts travel through a wormhole...','Interstellar',169,'2014-11-05',NULL),
	(14,'An astronaut fights for survival...','Gravity',91,'2013-10-04',NULL),
	(15,'An astronaut stranded on Mars...','The Martian',144,'2015-10-02',NULL),
	(16,'A man falls in love with an artificially...','Her',126,'2013-12-18',NULL),
	(17,'A young girl\'s personified emotions...','Inside Out',95,'2015-06-19',NULL),
	(18,'A young Viking befriends a dragon...','How to Train Your Dragon',98,'2010-03-26',NULL),
	(19,'Batman faces his toughest foe yet...','The Dark Knight Rises',165,'2012-07-20',NULL),
	(20,'A gritty and emotional story about...','Logan',137,'2017-03-03',NULL);

/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movie_actor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movie_actor`;

CREATE TABLE `movie_actor` (
  `movie_id` int DEFAULT NULL,
  `actor_id` int DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `movie_actor` WRITE;
/*!40000 ALTER TABLE `movie_actor` DISABLE KEYS */;

INSERT INTO `movie_actor` (`movie_id`, `actor_id`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(3,2),
	(4,4);

/*!40000 ALTER TABLE `movie_actor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movie_director
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movie_director`;

CREATE TABLE `movie_director` (
  `movie_id` int DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;

INSERT INTO `movie_director` (`movie_id`, `director_id`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4);

/*!40000 ALTER TABLE `movie_director` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table movie_genre
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movie_genre`;

CREATE TABLE `movie_genre` (
  `movie_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;

INSERT INTO `movie_genre` (`movie_id`, `genre_id`)
VALUES
	(1,1),
	(2,1),
	(2,2),
	(3,2),
	(3,3),
	(4,3),
	(4,4),
	(4,5);

/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
