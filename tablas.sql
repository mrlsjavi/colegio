

create table grado(
	id int not null auto_increment,
	nombre Varchar(50),
	estado int,
	primary key (id)
);


create table curso(
	id int not null auto_increment,
	grado int,
	nombre Varchar(50),
	estado int, 
	primary key (id),
	constraint grado foreign key (grado) references grado (id) on delete restrict on update restrict
);

create table alumno (
	id int not null auto_increment,
	nombre Varchar(80),
	estado int, 
	primary key (id)
);

create table asignacion (
	id int auto_increment,
	alumno int,
	curso int, 
	fecha date, 
	punteo int, 
	primary key (id),
	constraint alumno foreign key (alumno) references alumno (id) on delete restrict on update restrict,
	constraint curso foreign key (curso) references curso (id) on delete restrict on update restrict
);



create table rol (
	id int auto_increment,
	nombre Varchar(50),
	estado int,
	primary key (id)
);

create table usuario (
	id int auto_increment,
	nombre Varchar(50),
	login Varchar(50),
	password Varchar(150),
	rol int, 
	estado int, 
	primary key (id),
	constraint rol foreign key (rol) references rol (id) on delete restrict on update restrict
);


create table pagina (
	id int auto_increment, 
	nombre Varchar(50),
	padre int,
	alias Varchar(50),
	orden int, 
	estado int, 
	primary key (id),
	constraint padre foreign key (padre) references pagina (id) on delete restrict on update restrict
);
