SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `videos` 
ADD COLUMN `views_count_25` INT(11) NULL DEFAULT 0,
ADD COLUMN `views_count_50` INT(11) NULL DEFAULT 0,
ADD COLUMN `views_count_75` INT(11) NULL DEFAULT 0,
ADD COLUMN `views_count_100` INT(11) NULL DEFAULT 0;

UPDATE configurations SET  version = '7.2', modified = now() WHERE id = 1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
