# language: es
@all
@DebitoCard
@DebitoCardHardLogin
Característica: Medio de Pago - Tarjeta de Crédito o Debito con CVV con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaDebitoRegistradoExitosa @DebitoExitoso @tarjetaDebitoExitosa @DebitoNoSave
  Esquema del escenario: Compra con Tarjeta debito exitosa hard login
  Narrativa: El cliente registrado en Alkosto inicia sesion y realiza la busqueda de distintos tipos de productos
  seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
  mediante Tarjeta de Crédito o Debito con CVV con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  CE      | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |
      | registrado | normal                | 3        | Envio gratis       |  registrada     |  RUT     | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |
      #| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |

      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |
      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |

    #______________________________________________________RECHAZADA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaDebitoRegistradoFallida @DebitoFallida @tarjetaDebito @DebitoNoSave
  Esquema del escenario: Compra con Tarjeta debito fallida hard login
  Narrativa: El cliente registrado en Alkosto inicia sesion y realiza la busqueda de distintos tipos de productos
  seleccionando diferentes metodosde envio, con distintas direcciones y tipos de ID, y realiza el pago
  mediante Tarjeta de Crédito o Debito con CVV con transaccion exitosa
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | promocion_precio_fijo | 3        | Envio gratis       |  registrada     |  CC      | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |
      | registrado | kombo                 | 2        | Entrega hoy        |  registrada     |  CE      | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |
      | registrado | promocion_precio_fijo | 1        | Envio gratis       |  guardada       |  NIT     | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |
      | registrado | kasado                | 1        | Entrega hoy        |  guardada       |  PAS     | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |

      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |