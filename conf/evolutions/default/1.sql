# --- !Ups
CREATE TABLE admin (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL DEFAULT '',
    password VARCHAR(255) NOT NULL DEFAULT '',
    created datetime NOT NULL,
    modified datetime NOT NULL,
    active TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8;

# --- !Downs
drop table admin;