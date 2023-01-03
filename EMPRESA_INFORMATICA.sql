CREATE DATABASE EMPRESA_INFORMATICA


create table persona(
       idpersona integer primary key identity,
       tipo_persona varchar(20) not null,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
	   idconsumidorfinal int,
	   idusuario int,
	   idcliente int,

);
 create table empleado(
       idempleado integer primary key identity not null,
	   idpersona int not null,
	   nombreempleado varchar(50) not null,
	   idsecretaria int,
	   idcontable int,
	   idtecnico int,
	   idservidor int,
	   idadministrador int,
	   idlimpieza int,
	   iddiseñador int,
	   idprogramador int,
	   idmontador int,
	   idprovedor int,
	   idsupervisor int,
	   idsoporte int,
	   constraint FK_DT_empleado_idempleado foreign key(idempleado) references Persona(idPersona),
	   );

--Tabla usuario
create table DT_usuario(
       idusuario integer primary key identity,
       idrol integer not null,
       nombre varchar(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) not null,
       password varbinary not null,
       estado bit default(1),
       constraint FK_DT_usuario_idusuario foreign key(idusuario) references Persona(idPersona),
);

create table DT_secretaria(
       idsecretaria integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_secretaria_idsecretara foreign key(idsecretaria) references empleado(idempleado),
	 );


	 create table DT_contable(
       idcontable integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_contable_idcontable foreign key(idcontable) references empleado(idempleado),
	 );

	 create table DT_tecnico(
       idtecnico integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_tecnico_idtecnico foreign key(idtecnico) references empleado(idempleado),
	 );

	 create table DT_servidor(
       idservidor integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_servidor_idservido foreign key(idservidor) references empleado(idempleado),
	 );


	 create table DT_administrador(
       idadministrador integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_administrador_idadministrador foreign key(idadministrador) references empleado(idempleado),
	 );

	 create table DT_limpieza(
       idlimpieza integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       constraint FK_DT_limpieza_idlimpieza foreign key(idlimpieza) references empleado(idempleado),
	 );

	 create table DT_diseñador(
       iddiseñador integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_disenador_iddiseñador foreign key(iddiseñador) references empleado(idempleado),
	 );

	 create table DT_programador(
       idprogramador integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
	   idprogramacion int not null,
	   idactualizaciondesoftware int not null,
       constraint FK_DT_programador_idprogramador foreign key(idprogramador) references empleado(idempleado),
	 );

	 create table DT_montador(
       idmontador integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_montador_idmontador foreign key(idmontador) references empleado(idempleado),
	 );

	 create table DT_consumidorfinal(
       idconsumidorfinal integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
	   venta int null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_consumidorfinal_idconsumidorfinal foreign key(idconsumidorfinal) references Persona(idPersona),
	 );
	 create table DT_cliente(
       idcliente integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
	   idmoramensual int,
       constraint FK_DT_cliente_idliente foreign key(idcliente) references Persona(idPersona),
	 );

	 create table DT_provedor(
       idprovedor integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_provedor_idprovedor foreign key(idprovedor) references Persona(idPersona),
	 );

	 create table DT_supervisor(
       idsupervisor integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       direccion varchar(70) null,
	   num_documento varchar(20) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_provedor_idsupervisor foreign key(idsupervisor) references empleado(idempleado),
	 );



	 create table rol_nuevo(
       idrol integer primary key identity,
       nombre varchar(30) not null,
       descripcion varchar(100) null,
       estado bit default(1)
	   constraint FK_DT_rol_nuevo_idrol foreign key(idrol) references empleado(idempleado),
	   );

	   create table DT_soporte(
       idsoporte integer primary key identity,
       nombre varchar(100) not null,
	   apellido VARCHAR(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) null,
       email varchar(50) null,
       constraint FK_DT_soporte_idsoporte foreign key(idsoporte) references empleado(idempleado),
	 );


create table Fabricantes
(
Codigo int identity,
nombrefabrica nvarchar (100),
primary key (Codigo)
); 

create table articulo(
       idarticulo integer primary key identity,
	   idproducto int not null,
       codigo varchar(50) null,
       nombre varchar(100) not null unique,
       precio_venta decimal(11,2) not null,
       stock integer not null,
       descripcion varchar(256) null,
       estado bit default(1),
	   idcategoria int not null,
	   iddiseño int not null,
	   idmarca int not null,
	   idaño int not null,
	   idcosto int not null,
       constraint FK_articulo_idarticulo foreign key(idarticulo) references Fabricantes(codigo),
);

create table categoria(
       idcategoria integer primary key identity,
       nombrecategoria varchar(50) not null unique,
       constraint FK_categoria_idcategoria foreign key(idcategoria) references Fabricantes(codigo),

);


create table diseño(
       iddiseño integer primary key identity,
       nombrediseno varchar(50) not null unique,
       constraint FK_diseno_iddiseno foreign key(iddiseño) references articulo(idarticulo),

);

