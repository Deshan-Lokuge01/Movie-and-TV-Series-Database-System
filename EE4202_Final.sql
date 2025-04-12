CREATE DATABASE TVSEREIS_MOVIES_COLLECTION1 ;
use TVSEREIS_MOVIES_COLLECTION1 ;


CREATE TABLE MOVIE( 
MOVIE_ID varchar (10) NOT NULL,
MOVIE_NAME varchar (50) NOT NULL,
RELEASED_YEAR int (4) NOT NULL,
GENRE varchar (20) NOT NULL,
DURATION time not null, 
M_LANGUAGE varchar (20),
BUDGET double (30,5),
constraint pk1 primary key(MOVIE_ID)
);

CREATE TABLE DIRECTOR ( 
LICENSE_NO varchar (10) NOT NULL,
DIRECTOR_NAME varchar (50) NOT NULL,
AGE INT (3),
ACTIVE_PERIOD_IN_YEARS INT (5),
COUNTRY varchar (20) NOT NULL,
NATIONALITTY  varchar (15) not null,
AWARDS_AND_NOMINATIONS varchar (50),
movie_id varchar(10),
tv_series_id varchar (10) , 
constraint pk1 primary key(LICENSE_NO)
);

CREATE TABLE TV_SERIES( 
TV_SERIES_ID varchar (10) NOT NULL,
TV_SERIES_NAME varchar (50) NOT NULL,
RELEASED_YEAR int (4) NOT NULL,
GENRE varchar (20) NOT NULL,
TS_LANGUAGE varchar (20),
NO_OF_SEASONS INT (6),
country_name varchar (20),
constraint pk1 primary key (TV_SERIES_ID)
);

CREATE TABLE COUNTRY(
COUNTRY_NAME varchar (20) Not null,
COUNTRY_RANK int(6),
REGION varchar (20),
constraint pk1 Primary key (COUNTRY_NAME)
);

CREATE TABLE EPISODE(
TITLE varchar (150) Not null,
RATINGS double(3,2),
EPISODE_LENGTH time,
tv_series_id varchar (50) Not null,
COST_PER_EPISODE double(30,5),
constraint pk1 Primary key (tv_series_id, title)
);

CREATE TABLE STUDIO(
LICENSE_NO varchar (10) NOT NULL,
ESTABLISHED_DATE date,
REVENUE double (60,3),
COUNTRY varchar(15),
tv_series_id varchar(20),
constraint pk1 Primary key (LICENSE_NO)
);

CREATE TABLE MAIN_ACTOR(
ACTOR_LICENSE_NO INT(10) NOT NULL,
FIRST_NAME varchar(15),
LAST_NAME varchar(15),
NATIONALITTY  varchar (15) ,
COUNTRY varchar(15),
DATE_OF_BIRTH date,
ACTIVE_PERIOD int(10),
AWARDS varchar(40),
movie_id varchar(10),
president INT(10),
constraint pk1 primary key(ACTOR_LICENSE_NO)
 );
 
 CREATE TABLE NAME_OF_THE_STUDIO(
studio_name varchar (30),
license_no varchar (10) Not null,
tv_series_id varchar(20),
constraint pk1 Primary key (license_no)
);

CREATE TABLE NAME_OF_THE_WEBSITE(
website_name varchar (30),
license_no varchar (10) Not null,
tv_series_id varchar(20),
constraint pk1 Primary key (license_no)
);

CREATE TABLE SONG(
LICENSE_ID varchar(10) NOT NULL,
SONG_NAME varchar (200),
SINGER varchar(200),
WRITER varchar (200),
S_LANGUAGE varchar(200),
AWARDS varchar(200),
movie_id varchar(10),
constraint pk1 primary key(LICENSE_ID)
);

CREATE TABLE REVIEW(
COMMENTS varchar(200),
RATING double(10,3) Not null,
REVIEW_DATE date,
EXPERIENCE varchar(50),
movie_id varchar(10),
tv_series_id varchar (10) Not null,
constraint pk1 primary key(tv_series_id,RATING)
);

-- Inserting data into COUNTRY table
INSERT INTO COUNTRY (COUNTRY_NAME, COUNTRY_RANK, REGION)
VALUES 
('USA', 1, 'North America'),
('UK', 2, 'Europe'),
('Japan', 3, 'Asia'),
('Canada', 4, 'North America'),
('Germany', 5, 'Europe'),
('Australia', 6, 'Oceania');

INSERT INTO COUNTRY (COUNTRY_NAME, COUNTRY_RANK, REGION)
VALUES 
('France', 7, 'Europe'),
('Italy', 8, 'Europe'),
('China', 9, 'Asia'),
('India', 10, 'Asia'),
('Brazil', 11, 'South America'),
('South Korea', 12, 'Asia'),
('Russia', 13, 'Europe'),
('Spain', 14, 'Europe'),
('Mexico', 15, 'North America'),
('Netherlands', 16, 'Europe'),
('Switzerland', 17, 'Europe'),
('Sweden', 18, 'Europe'),
('Norway', 19, 'Europe'),
('Denmark', 20, 'Europe'),
('Finland', 21, 'Europe'),
('Belgium', 22, 'Europe'),
('Argentina', 23, 'South America'),
('Portugal', 24, 'Europe'),
('Austria', 25, 'Europe'),
('Greece', 26, 'Europe'),
('Poland', 27, 'Europe'),
('Ireland', 28, 'Europe'),
('Turkey', 29, 'Asia'),
('New Zealand', 30, 'Oceania'),
('Singapore', 31, 'Asia'),
('Thailand', 32, 'Asia'),
('Egypt', 33, 'Africa'),
('South Africa', 34, 'Africa'),
('Saudi Arabia', 35, 'Asia');


