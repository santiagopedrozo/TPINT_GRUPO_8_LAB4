create schema bd_tpint_labiv;

-- drop database bd_tpint_labiv

use bd_tpint_labiv;


CREATE TABLE Paises
(
	IdPais_Pais int auto_increment NOT NULL,
	Descripcion_Pais VARCHAR(30) NOT NULL,

	CONSTRAINT PK_PAISES PRIMARY KEY (IdPais_Pais)
);


CREATE TABLE Provincias
(
	IdPais_Prov int NOT NULL,
	IdProvincia_Prov int auto_increment NOT NULL,
	Descripcion_Prov VARCHAR(30) NOT NULL,

	CONSTRAINT PK_PROVINCIAS PRIMARY KEY (IdProvincia_Prov, IdPais_Prov),
    CONSTRAINT FK_PROVINCIAS_PAISES FOREIGN KEY (IdPais_Prov)
		REFERENCES Paises(IdPais_Pais)
);

CREATE TABLE Localidades(
	IdPais_Loc int NOT NULL,
	IdProvincia_Loc int NOT NULL,
    IdLocalidad_Loc int auto_increment NOT NULL,
	Descripcion_Loc VARCHAR(30) NOT NULL,

	CONSTRAINT PK_Localidades PRIMARY KEY (IdLocalidad_Loc, IdProvincia_Loc, IdPais_Loc),
    CONSTRAINT FK_LOCALIDADES_PROVINCIAS FOREIGN KEY (IdPais_Loc, IdProvincia_Loc)
		REFERENCES Provincias(IdPais_Prov, IdProvincia_Prov)
);

CREATE TABLE Usuarios(
	DNI_Usr CHAR(10) NOT NULL,
    CUIL_Usr CHAR(12) UNIQUE NOT NULL,
	Nombre_Usr VARCHAR(20) NOT NULL,
	Apellido_Usr VARCHAR(20),
    Genero_Usr VARCHAR(10) check(Genero_Usr like 'MASCULINO' OR Genero_Usr like 'FEMENINO' OR Genero_Usr like 'INDEFINIDO'),
	Nacionalidad VARCHAR(30) NOT NULL,
    FechaNacimiento_Usr DATE NULL,
    Direccion_Usr VARCHAR(30) NOT NULL,
    IdPais_Usr INT NOT NULL,
    IdProvincia_Usr INT NOT NULL,
    IdLocalidad_Usr INT NOT NULL,
    Telefono_Usr VARCHAR(10) NULL,
	Tipo_Usr BIT DEFAULT 0, -- 0 normal, 1 admin
	Contrasenia_Usr VARCHAR(16) NOT NULL, 
	Estado_Usr BIT DEFAULT 1,
    
	CONSTRAINT PK_USUARIOS PRIMARY KEY(DNI_Usr),
	CONSTRAINT FK_LOCALIDADES_USUARIOS FOREIGN KEY (IdLocalidad_Usr, IdProvincia_Usr, IdPais_Usr)
		REFERENCES Localidades(IdLocalidad_Loc, IdProvincia_Loc, IdPais_Loc)
);

CREATE TABLE TipoCuentas(
	Id_TipoCuenta INT auto_increment NOT NULL,
    Descripcion_TipoCuenta VARCHAR(20),
    
    CONSTRAINT PK_TIPO_CUENTAS PRIMARY KEY(Id_TipoCuenta)
);


CREATE TABLE Cuentas(
	Nro_Cuentas VARCHAR(5) NOT NULL,
    DNI_Cuentas CHAR(10) NOT NULL,
    FechaCreacion_Cuentas TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    IdTipoCuenta_Cuentas INT NOT NULL,
    CBU VARCHAR(16) NOT NULL UNIQUE,
    Saldo_Cuentas DECIMAL NOT NULL DEFAULT 10000.0,
    Estado_Cuentas BIT DEFAULT 1,
    
    CONSTRAINT PK_CUENTAS PRIMARY KEY(Nro_Cuentas),
	CONSTRAINT FK_CUENTAS_USUARIOS FOREIGN KEY (DNI_Cuentas)
		REFERENCES Usuarios(DNI_Usr),
	CONSTRAINT FK_CUENTAS_TIPOCUENTAS FOREIGN KEY (IdTipoCuenta_Cuentas)
		REFERENCES TipoCuentas(Id_TipoCuenta)
);

CREATE TABLE Prestamos(
	Id_Pr INT auto_increment NOT NULL,
    DNI_Pr CHAR(10) NOT NULL,
    NroCuentaDestino_Pr VARCHAR(5) NOT NULL,
    Autorizado_Pr BIT NOT NULL DEFAULT 0 , -- 1 AUTORIZADO, 0 NO AUTORIZADO
    FechaSolicitado_Pr TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ImpSolicitado_Pr DECIMAL NOT NULL,
    ImpResultante_Pr DECIMAL NOT NULL,
    PlazoMeses_Pr INT NOT NULL,
    ImpPagoAlMes_Pr DECIMAL NOT NULL,
    CantCuotas_Pr INT NOT NULL,
    
    CONSTRAINT PK_PRESTAMOS PRIMARY KEY(Id_Pr),
    CONSTRAINT FK_USUARIOS_PRESTAMOS FOREIGN KEY (DNI_Pr)
		REFERENCES Usuarios(DNI_Usr),
	CONSTRAINT FK_CUENTAS_PRESTAMOS FOREIGN KEY (NroCuentaDestino_Pr)
		REFERENCES Cuentas(Nro_Cuentas)
        
);

CREATE TABLE TiposMovimientos(
	Id_TiposMov INT auto_increment NOT NULL,
    Descripcion_TiposMov VARCHAR(30) NOT NULL,
	
    CONSTRAINT PK_TiposMovimientos PRIMARY KEY(Id_TiposMov)
);

CREATE TABLE Movimientos(
	Id_Mov INT auto_increment NOT NULL,
    NroCuenta_Mov VARCHAR(5) NOT NULL,
    IdTiposMov_Mov INT NOT NULL,
    Fecha_Mov TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Detalle_Mov VARCHAR(30) NOT NULL,
    Importe_Mov DECIMAL NOT NULL,
    
    CONSTRAINT PK_Movimientos PRIMARY KEY(Id_Mov),
    CONSTRAINT FK_MOVIMIENTOS_CUENTAS FOREIGN KEY (NroCuenta_Mov)
		REFERENCES Cuentas(Nro_Cuentas),
	CONSTRAINT FK_MOVIMIENTOS_TIPOS FOREIGN KEY (IdTiposMov_Mov)
		REFERENCES TiposMovimientos(Id_TiposMov)
);




