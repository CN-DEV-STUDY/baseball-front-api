DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
                          `pno`	int	NOT NULL,
                          `p_name`	varchar(10)	NULL,
                          `p_birth`	varchar(10)	NULL,
                          `pos_no`	int	NOT NULL,
                          `tno2`	int	NOT NULL
);

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
                        `tno`	int	NOT NULL,
                        `t_name`	varchar(30)	NULL
);

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
                        `uno`	int	NOT NULL,
                        `name`	varchar(10)	NULL,
                        `id`	varchar(50)	NULL,
                        `password`	varchar(50)	NULL,
                        `email`	varchar(50)	NULL,
                        `admin_yn`	CHAR(1)	NULL
);

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
                            `pos_no`	int	NOT NULL,
                            `pos_name`	varchar(10)	NULL
);

ALTER TABLE `player` ADD CONSTRAINT `PK_PLAYER` PRIMARY KEY (
                                                             `pno`
    );

ALTER TABLE `team` ADD CONSTRAINT `PK_TEAM` PRIMARY KEY (
                                                         `tno`
    );

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
                                                         `uno`
    );

ALTER TABLE `position` ADD CONSTRAINT `PK_POSITION` PRIMARY KEY (
                                                                 `pos_no`
    );

ALTER TABLE `player` ADD CONSTRAINT `FK_position_TO_player_1` FOREIGN KEY (
                                                                           `pos_no`
    )
    REFERENCES `position` (
                           `pos_no`
        );

ALTER TABLE `player` ADD CONSTRAINT `FK_team_TO_player_1` FOREIGN KEY (
                                                                       `tno2`
    )
    REFERENCES `team` (
                       `tno`
        );



insert into position (pos_name) values ('감독');
insert into position (pos_name) values ('코치');
insert into position (pos_name) values ('중견수');
insert into position (pos_name) values ('투수');
insert into position (pos_name) values ('유격수');
insert into position (pos_name) values ('포수');
insert into position (pos_name) values ('좌익수');
insert into position (pos_name) values ('우익수');
insert into position (pos_name) values ('1루수');
insert into position (pos_name) values ('2루수');
insert into position (pos_name) values ('3루수');

SET FOREIGN_KEY_CHECKS = 0;

alter table position modify pos_no int not null auto_increment ;

SET FOREIGN_KEY_CHECKS = 1;