-- Inserting data into TV_SERIES table
INSERT INTO TV_SERIES (TV_SERIES_ID, TV_SERIES_NAME, RELEASED_YEAR, GENRE, TS_LANGUAGE, NO_OF_SEASONS, country_name)
VALUES 
('TS001', 'Breaking Bad', 2008, 'Drama', 'English', 5, 'USA'),
('TS002', 'Game of Thrones', 2011, 'Fantasy', 'English', 8, 'USA'),
('TS003', 'Friends', 1994, 'Comedy', 'English', 10, 'USA'),
('TS004', 'Stranger Things', 2016, 'Science Fiction', 'English', 4, 'USA'),
('TS005', 'The Crown', 2016, 'Historical Drama', 'English', 4, 'UK'),
('TS006', 'Narcos', 2015, 'Crime Drama', 'English', 3, 'USA'),
('TS007', 'Series A', 2010, 'Drama', 'English', 5, 'USA'),
('TS008', 'Series B', 2015, 'Thriller', 'English', 3, 'Canada'),
('TS009', 'Series C', 2018, 'Comedy', 'English', 6, 'UK'),
('TS010', 'Series D', 2013, 'Sci-Fi', 'English', 4, 'Australia'),
('TS011', 'Series E', 2011, 'Fantasy', 'English', 8, 'USA'),
('TS012', 'Series F', 2017, 'Drama', 'English', 4, 'Canada'),
('TS013', 'Series G', 2016, 'Mystery', 'English', 5, 'Japan'),
('TS014', 'Series H', 2014, 'Action', 'English', 7, 'UK'),
('TS015', 'Series I', 2019, 'Horror', 'English', 3, 'Australia'),
('TS016', 'Series J', 2012, 'Romance', 'English', 6, 'USA'),
('TS017', 'Series K', 2018, 'Thriller', 'English', 4, 'Canada'),
('TS018', 'Series L', 2015, 'Sci-Fi', 'English', 5, 'Japan'),
('TS019', 'Series M', 2016, 'Comedy', 'English', 8, 'UK'),
('TS020', 'Series N', 2013, 'Drama', 'English', 6, 'Australia'),
('TS021', 'Series O', 2017, 'Fantasy', 'English', 5, 'USA'),
('TS022', 'Series P', 2014, 'Mystery', 'English', 7, 'Canada'),
('TS023', 'Series Q', 2011, 'Action', 'English', 4, 'Japan'),
('TS024', 'Series R', 2019, 'Horror', 'English', 3, 'UK'),
('TS025', 'Series S', 2015, 'Romance', 'English', 6, 'Australia'),
('TS026', 'Series T', 2016, 'Thriller', 'English', 4, 'USA');


-- Inserting data into MOVIE table
INSERT INTO MOVIE (MOVIE_ID, MOVIE_NAME, RELEASED_YEAR, GENRE, DURATION, M_LANGUAGE, BUDGET)
VALUES 
('MV001', 'The Shawshank Redemption', 1994, 'Drama', '02:22:00', 'English', 25000000),
('MV002', 'The Godfather', 1972, 'Crime', '02:55:00', 'English', 6000000),
('MV003', 'The Dark Knight', 2008, 'Action', '02:32:00', 'English', 185000000),
('MV004', 'Pulp Fiction', 1994, 'Crime', '02:34:00', 'English', 8000000),
('MV005', 'Forrest Gump', 1994, 'Drama', '02:22:00', 'English', 55000000),
('MV006', 'Inception', 2010, 'Science Fiction', '02:28:00', 'English', 160000000),
('MV007', 'Schindler''s List', 1993, 'Biography', '03:15:00', 'English', 22000000),
('MV008', 'The Lord of the Rings: The Return of the King', 2003, 'Adventure', '03:21:00', 'English', 94000000),
('MV009', 'The Matrix', 1999, 'Action', '02:16:00', 'English', 63000000),
('MV010', 'The Silence of the Lambs', 1991, 'Thriller', '01:58:00', 'English', 19000000),
('MV011', 'The Green Mile', 1999, 'Crime', '03:09:00', 'English', 60000000),
('MV012', 'Gladiator', 2000, 'Action', '02:35:00', 'English', 103000000),
('MV013', 'Goodfellas', 1990, 'Biography', '02:26:00', 'English', 25000000),
('MV014', 'The Departed', 2006, 'Crime', '02:31:00', 'English', 90000000),
('MV015', 'The Pianist', 2002, 'Biography', '02:30:00', 'English', 35000000),
('MV016', 'The Shawshank Redemption', 1994, 'Drama', '02:22:00', 'English', 25000000),
('MV017', 'Saving Private Ryan', 1998, 'Drama', '02:49:00', 'English', 70000000),
('MV018', 'The Godfather: Part II', 1974, 'Crime', '03:22:00', 'English', 13000000),
('MV019', 'The Dark Knight Rises', 2012, 'Action', '02:44:00', 'English', 250000000),
('MV020', 'The Matrix Reloaded', 2003, 'Action', '02:18:00', 'English', 150000000),
('MV021', 'The Matrix Revolutions', 2003, 'Action', '02:09:00', 'English', 150000000),
('MV022', 'The Lion King', 1994, 'Animation', '01:28:00', 'English', 45000000),
('MV023', 'Jurassic Park', 1993, 'Adventure', '02:07:00', 'English', 63000000),
('MV024', 'The Terminator', 1984, 'Action', '01:47:00', 'English', 6400000),
('MV025', 'Terminator 2: Judgment Day', 1991, 'Action', '02:17:00', 'English', 102000000),
('MV026', 'Avatar', 2009, 'Action', '02:42:00', 'English', 237000000),
('MV027', 'Titanic', 1997, 'Romance', '03:15:00', 'English', 200000000),
('MV028', 'The Sixth Sense', 1999, 'Mystery', '01:47:00', 'English', 40000000),
('MV029', 'The Shining', 1980, 'Horror', '02:26:00', 'English', 19000000),
('MV030', 'Jaws', 1975, 'Thriller', '02:04:00', 'English', 7000000),
('MV031', 'Casablanca', 1942, 'Drama', '01:42:00', 'English', 950000),
('MV032', 'Gone with the Wind', 1939, 'Romance', '03:58:00', 'English', 4000000),
('MV033', 'The Wizard of Oz', 1939, 'Fantasy', '01:42:00', 'English', 2777000),
('MV034', 'Citizen Kane', 1941, 'Drama', '01:59:00', 'English', 839727),
('MV035', 'Psycho', 1960, 'Horror', '01:49:00', 'English', 806947),
('MV036', 'The Graduate', 1967, 'Drama', '01:46:00', 'English', 3800000);


