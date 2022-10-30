create schema bd_tpint_labiv;

-- drop database bd_tpint_labiv

use bd_tpint_labiv;

CREATE TABLE Paises
(
	Id_Pais int auto_increment NOT NULL,
	Descripcion_Pais VARCHAR(30) NOT NULL,

	CONSTRAINT PK_PAISES PRIMARY KEY (Id_Pais)
);


CREATE TABLE Provincias
(
	Id_Pais_Provincia int NOT NULL,
	Id_Provincia int auto_increment NOT NULL,
	Descripcion_Provincia VARCHAR(30) NOT NULL,

	CONSTRAINT PK_PROVINCIAS PRIMARY KEY (Id_Provincia, Id_Pais_Provincia),
    CONSTRAINT FK_PROVINCIAS_PAISES FOREIGN KEY (Id_Pais_Provincia)
		REFERENCES Paises(Id_Pais)
);

CREATE TABLE Localidades(
	Id_Pais_Localidad int NOT NULL,
	Id_Provincia_Localidad int NOT NULL,
    Id_Localidad int auto_increment NOT NULL,
	Descripcion_Localidad VARCHAR(30) NOT NULL,

	CONSTRAINT PK_Localidades PRIMARY KEY (Id_Localidad, Id_Provincia_Localidad, Id_Pais_Localidad),
    CONSTRAINT FK_LOCALIDADES_PROVINCIAS FOREIGN KEY (Id_Pais_Localidad, Id_Provincia_Localidad)
		REFERENCES Provincias(Id_Pais_Provincia ,Id_Provincia)
);

CREATE TABLE Usuarios(
	DNI_Usr CHAR(10) NOT NULL,
    CUIL_Usr CHAR(12) UNIQUE NOT NULL,
	Nombre_Usr VARCHAR(20) NOT NULL,
	Apellido_Usr VARCHAR(20),
    Genero_Usr VARCHAR(10) check(Genero_Usuario like 'MASCULINO' OR Genero_Usuario like 'FEMENINO' OR Genero_Usuario like 'INDEFINIDO'),
	Nacionalidad VARCHAR(30) NOT NULL,
    FechaNacimiento_Usr DATE NULL,
    Direccion_Usr VARCHAR(30) NOT NULL,
    Id_Pais_Usr INT NOT NULL,
    Id_Provincia_Usr INT NOT NULL,
    Id_Localidad_Usr INT NOT NULL,
    Telefono_Usuario VARCHAR(10) NULL,
	Tipo_Usr BIT DEFAULT 0, -- 0 normal, 1 admin
	Contrasenia_Usr VARCHAR(16) NOT NULL, 
	Estado_Usuario BIT DEFAULT 1,
    
	CONSTRAINT PK_USUARIOS PRIMARY KEY(DNI_Usr),
	CONSTRAINT FK_LOCALIDADES_USUARIOS FOREIGN KEY (Id_Localidad_Usr, Id_Provincia_Usr, Id_Pais_Usr)
		REFERENCES Localidades(id_Localidad, Id_Provincia_Localidad, Id_Pais_Localidad)
);

CREATE TABLE TipoCuentas(
	id_TipoCuenta INT auto_increment NOT NULL,
    descripcion_TipoCuenta VARCHAR(20),
    
    CONSTRAINT PK_TIPO_CUENTAS PRIMARY KEY(id_TipoCuenta)
);


CREATE TABLE Cuentas(
	Nro_cuenta VARCHAR(5) NOT NULL,
    DNI_cuenta CHAR(10) NOT NULL,
    fecha_creacion_cuenta TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_TipoCuenta_Cuentas INT NOT NULL,
    CBU VARCHAR(16) NOT NULL UNIQUE,
    Saldo_cuenta DECIMAL NOT NULL DEFAULT 10000.0,
    Estado_cuenta BIT DEFAULT 1,
    
    CONSTRAINT PK_CUENTAS PRIMARY KEY(Nro_cuenta),
	CONSTRAINT FK_CUENTAS_USUARIOS FOREIGN KEY (DNI_cuenta)
		REFERENCES usuarios(DNI_Usr),
	CONSTRAINT FK_CUENTAS_TIPOCUENTAS FOREIGN KEY (id_TipoCuenta_Cuentas)
		REFERENCES TipoCuentas(id_TipoCuenta)
);

CREATE TABLE Prestamos(
	id_prestamo INT auto_increment NOT NULL,
    DNI_prestamo CHAR(10) NOT NULL,
    nro_cuentaDestino_prestamo VARCHAR(5) NOT NULL,
    Autorizado_prestamo BIT NOT NULL DEFAULT 0 , -- 1 AUTORIZADO, 0 NO AUTORIZADO
    fecha_solicitado_prestamo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    imp_solicitado_prestamo DECIMAL NOT NULL,
    imp_resultante_prestamo DECIMAL NOT NULL,
    plazo_meses_prestamo INT NOT NULL,
    imp_pagoAlMes_prestamo DECIMAL NOT NULL,
    cant_cuotas_prestamo INT NOT NULL,
    
    CONSTRAINT PK_PRESTAMOS PRIMARY KEY(id_prestamo),
    CONSTRAINT FK_USUARIOS_PRESTAMOS FOREIGN KEY (DNI_prestamo)
		REFERENCES usuarios(DNI_Usr),
	CONSTRAINT FK_CUENTAS_PRESTAMOS FOREIGN KEY (nro_cuentaDestino_prestamo)
		REFERENCES cuentas(Nro_cuenta)
        
);

CREATE TABLE TiposMovimientos(
	id_tiposMovimientos INT auto_increment NOT NULL,
    descripcion_tiposMovimientos VARCHAR(30) NOT NULL,
	
    CONSTRAINT PK_TiposMovimientos PRIMARY KEY(id_tiposMovimientos)
);

CREATE TABLE Movimientos(
	id_movimiento INT auto_increment NOT NULL,
    nro_cuenta_movimientos VARCHAR(5) NOT NULL,
    id_tiposMovimientos_movimientos INT NOT NULL,
    fecha_movimientos TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    detalle_movimientos VARCHAR(30) NOT NULL,
    importe_movimientos DECIMAL NOT NULL,
    
    CONSTRAINT PK_Movimientos PRIMARY KEY(id_movimiento),
    CONSTRAINT FK_MOVIMIENTOS_CUENTAS FOREIGN KEY (nro_cuenta_movimientos)
		REFERENCES cuentas(Nro_cuenta),
	CONSTRAINT FK_MOVIMIENTOS_TIPOS FOREIGN KEY (id_tiposMovimientos_movimientos)
		REFERENCES TiposMovimientos(id_tiposMovimientos)
);




