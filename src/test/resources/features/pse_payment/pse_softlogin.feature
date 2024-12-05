# language: es
@all
@psePaymentComplete
Característica: Medio de Pago - PSE


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #Resultado: pendiente | exitoso


#******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @estable @psePayOkRegistradoSoftLogin @psePayOk @pseSoftLogin @psePay
Esquema del escenario: Compra de productos con PSE
Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
Y selecciona el método de envío "<metodo_envio>"
Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
Y realiza el pago mediante PSE cuya transacción es "<resultado>"
Entonces debería observar la notificación de compra "<resultado>"
Ejemplos:
| cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id   | resultado |
##| registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | OK   |
| registrado | normal                | 3        | Envio gratis       |  guardada       |  CE      | OK   |
##| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | OK   |
| registrado | normal                | 3        | Entrega hoy        |  registrada     |  RUT     | OK   |
| registrado | normal                | 4        | Envio gratis       |  registrada     |  PAS     | OK   |


| nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | OK   |
##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | OK   |
| nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | OK   |
| nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | OK   |
| nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @estable @psePayPENDINGRegistradoSoftLogin @psePayPENDING @pseSoftLogin @psePay
Esquema del escenario: Compra de productos con PSE
Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
Y selecciona el método de envío "<metodo_envio>"
Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
Y realiza el pago mediante PSE cuya transacción es "<resultado>"
Entonces debería observar la notificación de compra "<resultado>"
Ejemplos:
| cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id   | resultado |
| registrado | normal                | 1        | Entrega hoy        |  registrada     |  CC      | PENDING |
| registrado | normal                | 2        | Envio gratis       |  otros datos    |  CE      | PENDING |
| registrado | normal                | 1        | Envio gratis       |  registrada     |  NIT     | PENDING |
##| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     | PENDING |
| registrado | normal                | 2        | Envio gratis       |  guardada       |  PAS     | PENDING |


##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | PENDING |
| nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | PENDING |
##| nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | PENDING |
| nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | PENDING |
| nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | PENDING |
  #______________________________________________________FALLIDA______________________________________________

  @estable @psePayFAILEDRegistradoSoftLogin @psePayFAILED @pseSoftLogin @psePay
Esquema del escenario: Compra de productos con PSE
Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
Y selecciona el método de envío "<metodo_envio>"
Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
Y realiza el pago mediante PSE cuya transacción es "<resultado>"
Entonces debería observar la notificación de compra "<resultado>"
Ejemplos:
| cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id   | resultado |
##| registrado | kasado_dos            | 1        | Entrega hoy        |  guardada       |  CC      | FAILED |
##| registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | FAILED |
##| registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     | FAILED |
| registrado | normal                | 2        | Envio gratis       |  guardada       |  RUT     | FAILED |
| registrado | normal                | 1        | Entrega hoy        |  registrada     |  PAS     | FAILED |


| nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | FAILED |
| nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | FAILED |
| nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | FAILED |
##| nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | FAILED |
##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | FAILED |