-- Inserting data into DIRECTOR table
INSERT INTO DIRECTOR (LICENSE_NO, DIRECTOR_NAME, AGE, ACTIVE_PERIOD_IN_YEARS, COUNTRY, NATIONALITTY, AWARDS_AND_NOMINATIONS, movie_id, tv_series_id)
VALUES 
('LIC001', 'Frank Darabont', 62, 25, 'USA', 'American', '2 Oscars, 5 Golden Globes', 'MV001', NULL),
('LIC002', 'Francis Ford Coppola', 83, 50, 'USA', 'American', '5 Oscars, 3 Golden Globes', 'MV002', NULL),
('LIC003', 'Christopher Nolan', 52, 25, 'UK', 'British', '1 Oscar, 4 Golden Globes', 'MV003', NULL),
('LIC004', 'Quentin Tarantino', 58, 30, 'USA', 'American', '2 Oscars, 3 Golden Globes', 'MV004', NULL),
('LIC005', 'Robert Zemeckis', 70, 40, 'USA', 'American', '1 Oscar, 3 Golden Globes', 'MV005', NULL),
('LIC006', 'Christopher Nolan', 52, 25, 'UK', 'British', '1 Oscar, 4 Golden Globes', NULL, 'TS003'),
('LIC007', 'Steven Spielberg', 75, 50, 'USA', 'American', '3 Oscars, 7 Golden Globes', 'MV006', NULL),
('LIC008', 'Martin Scorsese', 79, 55, 'USA', 'American', '1 Oscar, 3 Golden Globes', 'MV007', NULL),
('LIC009', 'James Cameron', 67, 40, 'Canada', 'Canadian', '3 Oscars, 2 Golden Globes', 'MV008', NULL),
('LIC010', 'Alfred Hitchcock', 82, 50, 'UK', 'British', '0 Oscars, 0 Golden Globes', 'MV009', NULL),
('LIC012', 'David Fincher', 59, 30, 'USA', 'American', '0 Oscars, 2 Golden Globes', 'MV011', NULL),
('LIC013', 'Tim Burton', 63, 35, 'USA', 'American', '0 Oscars, 0 Golden Globes', 'MV012', NULL),
('LIC014', 'Ridley Scott', 84, 50, 'UK', 'British', '0 Oscars, 2 Golden Globes', 'MV013', NULL),
('LIC015', 'Clint Eastwood', 92, 60, 'USA', 'American', '4 Oscars, 4 Golden Globes', 'MV014', NULL),
('LIC016', 'Steven Soderbergh', 59, 30, 'USA', 'American', '2 Oscars, 2 Golden Globes', 'MV015', NULL),
('LIC017', 'Woody Allen', 86, 55, 'USA', 'American', '4 Oscars, 6 Golden Globes', 'MV016', NULL),
('LIC018', 'George Lucas', 78, 45, 'USA', 'American', '0 Oscars, 0 Golden Globes', 'MV017', NULL),
('LIC019', 'Peter Jackson', 60, 35, 'New Zealand', 'New Zealander', '3 Oscars, 4 Golden Globes', 'MV018', NULL),
('LIC020', 'Ang Lee', 67, 40, 'Taiwan', 'Taiwanese', '2 Oscars, 2 Golden Globes', 'MV019', NULL),
('LIC021', 'David Lynch', 76, 50, 'USA', 'American', '0 Oscars, 1 Golden Globe', 'MV020', NULL),
('LIC022', 'Spike Lee', 65, 35, 'USA', 'American', '1 Oscar, 2 Golden Globes', 'MV021', NULL),
('LIC023', 'Quentin Tarantino', 58, 30, 'USA', 'American', '2 Oscars, 3 Golden Globes', 'MV022', NULL),
('LIC024', 'Pedro Almodóvar', 72, 40, 'Spain', 'Spanish', '2 Oscars, 4 Golden Globes', 'MV023', NULL),
('LIC025', 'Akira Kurosawa', 88, 60, 'Japan', 'Japanese', '0 Oscars, 1 Golden Globe', 'MV024', NULL),
('LIC026', 'Michael Bay', 57, 25, 'USA', 'American', '0 Oscars, 0 Golden Globes', 'MV025', NULL),
('LIC027', 'Ron Howard', 68, 45, 'USA', 'American', '2 Oscars, 2 Golden Globes', 'MV026', NULL),
('LIC028', 'James Wan', 45, 20, 'Malaysia', 'Malaysian', '0 Oscars, 0 Golden Globes', 'MV027', NULL),
('LIC029', 'Peter Weir', 78, 50, 'Australia', 'Australian', '0 Oscars, 0 Golden Globes', 'MV028', NULL),
('LIC030', 'John Carpenter', 74, 45, 'USA', 'American', '0 Oscars, 0 Golden Globes', 'MV029', NULL),
('LIC031', 'Wes Craven', 76, 40, 'USA', 'American', '0 Oscars, 0 Golden Globes', 'MV030', NULL),
('LIC032', 'Stanley Kubrick', 70, 45, 'USA', 'American', '1 Oscar, 4 Golden Globes', NULL, 'TS001'),
('LIC033', 'David Lynch', 76, 50, 'USA', 'American', '0 Oscars, 1 Golden Globe', NULL, 'TS002'),
('LIC034', 'Steven Spielberg', 75, 50, 'USA', 'American', '3 Oscars, 7 Golden Globes', NULL, 'TS004'),
('LIC035', 'David Fincher', 59, 30, 'USA', 'American', '0 Oscars, 2 Golden Globes', NULL, 'TS005'),
('LIC036', 'Christopher Nolan', 52, 25, 'UK', 'British', '1 Oscar, 4 Golden Globes', NULL, 'TS006');

