/* Based on the question I didn't want to create a big dataset so I created the tables with suggested schema and did some simple queries
to answer the questions the attendance table i created report_date after the date the person went to the event arrival_date the person went only
in 1 event and the event_location could receive more than 1 person (I think everyone know that LOL) i did only 33% of the people where infected
I think still is a lot of people maybe the biggest rate ever!! With this small dataset I could answer all the questions and still generates the 
histogram (not ugly but with so little data it is not the best visualization). I hope you understand what I did, if not please let me know and I can
explain what I were thinking. Thanks for the opportunity. 
Best,
Hugo */


-- Connection String 
-- jdbc:postgresql://[username]:[password]@data-interview-db.ce7oyzeskgrt.eu-west-1.rds.amazonaws.com:5432/postgres

-- Create table scripts

CREATE TABLE u_0291898.attendance (
    index SERIAL,
	report_id int NOT NULL,
	report_date timestamp NOT NULL,
	event_location VARCHAR(64) NULL,
	arrival_date timestamp NULL,
	person_id int NOT NULL
);

CREATE TABLE u_0291898.positive_results (
    index SERIAL,
	person_id int NOT NULL,
	test_date timestamp NOT NULL
);

-- Ingest data on the tables
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1001,'2022-01-06',8,'2019-12-03 00:05:05',1),(1002,'2020-01-04',3,'2019-12-02 00:04:42',2),(1003,'2021-02-03',3,'2019-12-04 06:23:31',3),(1004,'2021-04-02',9,'2019-12-05 23:43:56',4),(1005,'2021-03-23',2,'2019-12-01 22:31:59',5),(1006,'2020-07-23',10,'2019-12-01 13:11:33',6),(1007,'2021-01-30',10,'2019-12-03 16:03:25',7),(1008,'2021-03-23',1,'2019-12-02 18:56:07',8),(1009,'2020-12-26',6,'2019-12-04 11:58:56',9),(1010,'2020-05-27',4,'2019-12-01 15:55:46',10);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1011,'2021-09-08',10,'2019-12-04 03:12:49',11),(1012,'2020-12-12',4,'2019-12-03 23:10:57',12),(1013,'2021-04-21',1,'2019-12-03 05:03:43',13),(1014,'2021-07-17',2,'2019-12-02 16:43:24',14),(1015,'2021-10-09',7,'2019-12-05 20:47:29',15),(1016,'2021-07-24',3,'2019-12-02 15:11:21',16),(1017,'2020-09-12',1,'2019-12-03 07:44:15',17),(1018,'2021-05-11',8,'2019-12-01 07:54:13',18),(1019,'2021-01-02',7,'2019-12-03 22:11:31',19),(1020,'2021-05-19',1,'2019-12-02 23:34:16',20);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1021,'2020-12-29',7,'2019-12-04 15:17:35',21),(1022,'2020-04-20',2,'2019-12-01 22:52:51',22),(1023,'2021-09-22',9,'2019-12-05 11:41:13',23),(1024,'2020-06-13',8,'2019-12-01 00:08:58',24),(1025,'2021-06-06',6,'2019-12-04 06:03:17',25),(1026,'2021-08-19',5,'2019-12-02 20:50:29',26),(1027,'2021-01-22',4,'2019-12-01 06:44:55',27),(1028,'2020-11-12',7,'2019-12-01 05:42:48',28),(1029,'2021-05-10',6,'2019-12-02 21:01:38',29),(1030,'2020-07-16',9,'2019-12-03 10:53:08',30);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1031,'2020-03-13',3,'2019-12-01 20:33:28',31),(1032,'2021-02-09',5,'2019-12-03 11:59:00',32),(1033,'2021-02-28',10,'2019-12-01 00:01:10',33),(1034,'2021-11-02',3,'2019-12-05 19:05:34',34),(1035,'2020-03-24',3,'2019-12-03 13:57:38',35),(1036,'2020-07-31',9,'2019-12-04 12:16:47',36),(1037,'2021-12-01',4,'2019-12-02 22:34:23',37),(1038,'2020-03-23',5,'2019-12-05 15:55:44',38),(1039,'2020-07-25',10,'2019-12-04 17:59:49',39),(1040,'2021-01-23',2,'2019-12-03 08:24:03',40);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1041,'2020-12-01',1,'2019-12-03 08:20:08',41),(1042,'2021-11-03',7,'2019-12-04 19:51:22',42),(1043,'2021-07-24',9,'2019-12-04 16:44:29',43),(1044,'2021-10-09',1,'2019-12-03 09:49:18',44),(1045,'2020-04-09',1,'2019-12-02 17:47:28',45),(1046,'2021-12-11',8,'2019-12-02 01:17:13',46),(1047,'2021-06-19',2,'2019-12-03 17:34:26',47),(1048,'2020-03-31',8,'2019-12-03 03:46:53',48),(1049,'2021-05-04',9,'2019-12-04 03:33:26',49),(1050,'2020-12-27',6,'2019-12-02 01:12:25',50);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1051,'2020-08-17',2,'2019-12-02 17:40:29',51),(1052,'2021-03-27',10,'2019-12-03 09:18:57',52),(1053,'2020-01-20',10,'2019-12-01 21:10:17',53),(1054,'2020-05-28',1,'2019-12-01 19:27:35',54),(1055,'2020-08-26',1,'2019-12-01 02:51:02',55),(1056,'2021-10-05',7,'2019-12-02 17:12:56',56),(1057,'2022-01-06',6,'2019-12-03 00:31:26',57),(1058,'2021-05-11',1,'2019-12-05 15:14:57',58),(1059,'2020-07-05',6,'2019-12-01 22:05:32',59),(1060,'2021-01-14',2,'2019-12-03 22:11:04',60);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1061,'2020-12-14',6,'2019-12-04 04:51:05',61),(1062,'2021-05-17',9,'2019-12-04 17:09:07',62),(1063,'2021-08-15',4,'2019-12-01 00:26:05',63),(1064,'2020-12-23',1,'2019-12-04 11:40:11',64),(1065,'2020-08-03',8,'2019-12-05 05:41:18',65),(1066,'2021-11-14',10,'2019-12-03 21:29:47',66),(1067,'2020-04-30',4,'2019-12-05 12:35:54',67),(1068,'2020-09-06',10,'2019-12-03 15:59:42',68),(1069,'2021-01-26',5,'2019-12-05 07:57:42',69),(1070,'2021-09-12',10,'2019-12-03 09:39:25',70);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1071,'2021-10-02',3,'2019-12-01 08:11:23',71),(1072,'2021-05-12',2,'2019-12-01 23:08:34',72),(1073,'2020-04-03',4,'2019-12-02 20:46:28',73),(1074,'2020-11-21',2,'2019-12-02 20:27:43',74),(1075,'2021-07-17',2,'2019-12-05 02:52:49',75),(1076,'2021-08-06',3,'2019-12-05 03:23:31',76),(1077,'2020-11-02',1,'2019-12-04 21:00:25',77),(1078,'2021-09-22',5,'2019-12-03 11:13:04',78),(1079,'2020-06-12',6,'2019-12-05 12:20:14',79),(1080,'2020-08-08',8,'2019-12-05 16:27:00',80);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1081,'2020-10-08',5,'2019-12-05 07:51:37',81),(1082,'2021-04-09',10,'2019-12-05 22:37:40',82),(1083,'2020-06-28',4,'2019-12-04 01:53:16',83),(1084,'2020-05-05',8,'2019-12-04 09:35:09',84),(1085,'2021-12-05',9,'2019-12-01 02:54:58',85),(1086,'2021-10-28',2,'2019-12-02 14:47:58',86),(1087,'2021-07-05',8,'2019-12-04 03:04:44',87),(1088,'2020-10-15',3,'2019-12-02 05:02:08',88),(1089,'2020-11-14',3,'2019-12-01 06:34:23',89),(1090,'2020-08-26',8,'2019-12-03 02:47:22',90);
INSERT INTO "attendance" (report_id,report_date,event_location,arrival_date,person_id) VALUES (1091,'2020-09-30',5,'2019-12-04 17:13:30',91),(1092,'2021-07-16',8,'2019-12-03 11:47:44',92),(1093,'2020-01-03',4,'2019-12-05 20:04:40',93),(1094,'2020-09-20',8,'2019-12-03 09:16:22',94),(1095,'2020-03-02',1,'2019-12-01 20:10:18',95),(1096,'2021-06-27',1,'2019-12-05 22:11:11',96),(1097,'2020-11-22',4,'2019-12-05 21:00:26',97),(1098,'2021-04-17',9,'2019-12-03 12:31:52',98),(1099,'2020-09-20',7,'2019-12-03 11:54:30',99),(1100,'2020-10-26',9,'2019-12-05 21:34:31',100);

