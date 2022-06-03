SQL_DDL
Первая часть.

Таблица employees

1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name Varchar(50) not null
);


2)	Наполнить таблицу employee 70 строками.


insert into employees (id, employee_name)
values (default, 'Alona Kot'),
(default, 'Olga Ping'),
(default, 'Irina Netto'),
(default, 'Oleksandr Kot'),
(default, 'Dmitry Red'),
(default, 'Kate Gir'),
(default, 'Eva Langoria'),
(default, 'Lidia Pushkova'),
(default, 'Viktoria Fix'),
(default, 'Oleg Burko'),
(default, 'Andriy Petrov'),
(default, 'Viktoria Ivanova'),
(default, 'Alona Citron'),
(default, 'Dmitry Krizhov'),
(default, 'Valentin Ball'),
(default, 'Olena Tarasenko'),
(default, 'Oleksiy Firta'),
(default, 'Alona Burko'),
(default, 'Marina Kot'),
(default, 'Maria Krizhova'),
(default, 'Andriy Rudiy'),
(default, 'Adel Oranjey'),
(default, 'Marina Ruda'),
(default, 'Pavel Biliy'),
(default, 'Tomas Iets'),
(default, 'Nikita Drimko'),
(default, 'Tetyana Erko'),
(default, 'Viktoria Erko'),
(default, 'Viktor Bronya'),
(default, 'Taras Topolya'),
(default, 'Marta Nikitina'),
(default, 'Oleksiy Kvitka'),
(default, 'Margarita Bila'),
(default, 'Valentina Chorna'),
(default, 'Juriy Zeleniy'),
(default, 'Orest Bilko'),
(default, 'Olena Jarko'),
(default, 'Oksana Mazur'),
(default, 'Bogdan Tanchuk'),
(default, 'Nikita Rudiy'),
(default, 'Sofia Kalinina'),
(default, 'Evgen Tisichnik'),
(default, 'Valentin Desyatnik'),
(default, 'Antonina Puch'),
(default, 'Volodymir Likerov'),
(default, 'Stefan Li'),
(default, 'Lidia Givko'),
(default, 'Mika Tomak'),
(default, 'Nina Dudenko'),
(default, 'Josip Drakon'),
(default, 'Mykolay Kim'),
(default, 'Anastasia Arestovich'),
(default, 'Jana Trembita'),
(default, 'Svyatoslav Kolo'),
(default, 'Olena Lubko'),
(default, 'Tomas Braun'),
(default, 'Angelina Javelin'),
(default, 'Vasil Gupalo'),
(default, 'Nika Redko'),
(default, 'Anton Gunko'),
(default, 'Juriy Demko'),
(default, 'Vitalina Redchinska'),
(default, 'Marta Junko'),
(default, 'Kiril Krut'),
(default, 'Mirina Levko'),
(default, 'Jamin Tremko'),
(default, 'Daria Bila'),
(default, 'Artur Vim'),
(default, 'Ludmila Onenko'),
(default, 'Mihael Bratuk');


select * from employees;


Таблица salary

3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
);
4)	Наполнить таблицу salary 15 строками:

insert into salary (id, monthly_salary)
values (default, 1000),
(default, 1100),
(default, 1200),
(default, 1300),
(default, 1400),
(default, 1500),
(default, 1600),
(default, 1700),
(default, 1800),
(default, 1900),
(default, 2000),
(default, 2100),
(default, 2200),
(default, 2300),
(default, 2400),
(default, 2500);


select * from salary;

Таблица employee_salary

5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

create table employee_salary(
id serial  primary key,
employee_id int not null unique,
salary_id int not null
);

6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 45, 10),
(default, 47, 12),
(default, 49, 3),
(default, 51, 11),
(default, 53, 5),
(default, 55, 9),
(default, 57, 8),
(default, 58, 9),
(default, 61, 1),
(default, 63, 2),
(default, 1, 10),
(default, 6, 12),
(default, 10, 3),
(default, 7, 14),
(default, 15, 4),
(default, 13, 1),
(default, 40, 12),
(default, 35, 3),
(default, 9, 5),
(default, 25, 6),
(default, 3, 9),
(default, 22, 12),
(default, 33, 8),
(default, 11, 14),
(default, 8, 15),
(default, 12, 11),
(default, 14, 7),
(default, 19, 13),
(default, 20, 14),
(default, 21, 2),
(default, 23, 3),
(default, 27, 5),
(default, 29, 6),
(default, 30, 11),
(default, 32, 8),
(default, 34, 10),
(default, 36, 10),
(default, 37, 9),
(default, 5, 14),
(default, 2, 12);

select * from employee_salary;


Таблица roles

7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique
);


8)	Поменять тип столба role_name с int на varchar(30)


alter table roles 
alter column role_name type varchar(30);

9)	Наполнить таблицу roles 20 строками:

insert into roles (id, role_name)
values (1, 'Junior Python developer'),	
 (2, 'Middle Python developer'),	
 (3, 'Senior Python developer'),	
 (4, 'Junior Java developer'),	
 (5, 'Middle Java developer'),	
 (6, 'Senior Java developer'),	
 (7, 'Junior JavaScript developer'),	
 (8, 'Middle JavaScript developer'),	
 (9, 'Senior JavaScript developer'),	
 (10, 'Junior Manual QA engineer'),	
 (11, 'Middle Manual QA engineer'),	
 (12,	'Senior Manual QA engineer'),	
 (13,	'Project Manager'),	
 (14, 'Designer'),	
 (15,	'HR'),	
 (16,	'CEO'),	
 (17,	'Sales manager'),	
 (18,	'Junior Automation QA engineer'),	
 (19,	'Middle Automation QA engineer'),	
 (20,	'Senior Automation QA engineer');

select * from roles;


Таблица roles_employee

10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
foreign key(employee_id) references employees(id), 
role_id int not null,
foreign key (role_id) references roles(id)
);

11)	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (id, employee_id, role_id)
values (default, 1, 20),
(default, 2, 19),
(default, 3, 18),
(default, 4, 17),
(default, 5, 16),
(default, 6, 15),
(default, 7, 14),
(default, 8, 13),
(default, 9, 12),
(default, 10, 11),
(default, 11, 10),
(default, 12, 9),
(default, 13, 8),
(default, 14, 7),
(default, 15, 6),
(default, 16, 5),
(default, 17, 4),
(default, 18, 3),
(default, 19, 2),
(default, 20, 1),
(default, 21, 1),
(default, 22, 2),
(default, 23, 3),
(default, 24, 4),
(default, 25, 5),
(default, 26, 6),
(default, 27, 7),
(default, 28, 8),
(default, 29, 9),
(default, 30, 10),
(default, 31, 11),
(default, 32, 12),
(default, 33, 13),
(default, 34, 14),
(default, 35, 15),
(default, 36, 16),
(default, 37, 17),
(default, 38, 18),
(default, 39, 19),
(default, 40, 20);

select * from roles_employee;