-- Inserting data into EPISODE table
INSERT INTO EPISODE (TITLE, RATINGS, EPISODE_LENGTH, tv_series_id, COST_PER_EPISODE)
VALUES 
('Pilot', 8.7, '00:58:00', 'TS001', 3000000),
('Winter Is Coming', 9.1, '00:58:00', 'TS002', 8000000),
('The One Roommate', 8.3, '00:22:00', 'TS003', 500000),
('Chapter of Byers', 8.8, '00:48:00', 'TS004', 6000000),
('Wolferton Splash', 8.7, '00:58:00', 'TS005', 10000000),
('Descenso', 8.8, '00:57:00', 'TS006', 5000000);

-- Inserting data into STUDIO table
INSERT INTO STUDIO (LICENSE_NO, ESTABLISHED_DATE, REVENUE, COUNTRY, tv_series_id)
VALUES 
('ST001', '1986-01-15', 25000000, 'USA', 'TS001'),
('ST002', '1977-05-25', 35000000, 'USA', 'TS002'),
('ST003', '1939-06-20', 18000000, 'USA', 'TS003'),
('ST004', '2006-07-18', 40000000, 'USA', 'TS004'),
('ST005', '2010-01-01', 20000000, 'UK', 'TS005'),
('ST006', '1998-01-01', 30000000, 'USA', 'TS006');

-- Inserting data into MAIN_ACTOR table
INSERT INTO MAIN_ACTOR (ACTOR_LICENSE_NO, FIRST_NAME, LAST_NAME, NATIONALITTY, COUNTRY, DATE_OF_BIRTH, ACTIVE_PERIOD, AWARDS, movie_id, president)
VALUES 
(1001, 'Morgan', 'Freeman', 'American', 'USA', '1937-06-01', 50, '1 Oscar, 5 Golden Globes', 'MV001', NULL),
(1002, 'Marlon', 'Brando', 'American', 'USA', '1924-04-03', 30, '2 Oscars, 2 Golden Globes', 'MV002', NULL),
(1003, 'Christian', 'Bale', 'British', 'UK', '1974-01-30', 25, '1 Oscar, 1 Golden Globe', 'MV003', 1003),
(1004, 'John', 'Travolta', 'American', 'USA', '1954-02-18', 40, '1 Golden Globe', 'MV004', 1004),
(1005, 'Tom', 'Hanks', 'American', 'USA', '1956-07-09', 40, '2 Oscars, 4 Golden Globes', 'MV005', 1005),
(1006, 'Leonardo', 'DiCaprio', 'American', 'USA', '1974-11-11', 30, '1 Oscar, 3 Golden Globes', 'MV006', 1006);

-- Inserting data into the NAME_OF_THE_STUDIO table
INSERT INTO NAME_OF_THE_STUDIO (studio_name, license_no, tv_series_id)
VALUES 
('Studiopolis', 'STU001', 'TS001'),
('Entertainment One', 'STU002', 'TS002'),
('Warner Bros. Television', 'STU003', 'TS003'),
('Netflix Studios', 'STU004', 'TS004'),
('Sony Pictures Television', 'STU005', 'TS005'),
('Universal Television', 'STU006', 'TS006');

-- Inserting data into the NAME_OF_THE_WEBSITE table
INSERT INTO NAME_OF_THE_WEBSITE (website_name, license_no, tv_series_id)
VALUES 
('Netflix', 'WEB001', 'TS001'),
('Hulu', 'WEB002', 'TS002'),
('Amazon Prime Video', 'WEB003', 'TS003'),
('Disney+', 'WEB004', 'TS004'),
('Apple TV+', 'WEB005', 'TS005'),
('HBO Max', 'WEB006', 'TS006');

