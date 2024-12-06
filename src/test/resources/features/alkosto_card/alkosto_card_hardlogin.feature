# language: es
@all
@alkostoCard
@alkostoCardHardLogin
Característica: Medio de Pago - Tarjeta Alkosto con forma de logueo hard login con distintos metodos de envio y medios de pago


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @estable @tarjetaAlkostoRegistradoExitosa @tarjetaExitosa @alkostoExitoso @alkostoHardlogin
  Esquema del escenario: Compra con Tarjeta Alkosto exitosa hard login
  Narrativa: El cliente registrado en Alkosto inicia sesion y realiza la busqueda de distintos tipos de productos
             seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
             mediante tarjeta alkosto con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | normal                | 2        | Recoge en tienda   | nuevo usuario   |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | normal                | 1        | Envio gratis       |  otros datos    |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | normal                | 3        | Envio gratis       |  registrada     |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | normal                | 1        | Entrega hoy        |  registrada     |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal                | 2        | Envio gratis       |  nuevo usuario  |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal                | 2        | Envio gratis       |  nuevo usuario  |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal                | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |

    #______________________________________________________RECHAZADA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaAlkostoRegistradoFallida @alkostoFallida @alkostoHardlogin
  Esquema del escenario: Compra con Tarjeta Alkosto fallida hard login
  Narrativa: El cliente registrado en Alkosto inicia sesion y realiza la busqueda de distintos tipos de productos
  seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
  mediante tarjeta alkosto con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | promocion_precio_fijo | 3        | Envio gratis       |  registrada     |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | kombo                 | 2        | Entrega hoy        |  registrada     |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | promocion_precio_fijo | 1        | Envio gratis       |  guardada       |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | kasado                | 1        | Entrega hoy        |  guardada       |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |

