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

  @psePayOkRegistrado @psePayOk @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | OK        |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | OK        |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | OK        |

  @psePayOkNuevo @psePayOk @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @psePayPENDINGRegistrado @psePayPENDING @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | PENDING   |

  @psePayPENDINGNuevo @psePayPENDING @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @psePayFAILEDRegistrado @psePayFAILED @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | FAILED    |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CE     | FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    | FAILED    |

  @psePayFAILEDNuevo @psePayFAILED @pseHardLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | FAILED    |
#******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @psePayOkRegistradoSoftLogin @psePayOk @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | OK        |
      | registrado |    3     | Entrega hoy       | guardada       |  CC     | OK        |
      | registrado |    3     | Envio gratis      | registrada     |  CE     | OK        |
      | registrado |    3     | Envio gratis      | registrada     |  PAS    | OK        |

  @psePayOkNuevoSoftLogin @psePayOk @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @psePayPENDINGRegistradoSoftLogin @psePayPENDING @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | PENDING   |
      | registrado |    3     | Entrega hoy       | guardada       |  PAS    | PENDING   |

  @psePayPENDINGNuevoSoftLogin @psePayPENDING @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @psePayFAILEDRegistradoSoftLogin @psePayFAILED @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | FAILED    |
      | registrado |    3     | Envio gratis      | registrada     |  CE     | FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    | FAILED    |

  @psePayFAILEDNuevoSoftLogin @psePayFAILED @pseSoftLogin @psePay
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | FAILED    |