-- Inserting data into the SONG table
INSERT INTO SONG (LICENSE_ID, SONG_NAME, SINGER, WRITER, S_LANGUAGE, AWARDS, movie_id)
VALUES 
('SONG001', 'My Heart Will Go On', 'Celine Dion', 'James Horner', 'English', '4 Grammys', 'MV001'),
('SONG002', 'Let It Go', 'Idina Menzel', 'Robert Lopez', 'English', '2 Grammys', 'MV002'),
('SONG003', 'Skyfall', 'Adele', 'Adele Adkins', 'English', '1 Grammy', 'MV003'),
('SONG004', 'Jai Ho', 'A.R. Rahman', 'Gulzar', 'Hindi', '2 Oscars', 'MV004'),
('SONG005', 'Can You Feel the Love Tonight', 'Elton John', 'Tim Rice', 'English', '1 Oscar', 'MV005'),
('SONG006', 'Shallow', 'Lady Gaga & Bradley Cooper', 'Lady Gaga', 'English', '1 Oscar', 'MV006');

-- Inserting data into the REVIEW table
INSERT INTO REVIEW (COMMENTS, RATING, REVIEW_DATE, EXPERIENCE, movie_id, tv_series_id)
VALUES 
('Great movie!', 4.5, '2023-01-15', 'Captivating storyline.', 'MV001', 'TS001'),
('Fantastic performance!', 4.8, '2023-03-22', 'Amazing acting.', 'MV002', 'TS002'),
('Brilliant cinematography!', 4.2, '2023-05-10', 'Beautifully shot.', 'MV003', 'TS003'),
('Outstanding music!', 4.7, '2023-07-05', 'Great soundtrack.', 'MV004', 'TS004'),
('Classic Disney!', 4.6, '2023-09-18', 'Nostalgic.', 'MV005','TS005'),
('Incredible chemistry!', 4.9, '2023-11-30', 'Compelling performances.', 'MV006', 'TS006');

alter table DIRECTOR add constraint fk1 
foreign key(movie_id) references MOVIE(MOVIE_ID)
on delete set null
on update cascade; 

alter table DIRECTOR add constraint fk2 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on delete set null
on update cascade;

alter table TV_SERIES add constraint fk3 
foreign key(country_name) references COUNTRY(COUNTRY_NAME)
on delete set null
on update cascade;

alter table EPISODE add constraint fk4 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on update cascade;



alter table STUDIO add constraint fk5 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on delete set null
on update cascade;

alter table NAME_OF_THE_STUDIO add constraint fk6 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on delete set null
on update cascade;

alter table NAME_OF_THE_WEBSITE add constraint fk7 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on delete set null
on update cascade;

alter table MAIN_ACTOR add constraint fk8 
foreign key(movie_id) references MOVIE(MOVIE_ID)
on delete set null
on update cascade;

alter table MAIN_ACTOR add constraint fk9 
foreign key(president) references MAIN_ACTOR(ACTOR_LICENSE_NO)
on delete set null
on update cascade;

alter table SONG add constraint fk10 
foreign key(movie_id) references MOVIE(MOVIE_ID)
on delete set null
on update cascade;

alter table REVIEW add constraint fk11 
foreign key(tv_series_id) references TV_SERIES(TV_SERIES_ID)
on delete set null
on update cascade;

alter table REVIEW add constraint fk12 
foreign key(movie_id) references MOVIE(MOVIE_ID)
on delete set null
on update cascade;

-- Update function 1
UPDATE MOVIE
SET GENRE = 'Drama, Crime'
WHERE MOVIE_ID = 'MV002';

-- Update function 2
UPDATE MOVIE
SET BUDGET = 200000000
WHERE MOVIE_ID = 'MV003';

-- Delete function
DELETE FROM MOVIE
WHERE MOVIE_ID = 'MV006';

-- Update function 1
UPDATE COUNTRY
SET COUNTRY_RANK = 10
WHERE COUNTRY_NAME = 'Japan';

-- Update function 2
UPDATE COUNTRY
SET REGION = 'America-1'
WHERE COUNTRY_NAME = 'Canada';

-- Delete function
DELETE FROM COUNTRY
WHERE COUNTRY_NAME = 'Germany';

-- Update function 1
UPDATE DIRECTOR
SET ACTIVE_PERIOD_IN_YEARS = 35
WHERE LICENSE_NO = 'LIC001';

-- Delete function
DELETE FROM DIRECTOR
WHERE LICENSE_NO = 'LIC006';

-- Update function 1
UPDATE EPISODE
SET COST_PER_EPISODE = 7000000
WHERE TITLE = 'Pilot';

-- Update function 2
UPDATE EPISODE
SET RATINGS = 9.0
WHERE TITLE = 'Winter Is Coming';

-- Delete function
DELETE FROM EPISODE
WHERE TITLE = 'The One Roommate';

-- Update function 1
UPDATE MAIN_ACTOR
SET AWARDS = '3 Oscars, 5 Golden Globes'
WHERE ACTOR_LICENSE_NO = 1001;

-- Update function 2
UPDATE MAIN_ACTOR
SET DATE_OF_BIRTH = '1976-11-11'
WHERE ACTOR_LICENSE_NO = 1006;

-- Delete function
DELETE FROM MAIN_ACTOR
WHERE ACTOR_LICENSE_NO = 1004;

-- Update function 1
UPDATE STUDIO
SET REVENUE = 30000000
WHERE LICENSE_NO = 'ST001';

-- Update function 2
UPDATE STUDIO
SET COUNTRY = 'UK'
WHERE LICENSE_NO = 'ST004';

-- Delete function
DELETE FROM STUDIO
WHERE LICENSE_NO = 'ST006';

-- Update function 1
UPDATE TV_SERIES
SET NO_OF_SEASONS = 6
WHERE TV_SERIES_ID = 'TS001';

-- Update function 2
UPDATE TV_SERIES
SET RELEASED_YEAR = 2013
WHERE TV_SERIES_NAME = 'Game of Thrones';

