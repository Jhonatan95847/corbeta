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
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Su Red  | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Su Red  | PENDING   |

  @cashPENDINGNuevo @cashPayPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Su Red  | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Su Red  | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Su Red  | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     | Su Red  | PENDING   |


	  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistradoSoftLogin @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo | resultado |
      | registrado |    3     | Envio gratis      | registrada     |  NIT    | Su Red  | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    | Su Red  | PENDING   |

  @cashPayPENDINGNuevoSoftLogin @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo | resultado |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  NIT    | Su Red  | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Su Red  | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Su Red  | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  PAS    | Su Red  | PENDING   |

	  #================================================Efecty============================================
 # ******************************************************HARDLOGIN*********************************************

	  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistrado @cashPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Efecty | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | Efecty | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | Efecty | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Efecty | PENDING   |

  @cashPENDINGNuevo @cashPENDING @cashHardLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Efecty | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Efecty | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Efecty | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     | Efecty | PENDING   |


	  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistradoSoftLogin @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo| resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Efecty | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Efecty | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | Efecty | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  PAS    | Efecty | PENDING   |

  @cashPayPENDINGNuevoSoftLoginEfecty @cashPENDING @cashSoftLogin @cashPay @pruebaja
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Efecty | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Efecty | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Efecty | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Efecty | PENDING   |

	  #================================================Consignación============================================
 # ******************************************************HARDLOGIN*********************************************

	  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistrado @cashPENDING @cashHardLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | efectivo     | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Consignación | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | Consignación | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | Consignación | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Consignación | PENDING   |

  @cashPENDINGNuevo @cashPENDING @cashHardLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | efectivo    | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Consignación | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Consignación | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Consignación | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     | Consignación | PENDING   |


	  #******************************************************SOFTLOGIN*********************************************
  #______________________________________________________PENDIENTE______________________________________________

  @cashPENDINGRegistradoSoftLogin @cashyPENDING @cashSoftLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | efectivo     | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Consignación | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Consignación | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | Consignación | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  PAS    | Consignación | PENDING   |

  @cashPayPENDINGNuevoSoftLogin @cashPayPENDING @cashSoftLogin @cashPay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | efectivo     | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Consignación | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Consignación | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Consignación | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Consignación | PENDING   |



