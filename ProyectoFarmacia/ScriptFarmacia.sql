

-- Estructura de tabla para la tabla `doctor`

create table doctor
(
    mail     varchar(50)  not null
        primary key,
    pass     varchar(100) not null,
    name     varchar(100) not null,
    last_log date         not null,
    session  int(10)      not null
)
    charset = utf8mb4;


-- Estructura de tabla para la tabla `medicine`
create table medicine
(
    id   int         not null
        primary key,
    name varchar(50) not null,
    tmax double      not null,
    tmin double      not null
)
    charset = utf8mb4;

-- Estructura de tabla para la tabla `patient`
create table patient
(
    mail varchar(50)  not null
        primary key,
    name varchar(100) not null
)
    charset = utf8mb4;


-- Estructura de tabla para la tabla `xip`
create table xip
(
    id          int(10)     not null
        primary key,
    doctor_mail varchar(25) not null,
    id_medicine int(10)     not null,
    id_patient  varchar(25) not null,
    date        date        not null
)
    charset = utf8mb4;

-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `xip`
--
ALTER TABLE `xip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_medicine` (`id_medicine`),
  ADD KEY `doctor_mail` (`doctor_mail`),
  ADD KEY `id_patient` (`id_patient`);
COMMIT;
INSERT INTO `doctor` (`mail`, `pass`, `name`, `last_log`, `session`) VALUES
    ('juan@', 'jan', 'Juan', '2023-02-29', 647089378),
    ('pepe@', 'pe', 'Pepe', '2023-05-12', 871603609),
    ('raul@', 'ra', 'raul', '0000-00-00', 1),
    ('david@', 'reo', 'David', '2023-10-01', 279690198),
    ('luis@', 'lu', 'Luis', '0000-00-00', 0);




INSERT INTO `doctor` (`mail`, `pass`, `name`, `last_log`, `session`) VALUES
    ('dani@', 'dan', 'dani', '2023-05-29', 452089378),
    ('sami@', 'dsa', 'Sami', '2023-05-30', 833603609),
    ('fabian@', 'fab', 'Fabian', '0000-00-00', 0),
    ('gerard@', 'ger', 'Gerard', '2023-06-01', 358690198),
    ('victor@', 'vi', 'victor', '0000-00-00', 0);


INSERT INTO `medicine` (`id`, `name`, `tmax`, `tmin`) VALUES
    (1, 'Dolipran', 2.5, 3),
    (2, 'Paracetamol', 2, 0.5),
    (3, 'Amoxicilina', 1, 2),
    (4, 'Omeprazol', 2.5, 4);

INSERT INTO `patient` (`mail`, `name`) VALUES
    ('gerard@example.com', 'Gerard Romero'),
    ('juan@example.com', 'Juan Pérez'),
    ('david@example.com', 'David Lopez'),
    ('jordi@example.com', 'Jordi Ros');




INSERT INTO `xip` (`id`, `doctor_mail`, `id_medicine`, `id_patient`, `date`) VALUES
    (1, 'dani@', 1, 'david@example.com', '2023-06-29'),
    (2, 'fabian@', 2, 'gerard@example.com', '2023-07-29'),
    (3, 'sami', 3, 'juan@example.com', '2023-12-29'),
    (4, 'fabian@', 4, 'david@example.com', '2023-10-29'),
    (11, 'victor@', 1, 'jordi@example.com', '2023-05-12'),
    (25, 'gerard@', 1, 'gerard@example.com', '2024-07-30'),
    (36, 'dani@', 3, 'gerard@example.com', '2023-06-11'),
    (147, 'sami@', 2, 'david@example.com', '2023-06-21'),
    (256, 'gerard@', 4, 'juan@example.com', '2023-06-11');