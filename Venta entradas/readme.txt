Consigna

La siguiente base de datos está pensada para almacenar la información necesaria para gestionar la venta automática de entradas para diferentes espectáculos desde múltiples puntos de venta, como pueden ser oficinas bancarias, terminales tipo Servicaixa, o las mismas taquillas de teatros u otros recintos.

 

ESPECTACULOS (COD_ESPECTACULO, NOMBRE, TIPO, FECHA_INICIAL,
FECHA_FINAL, INTERPRETE, COD_RECINTO)

PRECIOS_ESPECTACULOS (COD_ESPECTACULO, COD_RECINTO, ZONA,
PRECIO)

RECINTOS (COD_RECINTO, NOMBRE, DIRECCION, CIUDAD, TELEFONO,
HORARIO)

ZONAS_RECINTOS (COD_RECINTO, ZONA, CAPACIDAD)
ASIENTOS (COD_RECINTO, ZONA, FILA, NUMERO)

REPRESENTACIONES (COD_ESPECTACULO, FECHA, HORA)

ENTRADAS (COD_ESPECTACULO, FECHA, HORA, COD_RECINTO, FILA,
NUMERO, ZONA, DNI_CLIENTE)

ESPECTADORES (DNI_CLIENTE, NOMBRE, DIRECCION, TELEFONO, CIUDAD,
NTARJETA)