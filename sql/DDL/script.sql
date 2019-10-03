USE master;

IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE [name] = "FbdEjemplo")
BEGIN
PRINT N "Lo sentimos, la base de datos no existe";

CREATE DATABASE FbdEjemplo
ON PRIMARY
(
  NAME = "FbdEjemplo",
  FILENAME = "/fbd/fundamentos/FbdEjemplo.mdf" ,
  SIZE = 10MB,
  MAXSIZE = UNLIMITED,
  FILEGROWTH = 50%
)
LOG ON
(
  NAME = "FbdEjemplo_log",
  FILENAME = "/fbd/fundamentos/FbdEjemplo_log.ldf" ,
  SIZE = 2MB,
  MAXSIZE = 100MB,
  FILEGROWTH = 2MB
);
PRINT N "Base de datos creada correctamente";
END;
ELSE
PRINT N "La base de datos que ya existe";
GO