-- Delete function
DELETE FROM TV_SERIES
WHERE TV_SERIES_ID = 'TS006';

-- Update function 1
UPDATE NAME_OF_THE_STUDIO
SET studio_name = 'Studio X'
WHERE license_no = 'STU001';

-- Update function 2
UPDATE NAME_OF_THE_STUDIO
SET tv_series_id = 'TS002'
WHERE license_no = 'STU004';

-- Delete function
DELETE FROM NAME_OF_THE_STUDIO
WHERE license_no = 'STU006';

-- Update function 1
UPDATE NAME_OF_THE_WEBSITE
SET website_name = 'Netflix Prime'
WHERE license_no = 'WEB001';

-- Update function 2
UPDATE NAME_OF_THE_WEBSITE
SET tv_series_id = 'TS005'
WHERE license_no = 'WEB003';

-- Delete function
DELETE FROM NAME_OF_THE_WEBSITE
WHERE license_no = 'WEB006';

-- Update function 1
UPDATE SONG
SET AWARDS = '5 Grammys'
WHERE LICENSE_ID = 'SONG001';

-- Update function 2
UPDATE SONG
SET SINGER = 'Arijit Singh'
WHERE LICENSE_ID = 'SONG004';

-- Delete function
DELETE FROM SONG
WHERE LICENSE_ID = 'SONG006';

-- Update function 1
UPDATE REVIEW
SET RATING = 4.9
WHERE movie_id = 'MV001';

-- Update function 2
UPDATE REVIEW
SET COMMENTS = 'The best series ever!'
WHERE tv_series_id = 'TS002';

-- Delete function
DELETE FROM REVIEW
WHERE movie_id = 'MV006';

-- Update function 1
UPDATE EPISODE
SET COST_PER_EPISODE = 7000000
WHERE TITLE = 'Pilot';

-- Update function 2
UPDATE EPISODE
SET RATINGS = 8.0
WHERE TITLE = 'Winter Is Coming';

-- Delete function
DELETE FROM EPISODE
WHERE TITLE = 'Pilot';

-- retrive all the data from the relation movie
SELECT * 
FROM MOVIE;

-- retrive distint genre values from the movie relation
SELECT DISTINCT GENRE 
FROM MOVIE;

-- retiving data from 2 tables by combining
SELECT MOVIE_NAME FROM MOVIE WHERE RELEASED_YEAR = 1994
UNION
SELECT TV_SERIES_NAME FROM TV_SERIES WHERE RELEASED_YEAR = 2016;

-- retreving data from the movie relation in the decending order of released year
SELECT * FROM MOVIE 
ORDER BY RELEASED_YEAR 
DESC;

-- selecting the tupes of movie whos released year is between 2000 and 2010   
SELECT * 
FROM MOVIE 
WHERE RELEASED_YEAR 
BETWEEN 2000 AND 2010;

-- retreving only particular 2 coloums
SELECT MOVIE_NAME, GENRE 
FROM MOVIE;

SELECT * 
FROM MOVIE, DIRECTOR;

-- creating the view
CREATE VIEW MovieDetails 
AS
SELECT MOVIE_NAME, GENRE, RELEASED_YEAR 
FROM MOVIE;

-- display the view
SHOW FULL TABLES 
IN TVSEREIS_MOVIES_COLLECTION1 
WHERE TABLE_TYPE LIKE 'VIEW';

-- retrive the director name who has the age of 20
SELECT 
DIRECTOR_NAME AS Director, 
AGE AS Director_Age 
FROM DIRECTOR
where AGE = 20;

-- rename and selecting average rating
SELECT 
AVG(RATING) AS Avg_Rating 
FROM REVIEW;

-- selecting the minimum released year by renaming as latest_release 
SELECT 
min(RELEASED_YEAR) 
AS Latest_Release 
FROM MOVIE;

-- retrive the data from the relation movie by using the like operator
SELECT * 
FROM MOVIE 
WHERE MOVIE_NAME LIKE '%Ava%';


-- Create a view for MOVIE and DIRECTOR tables
CREATE VIEW MOVIE_DIRECTOR_VIEW AS
SELECT m.MOVIE_ID, m.MOVIE_NAME, m.RELEASED_YEAR, m.GENRE,m.DURATION, m.M_LANGUAGE,m.BUDGET, d.DIRECTOR_NAME,d.AGE, d.ACTIVE_PERIOD_IN_YEARS
FROM MOVIE m LEFT JOIN DIRECTOR d 
ON m.MOVIE_ID = d.movie_id;

SELECT * FROM MOVIE_DIRECTOR_VIEW;

-- Create a view for TV_SERIES and EPISODE tables
CREATE VIEW TV_SERIES_EPISODE_VIEW AS
SELECT ts.TV_SERIES_ID,ts.TV_SERIES_NAME, ts.RELEASED_YEAR,ts.GENRE, ts.TS_LANGUAGE, ts.NO_OF_SEASONS, e.TITLE, e.RATINGS, e.EPISODE_LENGTH
FROM TV_SERIES ts LEFT JOIN EPISODE e 
ON ts.TV_SERIES_ID = e.tv_series_id;

SELECT * FROM TV_SERIES_EPISODE_VIEW;

-- Set difference of TV series genres between australia and drama
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE country_name = 'Australia'
EXCEPT
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE GENRE = 'Drama';

-- Division operation: Find TV series with all episodes
SELECT TV_SERIES_ID, TV_SERIES_NAME
FROM TV_SERIES
WHERE TV_SERIES_ID
 NOT IN 
 (
 SELECT tv_series_id
 FROM EPISODE
 WHERE tv_series_id IS NULL
);


