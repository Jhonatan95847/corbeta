# language: es
@all
@psePaymentComplete
Característica: Medio de Pago - PSE


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso

  #******************************************************HARDLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @estable @psePayOkRegistrado @psePayOk @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con pse exitosa hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | resultado |
      | registrado | normal                | 2        | Envio gratis       |  otros datos    |  CC      | OK   |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  CE      | OK   |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | OK   |
      | registrado | normal                | 3        | Envio gratis       |  registrada     |  RUT     | OK   |
      ##| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | OK   |


      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @estable @psePayPENDINGRegistrado @psePayPENDING @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con pse pendiente hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id   | resultado |
      | registrado | normal                | 3        | Envio gratis       |  registrada     |  CC      | PENDING |
      | registrado | normal                | 2        | Entrega hoy        |  registrada     |  CE      | PENDING |
      | registrado | normal                | 1        | Envio gratis       |  guardada       |  NIT     | PENDING |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | PENDING |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  PAS     | PENDING |


      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | PENDING   |
      ##| nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | PENDING   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | PENDING   |
  #______________________________________________________FALLIDA______________________________________________

  @estable  @psePayFAILEDRegistrado @psePayFAILED @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con pse fallida hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id   | resultado |
      | registrado | normal                | 1        | Envio gratis       |  guardada       |  CC      | FAILED |
      ##| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | FAILED |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | FAILED |
      | registrado | normal                | 1        | Envio gratis       |  otros datos    |  RUT     | FAILED |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | FAILED |


      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | FAILED   |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | FAILED   |
      ##| nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | FAILED   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | FAILED   |