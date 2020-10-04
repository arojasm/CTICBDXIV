OPTIONS (SKIP=1)
LOAD DATA
INFILE 'Distribuidor.csv'
TRUNCATE PRESERVE BLANKS
INTO TABLE m_distribuidor
fields terminated by ','
trailing nullcols
(
codigodistribuidor,
razonsocialdistribuidor
)