-- Inner join between MOVIE_DIRECTOR_VIEW and TV_SERIES_EPISODE_VIEW
SELECT mv.MOVIE_NAME, mv.GENRE, mv.RELEASED_YEAR, te.TITLE, te.RATINGS
FROM MOVIE_DIRECTOR_VIEW  mv INNER JOIN TV_SERIES_EPISODE_VIEW te 
ON mv.RELEASED_YEAR = te.RELEASED_YEAR;


-- Natural join between TV_SERIES_EPISODE_VIEW and TV_SERIES table
SELECT TV_SERIES_NAME, RELEASED_YEAR, GENRE, NO_OF_SEASONS, TITLE, RATINGS
FROM TV_SERIES_EPISODE_VIEW NATURAL JOIN TV_SERIES
where GENRE = 'Action'  ;


-- Left outer join between MAIN_ACTOR_MOVIE_VIEW and MOVIE table
SELECT ma.FIRST_NAME, ma.LAST_NAME, m.MOVIE_NAME
FROM MAIN_ACTOR_MOVIE_VIEW ma LEFT OUTER JOIN MOVIE m 
ON ma.MOVIE_NAME = m.MOVIE_NAME;

-- Right outer join between MOVIE_DIRECTOR_VIEW and DIRECTOR table
SELECT mv.MOVIE_NAME, mv.GENRE, mv.RELEASED_YEAR, md.DIRECTOR_NAME
FROM MOVIE_DIRECTOR_VIEW mv
RIGHT OUTER JOIN DIRECTOR md ON mv.MOVIE_ID = md.movie_id;



-- Full outer join between TV_SERIES_EPISODE_VIEW and TV_SERIES table
SELECT COALESCE(te.TV_SERIES_NAME, ts.TV_SERIES_NAME) AS TV_SERIES_NAME, te.RELEASED_YEAR, ts.GENRE, te.NO_OF_SEASONS, te.TITLE, te.RATINGS
FROM TV_SERIES_EPISODE_VIEW te FULL OUTER JOIN TV_SERIES ts 
ON te.TV_SERIES_ID = ts.TV_SERIES_ID;

SELECT 
    COALESCE(te.TV_SERIES_NAME, ts.TV_SERIES_NAME) AS TV_SERIES_NAME, 
    COALESCE(te.RELEASED_YEAR, ts.RELEASED_YEAR) AS RELEASED_YEAR,
    COALESCE(ts.GENRE, te.GENRE) AS GENRE,
    te.NO_OF_SEASONS, 
    te.TITLE, 
    te.RATINGS
FROM 
    TV_SERIES_EPISODE_VIEW te
LEFT JOIN 
    TV_SERIES ts ON te.TV_SERIES_ID = ts.TV_SERIES_ID
UNION
SELECT 
    COALESCE(te.TV_SERIES_NAME, ts.TV_SERIES_NAME) AS TV_SERIES_NAME, 
    COALESCE(te.RELEASED_YEAR, ts.RELEASED_YEAR) AS RELEASED_YEAR,
    COALESCE(ts.GENRE, te.GENRE) AS GENRE,
    ts.NO_OF_SEASONS, 
    NULL AS TITLE, 
    NULL AS RATINGS
FROM 
    TV_SERIES ts
RIGHT JOIN 
    TV_SERIES_EPISODE_VIEW te ON te.TV_SERIES_ID = ts.TV_SERIES_ID;
    
    

-- Outer union between MOVIE_DIRECTOR_VIEW and DIRECTOR table
SELECT mv.MOVIE_NAME, mv.GENRE, mv.RELEASED_YEAR, md.DIRECTOR_NAME
FROM MOVIE_DIRECTOR_VIEW mv
OUTER UNION
SELECT NULL, NULL, NULL, DIRECTOR_NAME
FROM DIRECTOR;

SELECT mv.MOVIE_NAME, mv.GENRE, mv.RELEASED_YEAR, mv.DIRECTOR_NAME
FROM MOVIE_DIRECTOR_VIEW mv
UNION
SELECT NULL, NULL, NULL, d.DIRECTOR_NAME
FROM DIRECTOR d
LEFT JOIN MOVIE_DIRECTOR_VIEW mv ON d.DIRECTOR_NAME = mv.DIRECTOR_NAME;


-- Nested query with set difference
SELECT TV_SERIES_NAME
FROM TV_SERIES
WHERE TV_SERIES_ID IN (
    SELECT TV_SERIES_ID
    FROM REVIEW
    WHERE COMMENTS = 'Classic Disney!'
);


-- Multiset comparison with correlated nested query
SELECT MOVIE_NAME
FROM MOVIE m
WHERE EXISTS 
(
    SELECT 1
    FROM DIRECTOR d
    WHERE d.movie_id = m.MOVIE_ID AND d.COUNTRY = 'UK'
);


-- Correlated nested query with set difference
SELECT TV_SERIES_NAME
FROM TV_SERIES ts
WHERE ts.TV_SERIES_ID 
NOT IN 
(
    SELECT tv_series_id
    FROM EPISODE e
    WHERE e.RATINGS > (
        SELECT AVG(RATINGS)
        FROM EPISODE
    )
);



-- Recursive query to find all TV series and their episodes
WITH RECURSIVE TVSeries_CTE AS (
    SELECT TV_SERIES_ID, TV_SERIES_NAME
    FROM TV_SERIES
    UNION ALL
    SELECT e.tv_series_id, e.TITLE
    FROM TVSeries_CTE t
    JOIN EPISODE e ON t.TV_SERIES_ID = e.tv_series_id
)
SELECT *
FROM TVSeries_CTE;


