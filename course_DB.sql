-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "Course" -----------------------------------
CREATE TABLE `Course` ( 
	`course_name` VarChar( 255 ) NOT NULL,
	`course_price` VarChar( 255 ) NOT NULL,
	`course_duration` VarChar( 255 ) NOT NULL,
	`course_level` VarChar( 255 ) NOT NULL,
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`course_teach` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "reviews" ----------------------------------
CREATE TABLE `reviews` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` VarChar( 30 ) NOT NULL,
	`corse_id` Int( 30 ) NULL,
	`teacher_id` Int( 30 ) NULL,
	`created` DateTime NOT NULL,
	`text_review` Text NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "teachers" ---------------------------------
CREATE TABLE `teachers` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 100 ) NOT NULL,
	`about` Text NOT NULL,
	`skills` VarChar( 60 ) NOT NULL,
	`phone` Int( 255 ) NOT NULL,
	`mail` VarChar( 255 ) NOT NULL,
	`skype` VarChar( 255 ) NOT NULL,
	`photo` VarChar( 100 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "personalArea" -----------------------------
CREATE TABLE `personalArea` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`login` VarChar( 155 ) NOT NULL DEFAULT 'user',
	`password` VarChar( 155 ) NOT NULL,
	`email` VarChar( 155 ) NOT NULL,
	`FIO` VarChar( 155 ) NOT NULL,
	`age` Int( 3 ) NOT NULL,
	`avatar` VarChar( 255 ) NOT NULL DEFAULT 'logo.png',
	`country` VarChar( 100 ) NOT NULL,
	`phone` Int( 100 ) NOT NULL,
	`date_register` Date NOT NULL,
	`level` VarChar( 50 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- Dump data of "Course" -----------------------------------
-- ---------------------------------------------------------


-- Dump data of "reviews" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "teachers" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "personalArea" -----------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


