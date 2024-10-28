USE master
GO

------------------------------------------------------------------------------------------------
---Determina si esta la Base de Datos en la biblioteca y la borra
if(Exists(select * FROM SysDataBases where name = 'ObligatorioWeb2021'))
Begin
     Drop Database ObligatorioWeb2021
END
Go


---Creo la Base de Datos----------------------------------------------------------------------
Create DATABASE ObligatorioWeb2021
GO


---Pongo en uso la Base de Datos--------------------------------------------------------------
Use ObligatorioWeb2021
Go


---Creo las tablas---------------------------------------------------------------------------
Create Table Categoria
(
  codigo_Interno varchar(3) NOT NULL
  Primary Key
  check(len (codigo_Interno) = 3),
  nombre varchar(20) NOT NULL,
  precio int NOT NULL check(precio > 0)
)
GO

Create Table AvisoClasificado
(
 numero_Interno int Identity(1,1) Primary Key,
 codigo_Interno varchar(3) Foreign Key References Categoria(codigo_Interno),
 fecha Datetime NOT NULL
)
GO

Create Table Telefono
(
 numero_Interno int NOT NULL Foreign Key REFERENCES AvisoClasificado(numero_Interno),
 telefono varchar(12) NOT NULL
 check(isnumeric(telefono) = 1)
 primary Key(numero_Interno, telefono)
)
GO

Create Table Comun
(
 numero_Interno int Primary KEY NOT NULL,
 palabras_claves varchar(50) NOT NULL,
 FOREIGN KEY (numero_Interno) REFERENCES AvisoClasificado(numero_Interno)
)
GO

Create Table Articulo
(
 codigo varchar(6) NOT NULL
 Primary Key
 check( len( codigo) = 6),
 precio int NOT NULL
 check(precio > 0),
 descripcion varchar(50) NOT NULL
)
GO


Create Table Destacado
(
 numero_Interno int Primary Key NOT NULL,
 codigo varchar(6) NOT NULL Foreign Key References Articulo(codigo),
 Foreign Key (numero_interno) REFERENCES AvisoClasificado(numero_Interno) 
)
Go



/* SP */

--Creo SP de Mantenimiento de Categoria
CREATE PROCEDURE BuscoCategoria @codigo_Interno varchar(3) AS
BEGIN
    select *
    From Categoria
    where codigo_Interno = @codigo_Interno
end
GO


CREATE PROCEDURE BajaCategoria @codigo_Interno varchar(3) AS
BEGIN 
         
     IF NOT Exists(Select * From Categoria where codigo_Interno = @codigo_Interno)
     BEGIN 
       return -1
     END
    
     IF Exists(Select * From AvisoClasificado where codigo_Interno = @codigo_Interno)
     BEGIN
        return -2
     END
        
          Delete From Categoria where codigo_Interno = @codigo_Interno 
          IF(@@ERROR = 0)
              RETURN 1
          else
             RETURN -3
END
GO 
   
   
   
--Creo SP de Modificacion Categoria
CREATE PROCEDURE ModificarCategoria @codigo_Interno varchar(3), @nombre varchar(50),@precio int AS
BEGIN
     IF(NOT(Exists( select * from Categoria where codigo_Interno = @codigo_Interno)))
         return -1
     else
     begin
         UPDATE Categoria set nombre = @nombre, precio = @precio 
         where codigo_Interno = @codigo_Interno
       IF(@@ERROR = 0)
         RETURN 1
         else
             RETURN -2
     end
END
GO


--Creo Sp de Alta Categoria
CREATE PROCEDURE AltaCategoria @codigo_Interno varchar(3), @nombre varchar(50), @precio int AS
BEGIN
     IF EXISTS(Select * FROM Categoria where codigo_Interno = @codigo_Interno)
        return -1
      
      Insert Categoria(codigo_Interno,nombre,precio) VALUES(@codigo_Interno,@nombre,@precio)
      IF(@@ERROR = 0)
          Return 1
      else
          Return -2
End
GO

       
--Creo SP para Buscar Articulo
CREATE PROCEDURE BuscoArticulo @codigo varchar(6) AS
BEGIN 
     Select *
     From Articulo
     Where codigo = @codigo
    
End
GO
       
       
--Creo SP para Agregar Articulo
CREATE PROCEDURE AgregarArticulo @codigo varchar(6),@precio int, @descripcion varchar(50) AS
BEGIN
     IF(Exists(Select * from Articulo where codigo = @codigo ))
         return -1
         
      Insert Articulo(codigo,precio, descripcion) VALUES (@codigo, @precio,@descripcion)
       if(@@Error = 0)
	     return 1
	  else
	    return -2
END
GO


--Creo SP para Agregar Aviso Comun
CREATE PROCEDURE AgregarComun @palabras_claves varchar(50),@codigo_Interno varchar(3), @fecha datetime AS
BEGIN
     DECLARE @numero_Interno int
      
     IF(Exists(Select * From Comun where numero_Interno = @numero_Interno))
        return -1
        
     IF(Exists(Select * From AvisoClasificado where numero_Interno = @numero_Interno))
        return -2 
     
      DECLARE @Error int
              
      BEGIN TRAN
       
      INSERT AvisoClasificado(codigo_Interno, fecha) VALUES (@codigo_Interno, @fecha)
      SET @Error=@@ERROR;
      SET @numero_Interno=@@IDENTITY
            
      
      INSERT Comun(numero_Interno, palabras_claves) VALUES (@numero_Interno, @palabras_claves)
      SET @Error=@@ERROR+@Error;
	  IF(@Error=0)
	  BEGIN
		  COMMIT TRAN;
		  RETURN @numero_Interno;
	  END
	  ELSE
	  BEGIN
		  ROLLBACK TRAN;
		  RETURN -3;
	  END	    
