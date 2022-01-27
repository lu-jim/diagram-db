/* Database schema to keep the structure of entire database. */

CREATE TABLE `patients` (
  `id` int,
  `name` varchar,
  `date_of_birth` date,
  PRIMARY KEY (`id`)
);