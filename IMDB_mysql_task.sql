
create database IMDB;
use IMDB;
create table Movie_reviews(
reviews_id int primary key,
reviews varchar(50)
);
insert into Movie_reviews(reviews_id, reviews)
values(1, "Good film"),
(2, "nice film"),
(3, "not good"),
(4, "worst");
create table actor_skills(
skills_id int primary key,
skills varchar(50)
);
insert into actor_skills(skills_id, skills)
values(1, "creativity"),
(2, "dance"),
(3, "teamwork"),
(4, "communication");
create table actor_role(
role_id int primary key,
roles varchar(50)
);
insert into actor_role(role_id, roles)
values(1, "Hero"),
(2, "dancer"),
(3, "singer");
select *from Movie_reviews;
select *from actor_skills;
select *from actor_role;

create table video(
Sl_no int primary key,
generes varchar(50),
reviews_id int,
skills_id int,
role_id int,
foreign key (reviews_id) references Movie_reviews(reviews_id),
foreign key (skills_id) references actor_skills(skills_id),
foreign key (role_id) references actor_role(role_id)
);
insert into video(Sl_no, generes, reviews_id, skills_id, role_id)
values(1, "horror", 4, 2, 2),
(2, "Western", 2, 4, 1),
(3, "Thriller", 1, 1, 1),
(4, "Crime_film", 1, 3, 1),
(5, "Action", 4, 2, 2),
(6, "Science_fiction", 1, 1, 1),
(7, "Drama", 4, 2, 1),
(8, "Comedy", 1, 1, 3)
;
select * from video;