END
GO


--Creo SP para Agregar Aviso Destacado
CREATE PROCEDURE AgregarDestacado @codigo varchar(6),@codigo_Interno varchar(3),@fecha datetime AS 
BEGIN 
     DECLARE @numero_Interno int

     IF(Exists(select * from Destacado where numero_Interno = @numero_Interno))
         return -1
         
     IF(Exists(select * from AvisoClasificado where numero_Interno = @numero_Interno))
         return -2
         
     IF(Not(Exists(select * From Articulo where codigo = @codigo)))
        return -3
         
      DECLARE @Error int
              
      BEGIN TRAN
        
      INSERT AvisoClasificado(codigo_Interno,fecha) VALUES (@codigo_Interno, @fecha)
      SET @Error=@@ERROR;
      SET @numero_Interno=@@IDENTITY
     
      Insert Destacado(numero_Interno, codigo) VALUES (@numero_Interno, @codigo);
      SET @Error=@@ERROR+@Error;
	  
	  IF(@Error=0)
	  BEGIN
		  COMMIT TRAN;
		  RETURN @numero_Interno;
	  END
	  ELSE
	  BEGIN
		  ROLLBACK TRAN;
		  RETURN -4;
	  END	    
End
GO


CREATE PROCEDURE ListadoCategorias 
AS
BEGIN
     Select *
     From Categoria 
     ORDER BY nombre
END
GO     
     
CREATE PROCEDURE ListadoAvisosPorCategoria @codigo_Interno varchar(3) AS
BEGIN
    Select a.*
    From Categoria c Inner Join AvisoClasificado a ON c.codigo_Interno = a.codigo_Interno
    Where c.codigo_Interno = @codigo_Interno
    ORDER BY fecha
END
GO




CREATE PROCEDURE ListadoAvisosporArticulo @codigo varchar(6) AS
BEGIN 
     Select *
     From Destacado d Inner Join Articulo a ON d.codigo = a.codigo
     Inner join AvisoClasificado av ON av.numero_Interno = d.numero_Interno
     Where a.codigo = @codigo
     ORDER BY av.numero_Interno
END
GO


CREATE PROCEDURE ListadoAvisos
AS
BEGIN
     Select *
     From AvisoClasificado
END
GO 

CREATE PROCEDURE ListadoComun
AS
BEGIN
     Select *
     From Comun c Inner Join AvisoClasificado av ON c.numero_Interno = av.numero_Interno
END
GO


CREATE PROCEDURE ListadoDestacado
AS
BEGIN
     Select *
     From Destacado d Inner Join AvisoClasificado av ON d.numero_Interno = av.numero_Interno
END
GO


--Creo Sp de Agregar Telefono
CREATE PROCEDURE AgregarTelefono @numero_Interno int, @telefono varchar(12) AS
BEGIN
    
       IF(Exists(Select * From Telefono where numero_Interno = @numero_Interno AND telefono = @telefono))
        return -1
        
        Insert Telefono(numero_Interno,telefono) VALUES (@numero_Interno,@telefono)
         IF(@@ERROR = 0)
          Return 1
      else
          Return -2
End
GO


CREATE PROCEDURE ListadoTelefono @numero_Interno int AS
BEGIN
      select *
      from Telefono
      where numero_Interno = @numero_Interno
END
GO



--------------------------------------------------------------------------------------------------------------------------
--Datos de prueba

--Categoria
Insert Into Categoria(codigo_Interno, nombre, Precio) VALUES('VEH', 'Vehiculo', 25000)
Insert Into Categoria(codigo_Interno, nombre, Precio) VALUES('PRO', 'Propiedad', 80000)
Insert Into Categoria(codigo_Interno, nombre, Precio) VALUES('ELE', 'Electrodomestico', 15000)
Go

--AvisoClasificado
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('VEH', '01/04/2021')
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('VEH', '20/03/2021')
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('PRO', '15/04/2021')
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('PRO', '29/05/2021')
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('ELE', '21/08/2021')
Insert Into AvisoClasificado(codigo_Interno, fecha) VALUES('ELE', '26/09/2021')
GO

--Telefono
Insert Into Telefono(numero_Interno,telefono) VALUES (1,'098588071')
Insert Into Telefono(numero_Interno,telefono) VALUES (2,'092134567')
Insert Into Telefono(numero_Interno,telefono) VALUES (3,'098765432')
Insert Into Telefono(numero_Interno,telefono) VALUES (4,'094345678')
Insert Into Telefono(numero_Interno,telefono) VALUES (5,'097658923')
Insert Into Telefono(numero_Interno,telefono) VALUES (6,'093567891')
GO


--Comun
Insert Into Comun(numero_Interno,palabras_claves) VALUES (1,'Vehiculo')
Insert Into Comun(numero_Interno,palabras_claves) VALUES (2,'Propiedades')
Insert Into Comun(numero_Interno,palabras_claves) VALUES (3,'Electrodomestico')
GO

--Articulo
Insert Into Articulo(codigo,precio,descripcion) VALUES ('123456',25000, 'Auto 4 puertas Sedan')
Insert Into Articulo(codigo,precio,descripcion) VALUES ('456789',80000, 'Casa 2 cuartos con baño')
Insert Into Articulo(codigo,precio,descripcion) VALUES ('789101',15000, 'Television 32 pulgadas')
GO

--Destacado
Insert Into Destacado(numero_Interno,codigo) VALUES (4,'123456')
Insert Into Destacado(numero_Interno,codigo) VALUES (5,'456789')
Insert Into Destacado(numero_Interno,codigo) VALUES (6,'789101')
GO




