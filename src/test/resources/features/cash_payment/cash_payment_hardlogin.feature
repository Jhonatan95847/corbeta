# language: es
@all
@cashPaymentComplete
Característica: Medio de Pago - Efectivo



  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Efectivo: Su Red | Consignación | Efecty
  #Resultado: pendiente | exitoso

  #========================================================Sured============================================
 # ******************************************************HARDLOGIN*********************************************
 # ______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistrado @cashPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      |Su Red| PENDING |
      | registrado | instalaciones         | 2        | Entrega hoy        |  otros datos    |  CE      |Su Red| PENDING |
      | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     |Su Red| PENDING |
      | registrado | kombo                 | 2        | Entrega hoy        |  registrada     |  RUT     |Su Red| PENDING |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  registrada     |  PAS     |Su Red| PENDING |

  @cashPENDINGNuevo @cashPayPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Su Red     | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Su Red     | PENDING   |

     #================================================Efecty============================================
 # ******************************************************HARDLOGIN*********************************************

	  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistrado @cashPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | registrado | promocion_porcentaje  | 2        | Envio gratis       |  guardada       |  CC      |Efecty| PENDING |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      |Efecty| PENDING |
      | registrado | kasado                | 2        | Entrega hoy        |  guardada       |  NIT     |Efecty| PENDING |
      | registrado | preventa              | 2        | Envio gratis       |  otros datos    |  RUT     |Efecty| PENDING |
      | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     |Efecty| PENDING |

  @cashPENDINGNuevo @cashPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  RUT     | Efecty     | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Efecty     | PENDING   |

    #================================================Consignación============================================
 # ******************************************************HARDLOGIN*********************************************

	  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistrado @cashPENDING @cashHardLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | registrado | preventa              | 2        | Recoge en tienda   |  nuevo usuario  |  CC      |Consignación| PENDING |
      | registrado | llantas               | 2        | Entrega hoy        |  guardada       |  CE      |Consignación| PENDING |
      | registrado | promociones           | 2        | Entrega hoy        |  registrada     |  NIT     |Consignación| PENDING |
      | registrado | preventa              | 2        | Envio gratis       |  otros datos    |  RUT     |Consignación| PENDING |
      | registrado | promociones           | 2        | Entrega hoy        |  registrada     |  PAS     |Consignación| PENDING |

  @cashPENDINGNuevo @cashPENDING @cashHardLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Consignación | PENDING   |
      | nuevo | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Consignación | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  NIT     | Consignación | PENDING   |
      | nuevo | normal         | 2        | Entrega hoy        |  nuevo usuario  |  RUT     | Consignación | PENDING   |
      | nuevo | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Consignación | PENDING   |