ALTER TABLE `songs` ADD `rating` INT( 4 ) NULL AFTER `link_youtube`; 

ALTER TABLE `users` ADD `total_votes` INT( 4 ) NULL AFTER `password`; 

CREATE TABLE `rocohola`.`votes` (
`id` int( 10 ) NOT NULL AUTO_INCREMENT ,
`video_id` varchar( 11 ) COLLATE utf8_unicode_ci NOT NULL ,
`user_id` int( 10 ) NOT NULL ,
`created` datetime NOT NULL ,
`modified` datetime NOT NULL ,
PRIMARY KEY ( `id` )
) ENGINE = MYISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
ALTER TABLE `votes` CHANGE `video_id` `song_id` INT( 10 ) NOT NULL;
ALTER TABLE `votes` ADD `points` INT( 4 ) NULL AFTER `user_id`;

ALTER TABLE `playings` ADD `song_id` INT( 10 ) NOT NULL AFTER `user_id`;
ALTER TABLE `queued_songs` ADD `song_id` INT( 10 ) NOT NULL AFTER `video_id`;
ALTER TABLE `votes` CHANGE `points` `points` INT( 4 ) NULL DEFAULT '0';

#///////////////////////////////////////////////////////////////////////////

ALTER TABLE `songs` ADD `name` VARCHAR( 255 ) NULL AFTER `link_youtube`;

ALTER TABLE `songs` ADD `enabled` TINYINT( 1 ) NOT NULL DEFAULT '1' AFTER `cantidad_votos`;













Tabla Playing almacena todo lo que va sonando durante la vida en cada cola que se genera (tabla queued_songs) y no se borra nunca.
Tabla queued_songs por cada play que se ejecute de la rocohola se borra y vuelve generar playlist