CREATE DATABASE escuelita;

go

use escuelita

create TABLE empleado (
    idEmpleado int not null primary key,
    sueldo money DEFAULT 1500
)

insert into empleado (idEmpleado, Nombre, sueldo)
values (1, 'felipe de jesus', 2000)

SELECT * FROM empleado;

insert into empleado(idEmpleado, nombre)
values (2, 'chuerk')


SELECT * FROM empleado;
 create table personita(
    idEmpleado int not null primary KEY,
    nombre NVARCHAR(50) not null,
    sueldo money DEFAULT 1500,
    telefono VARCHAR(20) CHECK (telefono like '667(0-9)')
     )

     INSERT into personita values (1,)