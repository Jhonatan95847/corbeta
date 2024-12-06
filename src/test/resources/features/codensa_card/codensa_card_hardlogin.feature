# language: es
@all
@codensaCard
@alkostoCardHardLogin
Característica: Medio de Pago - Crédito Fácil CODENSA con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @estable @tarjetaCodensaRegistradoExitosa @CodensaExitoso @tarjetaExitosa @tarjetaCodensaExitosa @CodensaNoSave
  Esquema del escenario: Compra con Tarjeta codensa exitosa Hard login
  Narrativa: El cliente registrado en codensa inicia sesion y realiza la busqueda de distintos tipos de productos
  seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
  mediante Crédito Fácil CODENSA con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      | Crédito Fácil CODENSA  | codensa    | OK   |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  CE      | Crédito Fácil CODENSA  | codensa    | OK   |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Crédito Fácil CODENSA  | codensa    | OK   |
      | registrado | cero_interes          | 3        | Envio gratis       |  registrada     |  RUT     | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | Crédito Fácil CODENSA  | codensa    | OK   |

      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Crédito Fácil CODENSA  | codensa    | OK   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Crédito Fácil CODENSA  | codensa    | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Crédito Fácil CODENSA  | codensa    | OK   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Crédito Fácil CODENSA  | codensa    | OK   |

    #______________________________________________________RECHAZADA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaCodensaRegistradoFallida @CodensaFallida @tarjetaCodensa @CodensaNoSave
  Esquema del escenario: Compra con Tarjeta codensa fallida Hard login
  Narrativa: El cliente registrado en codensa inicia sesion y realiza la busqueda de distintos tipos de productos
  seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
  mediante Crédito Fácil CODENSA con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | promocion_precio_fijo | 3        | Envio gratis       |  registrada     |  CC      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | kombo                 | 2        | Entrega hoy        |  registrada     |  CE      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | promocion_precio_fijo | 1        | Envio gratis       |  guardada       |  NIT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | kasado                | 1        | Entrega hoy        |  guardada       |  PAS     | Crédito Fácil CODENSA  | codensa    | FAILED   |


      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Crédito Fácil CODENSA  | codensa    | FAILED   |
