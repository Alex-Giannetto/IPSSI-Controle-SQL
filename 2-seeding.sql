
INSERT INTO `year`(id, label) VALUES (1,"First year (Bsc)");
INSERT INTO `year`(id, label) VALUES (2,"Second year (Bsc Hons)");
INSERT INTO `year`(id, label) VALUES (3,"Third year (Msc)");

insert into `student` (`id`,`firstname`,`lastname`) values (1,'Olivier','Martin');
insert into `student` (`id`,`firstname`,`lastname`) values (2,'Pierre','Martin');
insert into `student` (`id`,`firstname`,`lastname`) values (3,'Jacques','Martin');
insert into `student` (`id`,`firstname`,`lastname`) values (4,'Martin','François');
insert into `student` (`id`,`firstname`,`lastname`) values (5,'Jennifer','Garner');

INSERT INTO `module`(`id`, `name`, `year`) VALUES (1,'linux' ,1);
INSERT INTO `module`(`id`, `name`, `year`) VALUES (2, 'docker' ,1);
INSERT INTO `module`(`id`, `name`, `year`) VALUES (3,'symfony' ,2);
INSERT INTO `module`(`id`, `name`, `year`) VALUES (4, 'asp.net core' ,2);
INSERT INTO `module`(`id`, `name`, `year`) VALUES (5, "aspect oriented architecture", 3);
INSERT INTO `module`(`id`, `name`, `year`) VALUES (6,"ddd and hexagonal architecture", 3);

insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00");
insert into `enrolment` (`id_student`, `id_year`, `from`, `to`) values (3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");

INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (1, 1, "2015-01-01 00:00:00", "2015-07-09 00:00:00", 6);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (1, 2, "2012-01-01 00:00:00", "2015-07-09 00:00:00", 12);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (2, 3, "2014-01-01 00:00:00", "2015-07-09 00:00:00", 16);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (3, 4, "2011-01-01 00:00:00", "2015-07-09 00:00:00", 18);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (4, 5, "2010-01-01 00:00:00", "2015-07-09 00:00:00", 12);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (4, 6, "2015-02-01 00:00:00", "2015-07-09 00:00:00", 11);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (5, 3, "2015-03-01 00:00:00", "2015-07-09 00:00:00", 9);
INSERT INTO `assessment`(`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES (5, 6, "2015-05-01 00:00:00", "2015-07-09 00:00:00", 11);