create table marca(
       idmarca integer primary key identity,
       marca varchar(50) not null unique,
       constraint FK_marca_idmarca foreign key(idmarca) references articulo(idarticulo),

);

create table año(
       idaño integer primary key identity,
       año varchar(15) not null unique,
       constraint FK_año_idaño foreign key(idaño) references articulo(idarticulo),

);

create table costo(
       idcosto integer primary key identity,
       costo money,
	   iddescuento int,
       constraint FK_costo_idcosto foreign key(idcosto) references articulo(idarticulo),

);

create table descuento(
       iddescuento integer primary key identity,
       descuento money,
       constraint FK_descuento_iddescuento foreign key(iddescuento) references costo(idcosto),

);

ALTER TABLE Persona
   ADD CONSTRAINT FK_Persona_Fabricantes FOREIGN KEY (idPersona)
      REFERENCES Fabricantes (codigo);

create table ingreso(
       idingreso integer primary key identity,
       idproveedor integer not null,
       idusuario integer not null,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
       fecha datetime not null,
       impuesto decimal (4,2) not null,
       total decimal (11,2) not null,
       estado varchar(20) not null,
       FOREIGN KEY (idproveedor) REFERENCES persona (idpersona),
       FOREIGN KEY (idusuario) REFERENCES DT_usuario (idusuario)
);

--Tabla detalle_ingreso
create table detalle_ingreso(
       iddetalle_ingreso integer primary key identity,
       idingreso integer not null,
       idarticulo integer not null,
       cantidad integer not null,
       precio decimal(11,2) not null,
       FOREIGN KEY (idingreso) REFERENCES ingreso (idingreso) ON DELETE CASCADE,
       FOREIGN KEY (idarticulo) REFERENCES articulo (idarticulo)
);

create table venta(
       idventa integer primary key identity,
       idcliente integer not null,
       idusuario integer not null,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
       fecha_hora datetime not null,
       impuesto decimal (4,2) not null,
       total decimal (11,2) not null,
       estado varchar(20) not null,
	   idmoramensual int not null,
	   idpuntodeventa int not null,
       FOREIGN KEY (idcliente) REFERENCES persona (idpersona),
       FOREIGN KEY (idusuario) REFERENCES DT_usuario (idusuario)
);

--Tabla detalle_venta
create table detalle_venta(
       iddetalle_venta integer primary key identity,
       idventa integer not null,
	   producto int not null,
       idarticulo integer not null,
       cantidad integer not null,
       precio decimal(11,2) not null,
       descuento decimal(11,2) not null,
	   idmoramensual int not null,
	   iddespacho int,
       FOREIGN KEY (idventa) REFERENCES venta (idventa) ON DELETE CASCADE,
       FOREIGN KEY (idarticulo) REFERENCES articulo (idarticulo)

);
	create table despacho
	(
      iddespacho integer primary key identity,
	  subtotal integer not null,
	  ITBIS integer not null,
	  descuento integer not null,
	  totalapagar integer not null,
	  constraint FK_despacho_iddespacho foreign key(iddespacho) references venta(idventa)
);

ALTER TABLE ingreso
   ADD CONSTRAINT FK_ingreso_venta FOREIGN KEY (idingreso)
      REFERENCES venta (idventa);




 create table secretaria
(
idsecretaria int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_secretaria_idsecretaria foreign key(idsecretaria) references Persona(idpersona),

);

create table contable
(
idcontable int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_contable_idcontable foreign key(idcontable) references Persona(idpersona),

);


create table tecnico
(
idtecnico int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_tecnico_idtecnico foreign key(idtecnico) references Persona(idpersona),

);

create table servidor
(
idservidor int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_servidor_idservidor foreign key(idservidor) references Persona(idpersona),

);

create table administrador
(
idadministrador int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_administrador_idadministrador foreign key(idadministrador) references Persona(idpersona),

);


create table limpieza
(
idlimpieza int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_limpieza_idlimpieza foreign key(idlimpieza) references Persona(idpersona),

);

create table diseñador
(
iddiseñador int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_diseñador_iddiseñador foreign key(iddiseñador) references Persona(idpersona),

);


create table montador
(
idmontador int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_montador_idmontador foreign key(idmontador) references Persona(idpersona),

);
create table programador
(
idprogramador int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_programador_idprogramador foreign key(idprogramador) references Persona(idpersona),

);
create table supervisor
(
idsupervisor int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_supervisor_idsupervisor foreign key(idsupervisor) references Persona(idpersona),

);


create table rolnuevo
(
idrolnuevo int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_rolnuevo_idrolnuevo foreign key(idrolnuevo) references Persona(idpersona),
);

create table soporte
(
idsoporte int primary key not null,
id_mes varchar(10) not null,
id_Sueldo int not null,

--Relacion:
constraint FK_soporte_soporte foreign key(idsoporte) references Persona(idpersona),
);

create table mes
(
id_mes int primary key not null,
mes varchar(10) not null,
id_Sueldo int not null,
constraint FK_mes_id_mes foreign key(id_mes) references Persona(idpersona),
);


