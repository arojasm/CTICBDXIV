nombre: arturo rojas
fecha : 27/09
objetivo : carga de tabla clientes minorista

CREATE TABLA T_CLIENTE(
NOMBRE VARCHAR2(10)
DNI CHAR(8)
)
tablespace tmp;


-- creacion de la base de datos
create table m_distribuidor(
codigodistribuidor varchar2(50),
razonsocialdistribuidor varchar2(100)
)


select * from m_distribuidor


CREATE TABLE fact_factura 
(
Factura varchar2(50),
Fecha varchar2(50),
CodigoPais varchar2(50),
CodigoDistribuidor varchar2(50),
CodigoOperador varchar2(50),
CodigoModelo varchar2(50),
Cantidad varchar2(50),
Precio number(16,2),
Venta number(16,2),
Objetivo number(16,2),
KPI_VENTA number(16,2)
)




exit;

