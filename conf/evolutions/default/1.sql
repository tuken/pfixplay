# --- !Ups
CREATE TABLE admin (
    username VARCHAR(255) NOT NULL DEFAULT '',
    password VARCHAR(255) NOT NULL DEFAULT '',
    created datetime NOT NULL,
    modified datetime NOT NULL,
    active TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`username`)
) DEFAULT CHARACTER SET utf8;

# --- !Downs
drop table admin;