create table Sueldo
(
id_Sueldo int primary key not null,
Sueldo int not null,
constraint FK_Sueldo_id_Sueldo foreign key(id_Sueldo) references mes(id_mes),
);



create table moramensual(
       idmoramensual integer primary key identity,
       idproveedor integer not null,
       idusuario integer not null,
	   idcliente integer not null,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
       fecha datetime not null,
       impuesto decimal (4,2) not null,
       total decimal (11,2) not null,
	   idmoracliente int not null,
	   constraint FK_moramensual_idmoramensual foreign key(idmoramensual) references venta(idventa),
	);

	create table moracliente(
       idmoracliente integer primary key identity,
       moracliente int not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
	   idmoraclientesolucionada int not null,
       constraint FK_moracliente_idmoracliente foreign key(idmoracliente) references moramensual(idmoramensual),
);
create table moraclientesolucionada(
       idmoraclientesolucionada integer primary key identity,
       moraclientesolucionada int not null,
	   idmoracliente int not null,
       constraint FK_moraclientesolucionada_idmoraclientesolucionada  foreign key(idmoraclientesolucionada) references moracliente(idmoracliente),

);

create table comprobante(
       idcomprobante integer primary key identity,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
	   actualizaciondecomprovante int not null,
	   constraint FK_comprobante_idcomprobante foreign key(idcomprobante) references venta(idventa),
	);

	create table actualizaciondecomprovante(
       idactualizaciondecomprovante integer primary key identity,
	   actualizaciondecomprovante int not null,
	   idmoramensual int not null,
	   idmoracliente int not null,
	   idmoraclientesolucionada int not null,
	   idcomprobante int not null,

	   constraint FK_actualizaciondecomprovante_idactualizaciondecomprovante foreign key(idmoramensual) references comprobante(idcomprobante),
	);


CREATE TABLE productooferta (
  idproductooferta INT PRIMARY KEY,
  idproducto int not null,
  nomprooferta VARCHAR(100) NOT NULL,
  precio money not null,
  codigo_fabricante INT NOT NULL,
  idmarcaoferta int not null,
  idpreciooferta int not null,
  iddocumentacion int not null,
  constraint FK_productooferta_idproductooferta foreign key(idproductooferta) references Fabricantes(codigo),
  
);

CREATE TABLE marcaoferta (
  idmarcaoferta INT PRIMARY KEY,
  nommarcaoferta VARCHAR(100) NOT NULL,
  codigo_fabricante INT NOT NULL,
  constraint FK_marcaoferta_idmarcaoferta foreign key(idmarcaoferta) references productooferta(idproductooferta),
);

CREATE TABLE preciooferta (
  idpreciooferta INT PRIMARY KEY,
  numprecio money not null,
  constraint FK_preciooferta_idpreciooferta foreign key(idpreciooferta) references productooferta(idproductooferta),
);

CREATE TABLE documetacion (
  iddocumentacion INT PRIMARY KEY,
  documentacion varchar(1000) not null,
  tipo_documentacion varchar(20) not null,
  serie_documentacion varchar(7) null,
  constraint FK_documetacion_iddocumentacion foreign key(iddocumentacion) references productooferta(idproductooferta),

  );

  create table caducadoferta
  (
  idcaducaoferta INT PRIMARY KEY not null,
  idproductooferta int not null,
  tiempocaduca time not null,
  constraint FK_caducaoferta_idcaducaoferta foreign key(idcaducaoferta) references productooferta(idproductooferta),
  );




create table CAJAS
(
idcaja int,
Contenido nvarchar (100),
Valor int,
idlugar varchar(10),
Capacidad int,
idenvioproducto int,
primary key (idcaja),
constraint FK_CAJAS_idcaja foreign key(idcaja) references Fabricantes(codigo),
);


create table NUMLUGAR
(
idlugar int identity (10,5),
nombrelugar varchar(50),
primary key (idlugar),
constraint FK_NUMLUGAR_idlugar foreign key(idlugar) references CAJAS(idcaja),
);

create table capacidad
(
idcapacidad int identity,
Capacidad varchar(150),
primary key (idcapacidad),
constraint FK_capacidad_idcapacidad foreign key(idcapacidad) references CAJAS(idcaja),

);

create table envioproducto(
       idenvioproducto integer primary key identity,
       idcategoria integer not null,
       codigoenvio int null,
       precio_venta decimal(11,2) not null,
       descripcion varchar(256) null,
	   iddireccion int not null,
       constraint FK_envioproducto_idenvioproducto foreign key(idenvioproducto) references CAJAS(idcaja),
);

select sum(precio_venta), codigoenvio from envioproducto group by codigoenvio


create table direccion(
       iddireccion integer primary key identity,
       non_direccion varchar(50) null,
	   idCalle int not null,
	   idSector int not null,
       constraint FK_direccion_iddireccion foreign key(iddireccion) references envioproducto(idenvioproducto),
);

