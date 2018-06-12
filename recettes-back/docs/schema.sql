CREATE TABLE `recipe` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(250) NOT NULL,
	`time` varchar(250) NOT NULL,
	`favorite` bool NOT NULL,
	`skill` varchar(250) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `comment` (
	`id` int NOT NULL AUTO_INCREMENT,
	`recipeId` int NOT NULL,
	`author` varchar(250) NOT NULL,
	`comment` varchar(250) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ingredients` (
	`id` int NOT NULL AUTO_INCREMENT,
	`recipeId` int NOT NULL,
	`description` varchar(250) NOT NULL,
	`quantity` DECIMAL(4,2),
	PRIMARY KEY (`id`)
);

CREATE TABLE `steps` (
	`id` int NOT NULL AUTO_INCREMENT,
	`recipeId` int NOT NULL,
	`description` varchar(250) NOT NULL,
	`stepNumber` int NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `comment` ADD CONSTRAINT `comment_fk0` FOREIGN KEY (`recipeId`) REFERENCES `recipe`(`id`);

ALTER TABLE `ingredients` ADD CONSTRAINT `ingredients_fk0` FOREIGN KEY (`recipeId`) REFERENCES `recipe`(`id`);

ALTER TABLE `steps` ADD CONSTRAINT `steps_fk0` FOREIGN KEY (`recipeId`) REFERENCES `recipe`(`id`);
