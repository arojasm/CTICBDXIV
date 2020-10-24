create table m_distribuidor
(
CodigoDistribuidor varchar2(30),
RazonSocialDistribuidor varchar2(60)
)

select * from m_distribuidor

drop table f_factura
CREATE TABLE f_factura 
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
Objetivo number(16,2)
)


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

insert into fact_factura 
select 
a.*,
case when objetivo =0 then 0 
    else venta/objetivo 
    end kpi_venta
from 
f_factura a
commit;

select * from 
fact_factura