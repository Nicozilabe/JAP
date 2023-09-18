Consigna 

Disponemos de la siguiente Base de Datos para gestionar la información de los pubs de una determinada ciudad.

PUB
(
#COD PUB
LICENCIA FISCAL
DOMICILIO
FECHA APERTURA
HORARIO
COD LOCALIDAD
)
EXISTENCIAS
(
#COD ARTICULO
CANTIDAD
PRECIO
COD PUB
)
Titular
(
#DNI TITULAR
NOMBRE
DOMICILIO
COD PUB
)
LOCALIDAD
(
#COD LOCALIDAD
NOMBRE
)
Empleado
(
#DNI EMPLEADO
NOMBRE
DOMICILIO
)
PUB EMPLEADO
(
#COD PUB
#DNI EMPLEADO
#FUNCION
)

Todos los valores son de tipo carácter excepto los campos FECHA_APERTURA. (fecha) , CANTIDAD, PRECIO y COD_LOCALIDAD (numéricos).
Los únicos campos que no son obligatorios son los campos DOMICILIO.
Los valores del campo horario sólo pueden ser HOR1, HOR2 y HOR3.
No es posible dar de alta EXISTENCIAS a precio 0.
El campo función de la tabla PUB_EMPLEADO sólo puede tener los valores CAMARERO, SEGURIDAD, LIMPIEZA.
Se ha de mantener la integridad referencial entre las tablas.
Las claves primarias vienen marcadas con el símbolo #.