/* TABLA: CLIENTE*/
create table Cliente (
	id_cliente	int primary key identity(1,1) NOT NULL,
	dni_cliente varchar(10) NOT NULL,
	apellido_cliente VARCHAR(30) NOT NULL,
	nombre_cliente VARCHAR(30) NOT NULL,
	direccion_cliente VARCHAR(40) NOT NULL,
	telefono_cliente VARCHAR(10),
);

/* TABLA: MASCOTA*/
create table Mascota (
	id_mascota int primary key identity(1,1) NOT NULL,
	especie_mascota varchar(30) NOT NULL,
	edad_mascota INT NOT NULL
);

/* TABLA: VACUNACIÓN*/
create table Vacunacion (
	id_vacuna	int primary key identity(1,1) NOT NULL,
	nombre_vacuna varchar(50) NOT NULL
);

/* TABLA: ENFERMEDAD*/
create table Enfermedad (
	id_enfermedad	int primary key identity(1,1) NOT NULL,
	nombre_enfermedad varchar(50) NOT NULL
);

/* TABLA: VETERINARIO*/
create table Veterinario (
	id_veterinario	int primary key identity(1,1) NOT NULL,
	nombre_veterinario varchar(30) NOT NULL
);

/* TABLA: HISTORIAL CLINICO*/
create table Historial_Clinico (
	id_his_cli	int primary key identity(1,1) NOT NULL,
	id_cliente int NOT NULL,
	id_mascota int NOT NULL,
	raza_his_cli VARCHAR(30) NOT NULL,
	color_his_cli VARCHAR(30) NOT NULL,
	fecha_nacimiento_his_cli DATE NOT NULL,
	CONSTRAINT fk_Cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	CONSTRAINT fk_Mascota FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota)
);

/* TABLA: DETALLE HISTORIAL CLINICO*/
create table Detalle_Historial_Clinico (
	id_det_his_cli	int primary key identity(1,1) NOT NULL,
	id_his_cli int NOT NULL,
	id_veterinario int NOT NULL,
	id_enfermedad int NOT NULL,
	peso_det_his_cli DECIMAL(8,4) NOT NULL ,
	fecha_consulta_det_his_cli DATE NOT NULL,
	CONSTRAINT fk_Historial_Clinico FOREIGN KEY (id_his_cli) REFERENCES Historial_Clinico(id_his_cli),
	CONSTRAINT fk_Veterinario FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
	CONSTRAINT fk_Enfermedad FOREIGN KEY (id_enfermedad) REFERENCES Enfermedad(id_enfermedad)
);

/* TABLA: DETALLE VACUNACIÓN*/
create table Detalle_Vacunacion (
	id_det_vacuna	int primary key identity(1,1) NOT NULL,
	id_vacuna int NOT NULL,
	id_his_cli int NOT NULL,
	dosis_det_vacuna DECIMAL(8,4) NOT NULL,
	fecha_det_vacuna DATE NOT NULL,
	CONSTRAINT fk_Historial_Clinico_2 FOREIGN KEY (id_his_cli) REFERENCES Historial_Clinico(id_his_cli),
	CONSTRAINT fk_Vacunacion FOREIGN KEY (id_vacuna) REFERENCES Vacunacion(id_vacuna)
);