SELECT ts.TV_SERIES_NAME
FROM TV_SERIES ts
LEFT JOIN EPISODE e ON ts.TV_SERIES_ID = e.TV_SERIES_ID
LEFT JOIN (
    SELECT AVG(RATINGS) AS avg_rating
    FROM EPISODE
) AS avg_e ON 1=1
WHERE e.RATINGS <= avg_e.avg_rating OR e.RATINGS IS NULL;

create index RATING_INDEX  on review(RATING);

explain
SELECT ts.TV_SERIES_NAME
FROM TV_SERIES ts
LEFT JOIN EPISODE e ON ts.TV_SERIES_ID = e.TV_SERIES_ID
LEFT JOIN (
    SELECT AVG(RATINGS) AS avg_rating
    FROM EPISODE
) AS avg_e ON 1=1
WHERE e.RATINGS <= avg_e.avg_rating OR e.RATINGS IS NULL;


drop index TV_SERIES_NAME_INDEX  on TV_SERIES;

-- before craeting the index for the age in director table
EXPLAIN
SELECT 
DIRECTOR_NAME AS Director, 
AGE AS Director_Age 
FROM DIRECTOR
where AGE = 20;

-- creating the index for the age in relation directoe
create unique index Director_Age_index using BTREE on DIRECTOR(AGE);

-- before craeting the index for the age in director table
EXPLAIN
SELECT 
DIRECTOR_NAME AS Director, 
AGE AS Director_Age 
FROM DIRECTOR
where AGE = 20;

-- before  creating index for released year 
explain
SELECT 
min(RELEASED_YEAR) 
AS Latest_Release 
FROM MOVIE;

-- code for creating the index
create unique index Latest_Release_index using BTREE on MOVIE(RELEASED_YEAR);

--  after creating index for released year
explain
SELECT 
min(RELEASED_YEAR) 
AS Latest_Release 
FROM MOVIE;


-- before creating the index
explain
SELECT * 
FROM MOVIE 
WHERE MOVIE_NAME LIKE '%Ava%';

-- code for creating the index
create index movie_name_index on movie(MOVIE_NAME);
drop index movie_name_index on movie ;

-- after creating the index
explain
SELECT * 
FROM MOVIE 
WHERE MOVIE_NAME LIKE '%Ava%';


-- before creating index
explain
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE country_name = 'Australia'
EXCEPT
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE GENRE = 'Drama';

-- code for creating index
create index country_name_index on country(country_name);
create index GENRE_index on TV_SERIES(GENRE);
drop index GENRE_index on TV_SERIES ;

-- after creating index
explain
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE country_name = 'Australia'
EXCEPT
SELECT TV_SERIES_NAME, GENRE
FROM TV_SERIES
WHERE GENRE = 'Drama';


-- before creating the index
explain 
SELECT TV_SERIES_NAME
FROM TV_SERIES
WHERE TV_SERIES_ID IN (
    SELECT TV_SERIES_ID
    FROM REVIEW
    WHERE COMMENTS = 'Classic Disney!'
);

-- code for the creating index
create index comments_index on REVIEW(COMMENTS);

-- after creating index
explain 
SELECT TV_SERIES_NAME
FROM TV_SERIES
WHERE TV_SERIES_ID IN (
    SELECT TV_SERIES_ID
    FROM REVIEW
    WHERE COMMENTS = 'Classic Disney!'
);

-- before creating the index
explain 
SELECT MOVIE_NAME
FROM MOVIE m
WHERE EXISTS 
(
    SELECT 1
    FROM DIRECTOR d
    WHERE d.movie_id = m.MOVIE_ID AND d.COUNTRY = 'UK'
);

-- code for creating the index
create index country_name on DIRECTOR(COUNTRY) ;

-- after creating the index
explain 
SELECT MOVIE_NAME
FROM MOVIE m
WHERE EXISTS 
(
    SELECT 1
    FROM DIRECTOR d
    WHERE d.movie_id = m.MOVIE_ID AND d.COUNTRY = 'UK'
);

-- before adding index
explain
SELECT ma.FIRST_NAME, ma.LAST_NAME, m.MOVIE_NAME
FROM MAIN_ACTOR_MOVIE_VIEW ma
LEFT OUTER JOIN MOVIE m ON ma.MOVIE_NAME = m.MOVIE_NAME;

-- code for creating index
create index movie_name_index on movie(MOVIE_NAME);

-- after adding index
explain
SELECT ma.FIRST_NAME, ma.LAST_NAME, m.MOVIE_NAME
FROM MAIN_ACTOR_MOVIE_VIEW ma
LEFT OUTER JOIN MOVIE m ON ma.MOVIE_NAME = m.MOVIE_NAME;

-- before creating index
explain
SELECT TV_SERIES_NAME, RELEASED_YEAR, GENRE, NO_OF_SEASONS, TITLE, RATINGS
FROM TV_SERIES_EPISODE_VIEW NATURAL JOIN TV_SERIES
where GENRE = 'Action'  ;

-- code for creating index
create index GENRE_index on TV_SERIES(GENRE);

-- after creating index
explain
SELECT TV_SERIES_NAME, RELEASED_YEAR, GENRE, NO_OF_SEASONS, TITLE, RATINGS
FROM TV_SERIES_EPISODE_VIEW NATURAL JOIN TV_SERIES
where GENRE = 'Action'  ;








 

























 
 