create table Calle
(
idCalle int primary key not null,
nom_calle varchar(40) not null,
constraint FK_Calle_idCalle foreign key(idCalle) references direccion(iddireccion),
);

create table Sector
(
idSector int primary key not null,
nom_Sector varchar(40) not null,
idCiudad int not null,
constraint FK_Sector_idSector foreign key(idSector) references direccion(iddireccion),
);
  
create table Ciudad
(
idCiudad int primary key not null,
nom_ciudad varchar(40) not null,
idMunicipio int not null,
constraint FK_Ciudad_idCiudad foreign key(idCiudad) references Sector(idSector),
);

create table Municipio
(
idMunicipio int primary key not null,
nom_municipio varchar(40) not null,
idPais int not null,
constraint FK_Municipio_idMunicipio foreign key(idMunicipio) references Ciudad(idCiudad),
);

create table Pais
(
idPais int primary key not null,
nom_Pais varchar(40) not null,
constraint FK_Pais_idPais foreign key(idPais) references Municipio(idMunicipio),
);


create table direcciongeneral
(
  iddirecciongeneral int primary key not null,
  tipodirecciongeneral varchar(60) not null,
  iddirectorindustrial int not null,
  iddirectorcomercial int not null,
  iddirectorfinanciera int not null,
  idgerente int not null,
  idmarketer int not null,
  );
	

   create table directorindustrial
(
  iddirectorindustrial int primary key not null,
  nombredirecctorindustrial varchar(60) not null,
  idlogistica int not null,
  tipoproduccion varchar (15) null,
  Ncrecimiento int null,
  tipometodos varchar(21) null,
  estudios varchar(19) null,
  fabricacion varchar(20) null,
  telefono varchar(20) null,
  email varchar(50) null,
  idprocesoproductivo int not null,
  idcalidad int not null,
  constraint FK_directorindustrial_iddirectorindustrial foreign key(iddirectorindustrial) references direcciongeneral(iddirecciongeneral),
  );

  create table directorcomercial
  (
  iddirectorcomercial int primary key not null,
  nombredirecctorcomercial varchar(60) null,
  venta int not null,
  idlogistica varchar(60) null,
  distribucion varchar(45) null,
  telefono varchar(20) null,
  email varchar(50) null,
  constraint FK_directorcomercial_iddirectorcomercial foreign key(iddirectorcomercial) references direcciongeneral(iddirecciongeneral),

  );

  create table directorfinanciera
  (
  iddirectorfinanciera int primary key not null,
  nombredirectorfinanciera varchar(60) null,
  idcontabilidad int null,
  tesoreria money not null,
  controlgestion varchar(60) null,
  informatica varchar(45) null,
  telefono varchar(20) null,
  email varchar(50) null,
  constraint FK_directorfinanciera_iddirectorfinanciera foreign key(iddirectorfinanciera) references direcciongeneral(iddirecciongeneral),

  );

  
