CREATE TABLE role (
    id integer not null auto_increment,
    name varchar(25) not null,
    PRIMARY KEY(id)
);

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'COLLAB'),
(3, 'STUDENT');

CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `school` varchar(255) DEFAULT '',
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`)
);

INSERT INTO `user` (`id`, `email`, `firstname`, `lastname`, `password`, `school`, `role_id`) VALUES
(1, 'khalil.hamdi@talan.com', 'khalil', 'hamdi', '$2a$10$PJV9BlV964MQmChS.0awu7yKac1km6Tl2CcfgCoXCAtPJClK21y2', 'TALAN', 1),
(4, 'farouk.guizeni@talan.com', 'farouk', 'guizeni', '$2a$10$xyE5.MxoasoM4hsQlR7Ouedt8TqJiB2mcIdj9p71xML8imxOIOEia', 'TALAN', 2),
(5, 'amira.allani@talan.com', 'amira', 'allani', '$2a$10$PJV9BlV964MQmChS.0awu7yKac1km6Tl2CcfgCoXCAtPJClK21y2', 'TALAN', 2),
(7, 'marouane.essid@talan.com', 'marouane', 'Essid', '$2a$10$Zx8cjMJfvRcmogpMiGwxzezLUqRB6WCs5EIQQtWmmuh0hycihg1Qq', 'TALAN', 2),
(8, 'aymen@gamil.com', 'Aymen', 'Ben khaled', '$2a$10$Xe92JeFnT6OeGkTLG5aaxOKlyQPF5XvjJT9uFiIZRZSlsSrCh9ZW', 'ENIT', 3),
(9, 'yacine@gmail.com', 'yacine', 'Ben Amor', '$2a$10$Bbq8NGn6zW7b1Z.vIhELYe.b7TPx3ZQA8Z8eleww.sgJZA3jh5cLG', 'ESPRIT', 3),
(10, 'salma@gmail.com', 'Salma', 'Arfaoui', '$2a$10$Bbq8NGn6zW7b1Z.vIhELYe.b7TPx3ZQA8Z8eleww.sgJZA3jh5cLG', 'ENISO', 3),
(12, 'hello@gmail.com', 'Mourad', 'Mourad', '$2a$10$2chpyFJ15d1mNjUCPPM.u.weYiHtZ8i72.Jb3SwcIoOjr1Nb7.h9a', 'school', 2);