INSERT INTO "positive_results" (person_id,test_date) VALUES (1,'2020-04-02'),(2,'2020-04-03'),(3,'2020-04-01'),(4,'2020-04-03'),(5,'2020-04-04'),(6,'2020-04-01'),(7,'2020-04-04'),(8,'2020-04-04'),(9,'2020-04-05'),(10,'2020-04-05');
INSERT INTO "positive_results" (person_id,test_date) VALUES (11,'2020-04-03'),(12,'2020-04-02'),(13,'2020-04-04'),(14,'2020-04-06'),(15,'2020-04-06'),(16,'2020-04-06'),(17,'2020-04-01'),(18,'2020-04-06'),(19,'2020-04-05'),(20,'2020-04-01');
INSERT INTO "positive_results" (person_id,test_date) VALUES (21,'2020-04-06'),(22,'2020-04-05'),(23,'2020-04-03'),(24,'2020-04-01'),(25,'2020-04-02'),(26,'2020-04-03'),(27,'2020-04-04'),(28,'2020-04-06'),(29,'2020-04-04'),(30,'2020-04-03');
-- Questions answered

-- Retrieve events (location and dates) that have had an attendee who got a positive result. (possibly some days after the event)

select
	event_location,
	date(arrival_date) date
from
	attendance a2
where
	exists (
	select
		1
	from
		positive_results pr
	where
		a2.person_id = person_id )
order by
	1,2

-- Given a person id, retrieve the possible events at which that person might have contracted covid. 

select
	event_location
from
	attendance a2
where
	exists (
	select
		1
	from
		positive_results pr
	where
		a2.person_id = person_id )
	and person_id in (33)
order by
	1


-- Retrieve a list of people who should be warned that they were in contact with a person who tested positive. 

select
	a.person_id,
	date(a.arrival_date),
	a.event_location
from
	attendance a
left join (
	select
		a2.person_id,
		event_location,
		date(arrival_date)
	from
		u_0291898.attendance a2
	where
		exists (
		select
			1
		from
			u_0291898.positive_results pr
		where
			a2.person_id = person_id ) ) b on
	a.event_location = b.event_location
	and date(a.arrival_date) = b.date
where
	b.person_id is null
order by
	2, 3, 1

-- What is the effect of late reporting or logging of attendance (e.g. what if all reports were same day)
/* The person who went to the event at the same day who was infected could spread the virus. */