create table gerente
  (
   idgerente int primary key not null,
   nombregerente varchar(19) null,
   telefono varchar(20) null,
   email varchar(50) null,
   dprogramacion varchar(50) null,
   escrituratecnica varchar(12) null,
   asesoria varchar(19) null,
   capacitacion varchar(12) null,
   documentacion varchar(60) null,
   lactualizaciondesoftware int not null,
   tipomodificaciones int not null,
   fechadelicencias time not null,
   idpresupuestos int not null,
   idseguridad int not null,
   idinforme int not null,
   idgestionproyecto int not null,
   idagendaproyecto int not null,
   idpoliticasempresa int not null,
   idterminosreferencia int not null,
   constraint FK_gerente_idgerente foreign key(idgerente) references direcciongeneral(iddirecciongeneral),
   );

   create table marketer
  (
   idmarketer int primary key not null,
   nombremarketer varchar(19) null,
   telefono varchar(20) null,
   email varchar(50) null,
   escrituratecnica varchar(12) null,
   asesoria varchar(19) null,
   capacitacion varchar(12) null,
   documentacion varchar(60) null,
   idmarketing int not null,
   constraint FK_marketer_idmarketer foreign key(idmarketer) references direcciongeneral(iddirecciongeneral),
   );

   ALTER TABLE Persona
   ADD CONSTRAINT FK_Persona_direcciongeneral FOREIGN KEY (idPersona)
   REFERENCES direcciongeneral (iddirecciongeneral);


   create table pagodirectorindustrial
   (
   iddirectorindustrial int primary key not null,
   idpago int not null,
   idcargo int not null,
   constraint FK_pagodirectorindustrial_iddirectorindustrial foreign key(iddirectorindustrial) references persona(idpersona),
   );

   create table pagodirectorcomercial
   (
   iddirectorcomercial int primary key not null,
   idpago int not null,
   idcargo int not null,
   constraint FK_pagodirectorcomercial_iddirectorcomercial foreign key(iddirectorcomercial) references persona(idpersona),
   );

    create table pagodirectorfinanciera
   (
   iddirectorfinanciera int primary key not null,
   idpago int not null,
   idcargo int not null,
   constraint FK_pagodirectorfinanciera_iddirectorfinanciera foreign key(iddirectorfinanciera) references persona(idpersona),
   );

  create table pagogerente
   (
   idgerente int primary key not null,
   idpago int not null,
   idcargo int not null,
   constraint FK_pagogerente_idgerente foreign key(idgerente) references persona(idpersona),
   );

   create table pagomarketer
   (
   idmarketer int primary key not null,
   idpago int not null,
   idcargo int not null,
   constraint FK_pagomarketer_idmarketer foreign key(idmarketer) references persona(idpersona),
   );


   create table pago 
   (
   idpago int primary key not null,
   pago money not null,
   constraint FK_pago_idpago foreign key(idpago) references persona(idpersona),
   );

   create table cargo
   (
   idcargo int primary key not null,
   cargo money not null,
   constraint FK_cargo_idcargo foreign key(idcargo) references pago(idpago),
   );

   create table marketing
   (

   idmarketing int primary key not null,
   marketingbasico varchar(60) not null,
   presupuesto money not null,
   imagen varchar(40) not null,
   branding varchar(36) not null,
   test varchar(70) null,
   analisisentorno varchar(170) not null,
   implicados varchar(7000) not null,
   idproducto varchar(36) not null,
   disposicion varchar(20) not null,
   debilidades varchar(360) not null,
   constraint FK_marketing_idmarketing foreign key(idmarketing) references marketer(idmarketer),
   );

   select sum(branding), marketingbasico from marketing group by marketingbasico
   select avg(branding) from marketing
   select COUNT(*) from marketing

   create table producto
   (

   idproducto int primary key not null,
   nombreproducto varchar(60) not null,
   numproducto int not null,
   caracteristicas varchar(120) not null,
   necesidades varchar(80) not null,
   satisfaccion varchar(170) not null,
   diferenciacion varchar(200) not null,
   empaquetamiento varchar(250) not null,
   complementos varchar(90) not null,
   stock int not null,
   idprecio int  not null,
   idofertas int not null,
   iddistribucion int not null,
   idpromocion int not null,
   idposicionamiento int not null,
   idservicio int not null,
   idpublicidad int not null,
   idenvace int not null,
   iddefinicion int not null,
   idprototipo int not null,
   constraint FK_producto_idproducto foreign key(idproducto) references detalle_venta(iddetalle_venta),

   );

   select SUM(caracteristicas), nombreproducto from producto group by nombreproducto
   select AVG(caracteristicas) from producto
   select COUNT(*) from producto

   create table precio
   (

   idprecio int primary key not null,
   idproducto int  not null,
   costes varchar(120) not null,
   competencia varchar(170) not null,
   sustitutivos varchar(200) not null,
   constraint FK_precio_idprecio foreign key(idprecio) references producto(idproducto),

   );


   create table ofertas
   (

   idofertas int primary key not null,
   numofertas int not null,
   constraint FK_ofertas_idofertas foreign key(idofertas) references producto(idproducto),
   );

   create table distribucion
   (

   iddistribucion int primary key not null,
   ndistribucion int not null,
   acuerdos varchar(80) not null,
   prescripciones varchar(40) not null,
   constraint FK_distribucion_iddistribucion foreign key(iddistribucion) references producto(idproducto),
   );
                                                                        
  create table promocion
   (

   idpromocion int primary key not null,
   nombrepromocion varchar(80) not null,
   constraint FK_promocion_idpromocion foreign key(idpromocion) references producto(idproducto),
   

   );

   create table posicionamiento
   (

   idposicionamiento int primary key not null,
   numposicionamiento int not null,
   constraint FK_posicionamiento_idposicionamiento foreign key(idposicionamiento) references producto(idproducto),
   );

   create table servicio
   (

   idservicio int primary key not null,
   numservicio int not null,
   estadoservicio varchar(80) not null,
   constraint FK_servicio_idservicio foreign key(idservicio) references producto(idproducto),
   );

   create table publicidad
   (

   idpublicidad int primary key not null,
   Fpublicidad varchar(200) not null,
   constraint FK_publicidad_idpublicidad foreign key(idpublicidad) references producto(idproducto),
   );

   create table envace
   (

   idenvace int primary key not null,
   nombreenvace varchar(60) not null,
   constraint FK_envace_idenvace foreign key(idenvace) references producto(idproducto),
   );

   create table definicion
   (

   iddefinicion int primary key not null,
   ladefinicion varchar(500) null,
   constraint FK_definicion_iddefinicion foreign key(iddefinicion) references producto(idproducto),
   );

   create table prototipo
   (

   idprototipo int primary key not null,
   prototipoface varchar(60) not null,
   constraint FK_prototipo_idprototipo foreign key(idprototipo) references producto(idproducto),
   );




   --paso

   create table logistica
   (

   idlogistica int primary key not null,
   tipologistica varchar(60) not null,
   constraint FK_logistica_idlogistica foreign key(idlogistica) references directorindustrial(iddirectorindustrial),
   );

   create table producionproducto
   (

   idproducionproducto int primary key not null,
   tipoproducionproducto varchar(60) not null,
   constraint FK_producionproducto_idproducionproducto foreign key(idproducionproducto) references logistica(idlogistica),
   );

   create table transportelogistico
   (

   idtransportelogistico int primary key not null,
   tipotransportelogistico varchar(60) not null,
   constraint FK_transportelogistico_idtransportelogistico foreign key(idtransportelogistico) references logistica(idlogistica),
   );

   create table centrodistribucion
   (

   idcentrodistribucion int primary key not null,
   tipocentrodistribucion varchar(60) not null,
   constraint FK_centrodistribucion_idcentrodistribucion foreign key(idcentrodistribucion) references logistica(idlogistica),
   );

   

   create table puntodeventa
   (

   idpuntodeventa int primary key not null,
   lugarpuntodeventa varchar(60) not null,
   constraint FK_puntodeventa_idpuntodeventa foreign key(idpuntodeventa) references logistica(idlogistica),
   
   );


   create table procesoproductivo
   (

   idprocesoproductivo int primary key not null,
   procesodeproductivo varchar(700) not null,
   idprocesoserie int not null,
   idprocesopedido int not null,
   idprocesolote int not null,

   constraint FK_procesoproductivo_idprocesoproductivo foreign key(idprocesoproductivo) references directorindustrial(iddirectorindustrial),
  
   );

   create table procesoserie
   (

   idprocesoserie int primary key not null,
   procesodeserie varchar(700) not null,
   constraint FK_procesoserie_idprocesoserie foreign key(idprocesoserie) references procesoproductivo(idprocesoproductivo),
   
   );

   create table procesopedido
   (

   idprocesopedido int primary key not null,
   procesodepedido varchar(400) not null,
   constraint FK_procesopedido_idprocesopedido foreign key(idprocesopedido) references procesoproductivo(idprocesoproductivo),
   
   );

   create table procesolote
   (

   idprocesolote int primary key not null,
   procesodelote varchar(500) not null,
   constraint FK_procesolote_idprocesolote foreign key(idprocesolote) references procesoproductivo(idprocesoproductivo),
   
   );


   create table calidad
   (

   idcalidad int primary key not null,
   lacalidad varchar(200) not null,
   
   
   );


   create table manejo
   (

   idmanejo int primary key not null,
   elmanejo varchar(200) not null,
   especificaciones varchar(200) not null,
   tecnicas varchar(100) not null,
   servicio varchar(99) not null,
   constraint FK_manejo_idmanejo foreign key(idmanejo) references calidad(idcalidad),
   
   );


   create table evaluacion
   (

   idevaluacion int primary key not null,
   laevaluacion varchar(100) not null,
   constraint FK_evaluacion_idevaluacion foreign key(idevaluacion) references calidad(idcalidad),
   
   );
    

	create table revision
   (

   idrevision int primary key not null,
   larevision varchar(200) not null,
   constraint FK_revision_idrevision foreign key(idrevision) references calidad(idcalidad),
   
   );

   create table inspeccion
   (

   idinspeccion int primary key not null,
   lainspeccion varchar(200) not null,
   prueba varchar(200) not null,
   proceso varchar(300) not null,
   constraint FK_inspeccion_idinspeccion foreign key(idinspeccion) references calidad(idcalidad),
   
   );

   
   create table sistema
   (

   idsistema int primary key not null,
   lasistema varchar(200) not null,
   constraint FK_sistema_idsistema foreign key(idsistema) references calidad(idcalidad),
   
   );

   create table contabilidad
   (

   idcontabilidad int primary key not null,
   lacontabilidad money not null, 
   librodiario varchar(50),
   pasealmayor int,
   asientos int,
   constraint FK_contabilidad_idcontabilidad foreign key(idcontabilidad) references directorfinanciera(iddirectorfinanciera),
   
   );


   create table programacion
   (

   idprogramacion int primary key not null,
   lenguajedeprogramacion varchar(140) not null, 
   constraint FK_programacion_idprogramacion foreign key(idprogramacion) references programador(idprogramador),
   
   );

   create table actualizaciondesoftware
   (

   idactualizaciondesoftware int primary key not null,
   lactualizaciondesoftware varchar(140) not null, 
   fechadeactualizacion time not null,
   constraint FK_programacion_idactualizaciondesoftware foreign key(idactualizaciondesoftware) references programador(idprogramador),
   
   );

   create table modificaciones
   (

   idmodificaciones int primary key not null,
   tipomodificaciones varchar(140) not null, 
   fechademodificaciones datetime not null,
   aspectosdemodificacion varchar(300) not null,
   constraint FK_programacion_idmodificaciones foreign key(idmodificaciones) references programador(idprogramador),
   );

   create table licencias
   (

   idlicencias int primary key not null,
   tipolicencias varchar(140) not null, 
   fechadelicencias datetime not null,
   caducaciondelicencia datetime not null,
   aspectosdelicencia datetime not null,
   constraint FK_programacion_idlicencias foreign key(idlicencias) references programador(idprogramador),
   
   );


   

   create table presupuestos
   (

   idpresupuestos int primary key not null,
   tipopresupuestos varchar(140) not null, 
   cantidadpresupuesto money not null,
   faltadecapital money null,
   administracionpresupuesto varchar(240) not null, 
   constraint FK_presupuestos_idpresupuestos foreign key(idpresupuestos) references gerente(idgerente),
   
   );

   create table seguridad
   (

   idseguridad int primary key not null,
   tiposeguridad varchar(140) not null, 
   herramientasseguridad varchar(115) not null,
   protocoloseguridad varchar(135) not null,
   constraint FK_seguridad_idseguridad foreign key(idseguridad) references gerente(idgerente),

   );

   create table tecnologia
   (

   idtecnologia int primary key not null,
   Numtecnologia varchar(140) not null, 
   tecnologianuevas varchar(115) not null,
   protocolotecnologia varchar(135) not null,
   calidadtecnologia varchar(50) not null,
   constraint FK_tecnologia_idtecnologia foreign key(idtecnologia) references gerente(idgerente),

   );


   create table informe
   (

   idinforme int primary key not null,
   Numinforme int not null, 
   detallesinforme varchar(195) not null,
   aspectosinforme varchar(105) not null,

   constraint FK_informe_idinforme foreign key(idinforme) references gerente(idgerente),

   );


   create table gestionproyecto
   (

   idgestionproyecto int primary key not null,
   Numgestionproyecto int not null, 
   detallesgestionproyecto varchar(200) not null,
   aspectosgestionproyecto varchar(165) not null,
   representantegestionproyecto varchar(15) not null,
   constraint FK_gestionproyecto_idgestionproyecto foreign key(idgestionproyecto) references gerente(idgerente),

   );


   create table agendaproyecto
   (

   idagendaproyecto int primary key not null,
   fechaagendaproyecto datetime  null, 
   aspectosagendaproyecto varchar(165) not null,
   idfechalimite int not null,
   constraint FK_agendaproyecto_idagendaproyecto foreign key(idagendaproyecto) references gerente(idgerente),

   );

   create table fechalimite
   (

   idfechalimite int primary key not null,
   fechalimite datetime null, 
   detallesfechalimite varchar(165) not null,
   constraint FK_fechalimite_idfechalimite foreign key(idfechalimite) references agendaproyecto(idagendaproyecto),

   );



   create table politicasempresa
   (

   idpoliticasempresa int primary key not null,
   politicaempresam varchar(40) null, 
   detallespolitica varchar(165) null,
   normas varchar(47) null,
   procedimietospoliticas  varchar(460) null,
   comunicaciones varchar(408) null,
   constraint FK_politicasempresa_idpoliticasempresa foreign key(idpoliticasempresa) references gerente(idgerente),

   );

   create table terminosreferencia
   (

   idterminosreferencia int primary key not null,
   mterminoreferencia varchar(40) null, 
   accesorios varchar(165) null,
   insumos money not null,
   elementosnecesarios  varchar(60) null,
   contratacionservicios varchar(48) null,
   constraint FK_terminosreferencia_idterminosreferencia foreign key(idterminosreferencia) references gerente(idgerente),

   );

   create table filosofiaempresa
   (

   idfilosofiaempresa int primary key not null,
   lafilosofiaempresa varchar(40) null,
   
   );

   create table reglasempresa
   (

   idreglasempresa int primary key not null,
   lareglasempresa varchar(100) null,
   constraint FK_reglasempresa_idreglasempresa foreign key(idreglasempresa) references filosofiaempresa(idfilosofiaempresa),
   );

   create table librosempresa
   (

   idlibrosempresa int primary key not null,
   ellibrosempresa varchar(70) null,
   tipodelibro varchar(90) null,
   constraint FK_librosempresa_idlibrosempresa foreign key(idlibrosempresa) references filosofiaempresa(idfilosofiaempresa),
   );

   create table Ideologiaempresa
   (

   idIdeologiaempresa int primary key not null,
   laIdeologiaempresa varchar(70) null,
   NIdeologiaempresa int not null,
   constraint FK_Ideologiaempresa_idIdeologiaempresa foreign key(idIdeologiaempresa) references filosofiaempresa(idfilosofiaempresa),
   );


   create table resumenes
   (

   idresumenes int primary key not null,
   laresumenes varchar(100) null,
   aspectosresumenes varchar(90) null,

   );

   create table bibliografias
   (

   idbibliografias int primary key not null,
   labibliografias varchar(100) null,
   Nbibliografias int null,
   constraint FK_bibliografias_idbibliografias foreign key(idbibliografias) references resumenes(idresumenes),
   );

   create table strategias
   (

   idstrategias int primary key not null,
   lastrategias varchar(60) null,
   Nstrategias int null,
   fechastrategias datetime not null,
   constraint FK_strategias_idstrategias foreign key(idstrategias) references resumenes(idresumenes),
   );

   create table Derechos
   (

   idDerechos int primary key not null,
   losDerechos varchar(90) null,
   NDerechos int null,
   constraint FK_Derechos_idDerechos foreign key(idDerechos) references filosofiaempresa(idfilosofiaempresa),
   );
   
   create table necesidades
   (

   idnecesidades int primary key not null,
   lasnecesidades varchar(30) null,
   Nnecesidades int null,
   constraint FK_necesidades_idnecesidades foreign key(idnecesidades) references filosofiaempresa(idfilosofiaempresa),
   );

   
   create table comentarios
   (

   idcomentarios int primary key not null,
   loscomentarios varchar(96) null,
   Nombresdecomentarios int null,
   constraint FK_comentarios_idcomentarios foreign key(idcomentarios) references resumenes(idresumenes),
   );












   --vistas
   create view vVENTASREALIZADAS
   as


   select V.idventa, V.estado, CONCAT(C.apellido,'', C.nombre) NombreVenta 
   from venta V
   inner Join DT_cliente C on V.idcliente= C.idcliente
   inner Join DT_usuario u on V.idusuario= U.idusuario


   --vistas2
   create view vEMPLEADOSPAGADOS
   as


   select * from empleado E
   inner Join empleado L on E.idempleado= L.idempleado
   inner Join secretaria S on E.idsecretaria= S.idsecretaria
   inner Join contable C on E.idcontable= C.idcontable
   inner Join tecnico T on E.idtecnico= T.idtecnico
   inner Join administrador A on E.idadministrador= A.idadministrador
   inner Join diseño D on E.iddiseñador= D.iddiseño
   inner Join programador P on E.idprogramador= p.idprogramador
   inner Join montador M on E.idmontador= M.idmontador
   inner Join contable Z on E.idcontable= Z.idcontable

   --trigger inicial

   CREATE TRIGGER trActualizarStock ON detalle_venta FOR INSERT
   AS
   BEGIN

         SELECT producto, cantidad INTO #productofacturados FROM INSERTED

		 SELECT * FROM #productofacturados

		 DROP TABLE #productofacturados

   END

   --trigger1


   ALTER TRIGGER trActualizarStock ON detalle_venta FOR INSERT
   AS
   BEGIN

         SELECT producto, cantidad INTO #productofacturados FROM INSERTED

		 UPDATE P SET P.stock = P.stock PF.cantidad FROM producto P INNER JOIN #productofacturados PF
		  ON P.idproducto = PF.cantidad
		 
          DROP TABLE #productofacturados

   END

   --trigger2

   CREATE TABLE LogProductosEliminados(
	LogID int Primary KEY identity(1,1),
	Fecha DATETIME,
	Usuario VARCHAR(200),
	idproducto INT,
	cantidad INT,
	idventa INT
)

