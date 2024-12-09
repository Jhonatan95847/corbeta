# language: es
@all
@CreditoCard
@CreditooCardSoftlogin
Característica: Medio de Pago - Tarjeta de Crédito con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @estable @tarjetaCreditoRegistradoExitosaSoftlogin @tarjetaExitosa @CreditoExitoso @tarjetaCreditoExitosa @CreditoNoSave
  Esquema del escenario: Compra con Tarjeta credito exitosa soft login
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
      | registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Tarjeta de Crédito  | diners     | OK   |
      ##| registrado | normal                | 3        | Entrega hoy        |  otros datos    |  CE      | Tarjeta de Crédito  | mastercard | OK   |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | Tarjeta de Crédito  | visa       | OK   |
      | registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Tarjeta de Crédito  | amex       | OK   |
      ##| registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta de Crédito  | diners     | OK   |


      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Tarjeta de Crédito  | mastercard | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Tarjeta de Crédito  | visa       | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Tarjeta de Crédito  | amex       | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  RUT     | Tarjeta de Crédito  | diners     | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Tarjeta de Crédito  | mastercard | OK   |

     #______________________________________________________RECHAZADA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @tarjetaCreditoRegistradoExitosaSoftlogin @CreditoExitosoSoftlogin @tarjetaCreditoRechazada @CreditoNoSave
  Esquema del escenario: Compra con Tarjeta credito fallida soft login
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
      | registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | Tarjeta de Crédito  | amex       | FAILED   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      | Tarjeta de Crédito  | diners     | FAILED   |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | Tarjeta de Crédito  | mastercard | FAILED   |
      | registrado | normal                | 3        | Entrega hoy        |  registrada     |  RUT     | Tarjeta de Crédito  | visa       | FAILED   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  PAS     | Tarjeta de Crédito  | amex       | FAILED   |



      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Tarjeta de Crédito  | diners     | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Tarjeta de Crédito  | mastercard | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta de Crédito  | visa       | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Tarjeta de Crédito  | amex       | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta de Crédito  | diners     | FAILED   |