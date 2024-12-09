# language: es
@all
@DebitoCard
@DebitoCardSoftlogin
Característica: Medio de Pago - Tarjeta de Crédito o Debito con CVV con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @estable @tarjetaDebitoRegistradoExitosaSoftlogin @DebitoExitoso @tarjetaDebitoExitosa @DebitoNoSave
  Esquema del escenario: Compra con Tarjeta debito exitosa soft login
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      #| registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |
      #| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |
      #| registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |
      #| registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |
      #| registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |

          #| nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |
      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |

     #______________________________________________________RECHAZADA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @tarjetaDebitoRegistradoExitosaSoftlogin @DebitoExitosoSoftlogin @tarjetaDebitoRechazada @DebitoNoSave
  Esquema del escenario: Compra con Tarjeta debito fallida soft login
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |
      | registrado | normal                | 3        | Entrega hoy        |  registrada     |  RUT     | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  PAS     | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |



      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |