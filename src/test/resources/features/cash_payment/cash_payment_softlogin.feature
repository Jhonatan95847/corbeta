# language: es
@all
@cashPaymentComplete @estable
Característica: Medio de Pago - Efectivo



  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Efectivo: Su Red | Consignación | Efecty
  #Resultado: pendiente | exitoso


  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE SURED______________________________________________

 @cashPENDINGRegistradoSoftLogin @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | registrado | normal         | 2        | Entrega hoy        |  guardada       |  CC      |Su Red| PENDING |
      | registrado | normal         | 2        | Envio gratis       |  registrada     |  CE      |Su Red| PENDING |
      | registrado | normal         | 2        | Entrega hoy        |  guardada       |  NIT     |Su Red| PENDING |
      #| registrado | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     |Su Red| PENDING |
      | registrado | normal         | 2        | Envio gratis       |  registrada     |  PAS     |Su Red| PENDING |


      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Su Red     | PENDING   |
      ##| nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Su Red     | PENDING   |



	  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE EFECTY______________________________________________

  @cashPENDINGRegistradoSoftLogin @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      ##| registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  CC      |Efecty| PENDING |
      | registrado | normal                | 2        | Entrega hoy        |  registrada    |  NIT     |Efecty| PENDING |
      | registrado | normal                | 2        | Envio gratis       |  registrada     |  RUT     |Efecty| PENDING |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  PAS     |Efecty| PENDING |
      | registrado | normal                | 2        | Envio gratis       |  otros datos    |  CE      |Efecty| PENDING |



      ##| nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Efecty     | PENDING   |
      ##| nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Efecty     | PENDING   |


	  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE CONSIGNACION______________________________________________

  @cashPENDINGRegistradoSoftLogin @cashyPENDING @cashSoftLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | registrado | normal         | 2        | Entrega hoy        |  guardada       |  CC      |Consignación| PENDING |
      | registrado | normal         | 2        | Entrega hoy        |  registrada     |  CE      |Consignación| PENDING |
      | registrado | normal         | 2        | Envio gratis       |  otros datos    |  NIT     |Consignación| PENDING |
      | registrado | normal         | 2        | Envio gratis       |  guardada       |  RUT     |Consignación| PENDING |
      ##| registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     |Consignación| PENDING |


      ##| nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Consignación | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Consignación | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Consignación | PENDING   |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Consignación | PENDING   |
      ##| nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Consignación | PENDING   |