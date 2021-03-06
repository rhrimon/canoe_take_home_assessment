CREATE DATABASE gameDB;

CREATE TABLE employee (
id serial PRIMARY KEY,
name varchar(64) NOT NULL);

CREATE TABLE activity (
id serial PRIMARY KEY,
activity_id INTEGER NOT NULL,
activity_date date NOT NULL,
activity_type varchar(20) NOT NULL,
employee_id INTEGER REFERENCES employees(id) NOT NULL,
winner BOOLEAN NOT NULL -- determines whether employee won during that game (True means win)
);

INSERT INTO 
	employees (id, name)
VALUES
	(79, 'Ruby Stewart'),
	(23, 'Mark Morgan'),
	(30, 'Debra Bryant'),
	(96, 'Tammy Hernandez'),
	(63, 'Patricia White'),
	(50, 'Stephanie Phillips'),
	(25, 'Craig Martinez'),
	(55, 'Frances Price'),
	(17, 'Alice Gonzales'),
	(100, 'Adam Simmons'),
	(43, 'Harry Smith'),
	(98, 'Margaret Campbell'),
	(11, 'Lisa Morris'),
	(35, 'Brandon Jones'),
	(69, 'Kathryn Sanchez'),
	(75, 'Jose Murphy'),
	(7, 'Christopher Allen'),
	(10, 'Denise Bell'),
	(89, 'Joyce Ramirez'),
	(22, 'Raymond Rogers'),
	(42, 'Nicholas Patterson'),
	(38, 'Roger Cook'),
	(99, 'Lois Jackson'),
	(46, 'Fred Barnes'),
	(15, 'Gerald Torres'),
	(91, 'Phyllis Cooper'),
	(9, 'Howard Russell'),
	(54, 'Norma Butler'),
	(26, 'Lillian Long'),
	(48, 'Lawrence Watson'),
	(56, 'Henry Moore'),
	(67, 'Heather Ross'),
	(33, 'Richard Flores'),
	(4, 'Rachel Lewis'),
	(44, 'Steven Rodriguez'),
	(81, 'Anthony Robinson'),
	(72, 'Ruth Mitchell'),
	(86, 'Jack Anderson'),
	(45, 'Jeffrey Williams'),
	(71, 'Janet Scott'),
	(49, 'James Sanders'),
	(85, 'Alan Wood'),
	(80, 'Keith Harris'),
	(92, 'Jacqueline Wilson'),
	(13, 'Marie Turner'),
	(39, 'Ralph Garcia'),
	(73, 'Paul Hughes'),
	(51, 'Helen Bailey'),
	(59, 'Maria Taylor'),
	(5, 'Douglas Washington'),
	(31, 'Ann Thomas'),
	(37, 'Dorothy Clark'),
	(18, 'Virginia Baker'),
	(8, 'Paula Edwards'),
	(82, 'Cynthia Rivera'),
	(70, 'Kelly Griffin'),
	(12, 'Julie Lopez'),
	(97, 'Doris Walker'),
	(61, 'Jeremy King'),
	(94, 'Justin Green'),
	(14, 'Jane Young'),
	(24, 'Joan Bennett'),
	(16, 'Kevin Hall'),
	(58, 'Jimmy Johnson'),
	(77, 'Earl Ward'),
	(84, 'Carlos James'),
	(83, 'Patrick Wright'),
	(28, 'Deborah Adams'),
	(76, 'Catherine Carter'),
	(2, 'David Roberts'),
	(20, 'Rose Alexander'),
	(1, 'Judith Parker'),
	(3, 'Nicole Davis'),
	(95, 'Kathleen Gonzalez'),
	(87, 'Emily Lee'),
	(34, 'Susan Diaz'),
	(29, 'Brian Henderson'),
	(68, 'Joshua Peterson'),
	(57, 'Linda Brooks'),
	(53, 'Wayne Powell'),
	(41, 'Michelle Hill'),
	(62, 'Marilyn Reed'),
	(90, 'Jean Coleman'),
	(6, 'Kathy Martin'),
	(66, 'Johnny Brown'),
	(60, 'Donald Jenkins'),
	(78, 'Steve Perry'),
	(74, 'Juan Miller'),
	(21, 'Christina Howard'),
	(40, 'Betty Gray'),
	(47, 'Amanda Collins'),
	(88, 'Bruce Evans'),
	(36, 'Donna Foster'),
	(65, 'Ashley Nelson'),
	(64, 'Andrea Kelly'),
	(19, 'Anne Perez'),
	(52, 'Joseph Cox'),
	(32, 'Beverly Richardson'),
	(27, 'Philip Thompson'),
	(93, 'Stephen Rayburn'),
	(999, 'EVERYONE');