select * from LogProductosEliminados

ALTER TRIGGER trProductosEliminado ON detalle_venta FOR DELETE
AS
BEGIN
	
	INSERT INTO LogProductosEliminados (Fecha, Usuario, idproducto, cantidad, idventa)
	SELECT GETDATE(), SUSER_NAME(), producto, Cantidad, idventa FROM DELETED
	
END


delete from detalle_venta where iddetalle_venta = 1

select * from LogProductosEliminados



--INICIO DEL PROCEDIMIENTO ALMACENADO

EXEC spInsertarproducto

CREATE Procedure spInsertarproducto
AS
BEGIN
      INSERT INTO producto (nombreproducto, numproducto, caracteristicas, necesidades, satisfaccion, diferenciacion)
	  VALUES ('','','','','','')


END


--procedimiento almacenado

ALTER Procedure spInsertarproducto
	@nombreproducto VARCHAR(100),
	@numproducto int,
	@caracteristicas varchar(120),
	@necesidades VARCHAR(20),
	@satisfaccion VARCHAR(200),
	@diferenciacion VARCHAR(20)
AS
BEGIN

	DECLARE @Existe BIT = (SELECT COUNT(*) FROM producto WHERE nombreproducto =@nombreproducto AND numproducto =  @numproducto)
	IF(@Existe =1)
	BEGIN
		DECLARE @idproducto INT = (Select TOP 1 idproducto from producto Where nombreproducto =@nombreproducto AND numproducto =  @numproducto)
		UPDATE producto Set caracteristicas = @caracteristicas, necesidades = @necesidades, satisfaccion = @satisfaccion, diferenciacion = @diferenciacion Where
				idproducto = @idproducto
	END
	ELSE
	BEGIN
		INSERT INTO producto (nombreproducto, numproducto, caracteristicas, necesidades, satisfaccion, diferenciacion)
		VALUES (@nombreproducto,@numproducto,@caracteristicas,@necesidades,@satisfaccion,@diferenciacion)
	END
END


   --procedimiento almacenado2

   EXEC spInsertarempleado 'Carlos'


ALTER Procedure spInsertarempleado 

	@nombreempleado VARCHAR(100)
AS
BEGIN
	INSERT INTO empleado(Nombreempleado)
	VALUES (@Nombreempleado)
END