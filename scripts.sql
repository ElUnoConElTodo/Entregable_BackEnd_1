
--RUN COMMANDS IN THE ORDER LISTED FOR EXCELLENT PERFORMANCE
-- 1_Inset categories data
	
insert into categories ("name") values ('logic'), ('style'), ('logic + style');

--

-- 2_Insert levels data

insert into levels ("name") values ('easy'), ('normal'), ('heoric');

--
	
-- 3_Insert courses video data
	
insert into courses_videos (title, url) 
values ('JavaScrip', 'https://www.youtube.com/watch?v=PkZNo7MFNFg&ab_channel=freeCodeCamp.org'),
('HTML','https://www.youtube.com/watch?v=qz0aGYrrlhU&ab_channel=ProgrammingwithMosh'),
('React', 'https://www.youtube.com/watch?v=Ke90Tje7VS0&ab_channel=ProgrammingwithMosh');

--

-- 4_Insert courses data
	
insert into courses (title, description, level_id, teacher, category_id, video_id) 
values ('Learn JavaScript', '
Learning JavaScript will help you develop the logical part of the page.',
'1', 'Jesus Fernandez', '1', '1');

insert into courses (title, description, level_id, teacher, category_id, video_id) 
values ('Learn HTML', '
Learning HTML will help you develop the logical part of the page.',
'1', 'Jesus Fernandez', '1', '1');

insert into courses (title, description, level_id, teacher, category_id, video_id) 
values ('Learn React', '
Learning React will help you give logic, structure and style to your page.',
'3', 'Junior Pacheco', '3', '3');
	
--

-- 5_Edit course data HTML

update courses set level_id = '2' where id = 1;

update courses set category_id = '2' where id = 2;

update courses set video_id = '2' where id = 2;

update courses set level_id = '1' where id = 2;


-- 6_Insert students data 

insert
	into
	users (first_name,
	last_name,
	email,
	"password",
	age,
	course_id)
values 
	('José Angel',
	'García Miranda',
	'pe.et@hotmail.com',
	'123456',
	'23 años',
	'1'),
	('Evelyn',
	'Lopez Marquez',
	'eve_bebe@gmail.com',
	'ilovecats',
	'21 años',
	'2'),
	('Victor',
	'Acosta Davila',
	'goodboy@hotmail.com',
	'ilovegod',
	'28 años',
	'3');
-- 
--(OPTIONAL)Show tables

select * from levels;

select url from courses_videos;

select "name" from levels; 

--