INSERT INTO 
	activity (activity_id, activity_date, activity_type, employee_id, winner)
VALUES
	(1, '01-01-2021', 'GAME', 30, TRUE),
	(1, '01-01-2021', 'GAME', 80, TRUE),
	(1, '01-01-2021', 'GAME', 71, FALSE),
	(1, '01-01-2021', 'GAME', 50, TRUE),
	(1, '01-01-2021', 'GAME', 41, TRUE),
	(1, '01-01-2021', 'GAME', 72, FALSE),
	(1, '01-01-2021', 'GAME', 3, FALSE),
	(1, '01-01-2021', 'GAME', 60, TRUE),
	(1, '01-01-2021', 'GAME', 80, FALSE),
	(1, '01-01-2021', 'GAME', 84, TRUE),
	(1, '01-01-2021', 'GAME', 63, TRUE),
	(1, '01-01-2021', 'GAME', 57, FALSE),
	(1, '01-01-2021', 'GAME', 54, FALSE),
	(1, '01-01-2021', 'GAME', 46, TRUE),
	(1, '01-01-2021', 'GAME', 82, TRUE),
	(1, '01-01-2021', 'GAME', 17, TRUE),
	(1, '01-01-2021', 'GAME', 96, FALSE),
	(1, '01-01-2021', 'GAME', 25, TRUE),
	(1, '01-01-2021', 'GAME', 30, TRUE),
	(1, '01-01-2021', 'GAME', 94, FALSE),
	(1, '01-01-2021', 'GAME', 57, TRUE),
	(1, '01-01-2021', 'GAME', 3, FALSE),
	(1, '01-01-2021', 'GAME', 84, TRUE),
	(1, '01-01-2021', 'GAME', 12, TRUE),
	(1, '01-01-2021', 'GAME', 96, FALSE),
	(1, '01-01-2021', 'GAME', 2, TRUE),
	(1, '01-01-2021', 'GAME', 89, TRUE),
	(1, '01-01-2021', 'GAME', 18, FALSE),
	(1, '01-01-2021', 'GAME', 3, FALSE),
	(2, '01-08-2021', 'GAME', 8, FALSE),
	(2, '01-08-2021', 'GAME', 25, FALSE),
	(2, '01-08-2021', 'GAME', 80, TRUE),
	(2, '01-08-2021', 'GAME', 82, FALSE),
	(2, '01-08-2021', 'GAME', 67, TRUE),
	(2, '01-08-2021', 'GAME', 36, TRUE),
	(2, '01-08-2021', 'GAME', 99, FALSE),
	(2, '01-08-2021', 'GAME', 1, TRUE),
	(2, '01-08-2021', 'GAME', 69, FALSE),
	(2, '01-08-2021', 'GAME', 62, TRUE),
	(2, '01-08-2021', 'GAME', 38, TRUE),
	(2, '01-08-2021', 'GAME', 15, TRUE),
	(2, '01-08-2021', 'GAME', 48, FALSE),
	(2, '01-08-2021', 'GAME', 66, FALSE),
	(2, '01-08-2021', 'GAME', 26, FALSE),
	(2, '01-08-2021', 'GAME', 64, FALSE),
	(2, '01-08-2021', 'GAME', 13, FALSE),
	(2, '01-08-2021', 'GAME', 38, TRUE),
	(2, '01-08-2021', 'GAME', 32, TRUE),
	(2, '01-08-2021', 'GAME', 63, FALSE),
	(2, '01-08-2021', 'GAME', 14, TRUE),
	(2, '01-08-2021', 'GAME', 86, FALSE),
	(2, '01-08-2021', 'GAME', 7, FALSE),
	(2, '01-08-2021', 'GAME', 71, TRUE),
	(2, '01-08-2021', 'GAME', 32, TRUE),
	(2, '01-08-2021', 'GAME', 84, TRUE),
	(2, '01-08-2021', 'GAME', 76, TRUE),
	(2, '01-08-2021', 'GAME', 13, FALSE),
	(2, '01-08-2021', 'GAME', 15, FALSE),
	(2, '01-08-2021', 'GAME', 90, FALSE),
	(2, '01-08-2021', 'GAME', 70, FALSE),
	(2, '01-08-2021', 'GAME', 78, TRUE),
	(2, '01-08-2021', 'GAME', 77, FALSE),
	(2, '01-08-2021', 'GAME', 33, FALSE),
	(2, '01-08-2021', 'GAME', 73, FALSE),
	(2, '01-08-2021', 'GAME', 83, FALSE),
	(2, '01-08-2021', 'GAME', 5, TRUE),
	(2, '01-08-2021', 'GAME', 100, FALSE),
	(2, '01-08-2021', 'GAME', 82, TRUE),
	(3, '01-15-2021', 'GAME', 5, FALSE),
	(3, '01-15-2021', 'GAME', 56, TRUE),
	(3, '01-15-2021', 'GAME', 12, FALSE),
	(3, '01-15-2021', 'GAME', 79, TRUE),
	(3, '01-15-2021', 'GAME', 70, FALSE),
	(3, '01-15-2021', 'GAME', 90, FALSE),
	(3, '01-15-2021', 'GAME', 19, FALSE),
	(3, '01-15-2021', 'GAME', 41, FALSE),
	(3, '01-15-2021', 'GAME', 37, FALSE),
	(3, '01-15-2021', 'GAME', 5, TRUE),
	(3, '01-15-2021', 'GAME', 62, FALSE),
	(3, '01-15-2021', 'GAME', 17, FALSE),
	(3, '01-15-2021', 'GAME', 8, FALSE),
	(3, '01-15-2021', 'GAME', 65, TRUE),
	(3, '01-15-2021', 'GAME', 61, TRUE),
	(3, '01-15-2021', 'GAME', 95, FALSE),
	(3, '01-15-2021', 'GAME', 78, FALSE),
	(3, '01-15-2021', 'GAME', 35, FALSE),
	(3, '01-15-2021', 'GAME', 80, FALSE),
	(3, '01-15-2021', 'GAME', 31, FALSE),
	(3, '01-15-2021', 'GAME', 8, FALSE),
	(3, '01-15-2021', 'GAME', 61, FALSE),
	(3, '01-15-2021', 'GAME', 67, TRUE),
	(3, '01-15-2021', 'GAME', 79, TRUE),
	(3, '01-15-2021', 'GAME', 14, TRUE),
	(3, '01-15-2021', 'GAME', 62, FALSE),
	(3, '01-15-2021', 'GAME', 15, FALSE),
	(4, '01-22-2021', 'GAME', 63, TRUE),
	(4, '01-22-2021', 'GAME', 33, FALSE),
	(4, '01-22-2021', 'GAME', 96, TRUE),
	(4, '01-22-2021', 'GAME', 10, TRUE),
	(4, '01-22-2021', 'GAME', 34, TRUE),
	(4, '01-22-2021', 'GAME', 56, TRUE),
	(4, '01-22-2021', 'GAME', 61, FALSE),
	(4, '01-22-2021', 'GAME', 4, FALSE),
	(4, '01-22-2021', 'GAME', 5, TRUE),
	(4, '01-22-2021', 'GAME', 8, TRUE),
	(4, '01-22-2021', 'GAME', 31, TRUE),
	(4, '01-22-2021', 'GAME', 55, FALSE),
	(4, '01-22-2021', 'GAME', 30, FALSE),
	(4, '01-22-2021', 'GAME', 20, TRUE),
	(4, '01-22-2021', 'GAME', 97, TRUE),
	(4, '01-22-2021', 'GAME', 28, FALSE),
	(4, '01-22-2021', 'GAME', 36, TRUE),
	(4, '01-22-2021', 'GAME', 48, TRUE),
	(4, '01-22-2021', 'GAME', 47, FALSE),
	(4, '01-22-2021', 'GAME', 99, FALSE),
	(4, '01-22-2021', 'GAME', 11, TRUE),
	(4, '01-22-2021', 'GAME', 25, TRUE),
	(4, '01-22-2021', 'GAME', 69, TRUE),
	(4, '01-22-2021', 'GAME', 6, FALSE),
	(4, '01-22-2021', 'GAME', 2, FALSE),
	(4, '01-22-2021', 'GAME', 75, TRUE),
	(4, '01-22-2021', 'GAME', 35, TRUE),
	(4, '01-22-2021', 'GAME', 53, FALSE),
	(4, '01-22-2021', 'GAME', 99, TRUE),
	(4, '01-22-2021', 'GAME', 46, TRUE),
	(4, '01-22-2021', 'GAME', 14, TRUE),
	(5, '01-29-2021', 'GAME', 69, TRUE),
	(5, '01-29-2021', 'GAME', 89, TRUE),
	(5, '01-29-2021', 'GAME', 67, FALSE),
	(5, '01-29-2021', 'GAME', 49, TRUE),
	(5, '01-29-2021', 'GAME', 12, TRUE),
	(5, '01-29-2021', 'GAME', 79, TRUE),
	(5, '01-29-2021', 'GAME', 30, FALSE),
	(5, '01-29-2021', 'GAME', 37, FALSE),
	(5, '01-29-2021', 'GAME', 58, FALSE),
	(5, '01-29-2021', 'GAME', 4, TRUE),
	(5, '01-29-2021', 'GAME', 40, FALSE),
	(5, '01-29-2021', 'GAME', 82, FALSE),
	(5, '01-29-2021', 'GAME', 55, FALSE),
	(5, '01-29-2021', 'GAME', 74, TRUE),
	(5, '01-29-2021', 'GAME', 89, FALSE),
	(5, '01-29-2021', 'GAME', 73, TRUE),
	(5, '01-29-2021', 'GAME', 66, FALSE),
	(5, '01-29-2021', 'GAME', 72, FALSE),
	(5, '01-29-2021', 'GAME', 75, TRUE),
	(5, '01-29-2021', 'GAME', 100, TRUE),
	(5, '01-29-2021', 'GAME', 82, FALSE),
	(5, '01-29-2021', 'GAME', 54, TRUE),
	(5, '01-29-2021', 'GAME', 41, TRUE),
	(5, '01-29-2021', 'GAME', 13, FALSE),
	(5, '01-29-2021', 'GAME', 67, FALSE),
	(5, '01-29-2021', 'GAME', 43, TRUE),
	(5, '01-29-2021', 'GAME', 41, FALSE),
	(5, '01-29-2021', 'GAME', 80, FALSE),
	(5, '01-29-2021', 'GAME', 44, TRUE),
	(5, '01-29-2021', 'GAME', 19, FALSE),
	(6, '02-05-2021', 'PARTY', 999, TRUE),
	(7, '02-12-2021', 'GAME', 84, TRUE),
	(7, '02-12-2021', 'GAME', 39, FALSE),
	(7, '02-12-2021', 'GAME', 71, FALSE),
	(7, '02-12-2021', 'GAME', 54, FALSE),
	(7, '02-12-2021', 'GAME', 83, TRUE),
	(7, '02-12-2021', 'GAME', 68, TRUE),
	(7, '02-12-2021', 'GAME', 38, TRUE),
	(7, '02-12-2021', 'GAME', 69, FALSE),
	(7, '02-12-2021', 'GAME', 86, TRUE),
	(7, '02-12-2021', 'GAME', 91, FALSE),
	(7, '02-12-2021', 'GAME', 68, TRUE),
	(7, '02-12-2021', 'GAME', 3, FALSE),
	(7, '02-12-2021', 'GAME', 56, TRUE),
	(7, '02-12-2021', 'GAME', 64, TRUE),
	(7, '02-12-2021', 'GAME', 11, FALSE),
	(7, '02-12-2021', 'GAME', 81, TRUE),
	(7, '02-12-2021', 'GAME', 16, FALSE),
	(7, '02-12-2021', 'GAME', 3, TRUE),
	(7, '02-12-2021', 'GAME', 55, FALSE),
	(7, '02-12-2021', 'GAME', 18, FALSE),
	(8, '02-19-2021', 'GAME', 14, TRUE),
	(8, '02-19-2021', 'GAME', 31, FALSE),
	(8, '02-19-2021', 'GAME', 16, TRUE),
	(8, '02-19-2021', 'GAME', 44, FALSE),
	(8, '02-19-2021', 'GAME', 41, FALSE),
	(8, '02-19-2021', 'GAME', 11, TRUE),
	(8, '02-19-2021', 'GAME', 70, TRUE),
	(8, '02-19-2021', 'GAME', 87, TRUE),
	(8, '02-19-2021', 'GAME', 68, TRUE),
	(8, '02-19-2021', 'GAME', 70, TRUE),
	(8, '02-19-2021', 'GAME', 46, FALSE),
	(8, '02-19-2021', 'GAME', 50, TRUE),
	(8, '02-19-2021', 'GAME', 9, TRUE),
	(8, '02-19-2021', 'GAME', 30, FALSE),
	(8, '02-19-2021', 'GAME', 71, FALSE),
	(8, '02-19-2021', 'GAME', 57, FALSE),
	(8, '02-19-2021', 'GAME', 89, TRUE),
	(8, '02-19-2021', 'GAME', 32, FALSE),
	(8, '02-19-2021', 'GAME', 7, TRUE),
	(8, '02-19-2021', 'GAME', 14, FALSE),
	(8, '02-19-2021', 'GAME', 60, TRUE),
	(8, '02-19-2021', 'GAME', 60, TRUE),
	(8, '02-19-2021', 'GAME', 27, FALSE);