INSERT INTO Cliente
VALUES 
('1317057451', 'Bravo', 'Ernesto', 'Urb Metropoliss', '0983990319'),
('1317457451', 'Cedeño', 'Nahomi', 'Barrio 4 de Noviembre', '0983347851'),
('1304557451', 'Farez', 'Paula', 'Cdla Villaventura', '0983684319'),
('1317056551', 'Chancay', 'Nagely', 'Barrio Divino Niño', '0983658822'),
('1302057451', 'Mendoza', 'Roberto', 'Barrio Jocay', '0983990057'),
('1307055811', 'Hernandez', 'Angélica', 'Barrio La Pradera', '0987410319');



INSERT INTO Vacunacion
VALUES 
('Parvovirus'), ('adenovirus'), ('hepatitis'), ('Leptospirosis'), ('Traqueítis infecciosa'), ('Leishmania'), 
('Rabia'), ('Leucemia felina'), ('Clamidófila'), ('Parvovirus felino');

INSERT INTO Enfermedad
VALUES 
('Hongos'), ('Virosis'), ('hepatitis'), ('Parvovirosis'), ('Moquillo'), ('Leishmania'), 
('Rabia'), ('Laringotraqueitis'), ('Leptospirosis'), ('Parásitos'), ('Tos de las perreras'), 
('Filarias');

INSERT INTO Veterinario
VALUES 
('Guillermo Alonso'), ('Carlos Mantuano'), ('Belén Vera');

set dateformat dmy
INSERT INTO Historial_Clinico
VALUES 
( 1, 1, 'Bulldog', 'castaño', '24-05-2020'),
( 6, 1, 'Galgo', 'negro', '04-06-2020'),
( 3, 3, 'MiniLop', 'blanco', '08-09-2020'),
( 6, 2, 'Ragdoll', 'gris', '10-12-2020'),
( 2, 2, 'Persa', 'naranja', '05-01-2021'),
( 1, 5, 'Angora', 'blanco y naranja', '30-03-2021'),
( 3, 1, 'Poodle', 'café', '04-07-2021'),
( 5, 2, 'Munchkin', 'negro', '21-07-2021'),
( 3, 1, 'Samoyedo', 'blanco', '14-02-2022'),
( 4, 4, 'Psittacoidea', 'verde', '02-04-2022');

set dateformat dmy
INSERT INTO Detalle_Vacunacion
VALUES 
( 2, 9, 1.0, '25-05-2020'),
( 1, 7, 0.5, '06-06-2020'),
( 9, 3, 0.7, '10-09-2020'),
( 10, 8, 0.3, '11-12-2020'),
( 3, 4, 0.7, '06-01-2021'),
( 7, 6, 1.0, '31-03-2021'),
( 5, 3, 1.0, '05-07-2021'),
( 8, 5, 0.2, '23-07-2021'),
( 4, 1, 0.9, '15-02-2022'),
( 6, 10, 0.3, '05-04-2022');

set dateformat dmy
INSERT INTO Detalle_Historial_Clinico
VALUES 
( 1, 1, 2, 5.8, '25-05-2020'),
( 2, 2, 4, 4.7, '06-06-2020'),
( 3, 2, 12, 1.7, '10-09-2020'),
( 4, 1, 4, 3.5, '11-12-2020'),
( 5, 3, 3, 3.4, '06-01-2021'),
( 6, 1, 7, 0.8, '31-03-2021'),
( 9, 3, 8, 5.0, '05-07-2021'),
( 8, 2, 1, 3.2, '23-07-2021'),
( 7, 1, 9, 4.8, '15-02-2022'),
( 10, 3, 6, 1.1, '05-04-2022');