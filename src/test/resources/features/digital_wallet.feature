# language: es
@all
@digitalWallet
Característica: Medio de Pago - billetera digital


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Billetera: Nequi | Daviplata |
  #Resultado: pendiente | exitoso

 #================================================DAVIPLATA============================================
 # ******************************************************HARDLOGIN*********************************************
 #______________________________________________________EXITOSA______________________________________________

  @walletOkRegistradoDaviplata @walletOk @walletHardLogin @walletDaviplata @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| OK        |
      | registrado |    3     | Envio gratis      | guardada       |  CC     |Daviplata| OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     |Daviplata| OK        |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| OK        |

  @walletOkNuevo @walletOkDaviplata @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoDaviplata @walletPENDING @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    |Daviplata| PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     |Daviplata| PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    |Daviplata| PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     |Daviplata| PENDING   |

  @walletPayPENDINGNuevoDaviplata @walletPayPENDING @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     |Daviplata| PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoDaviplata @walletPayFAILED @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     |Daviplata| FAILED    |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CE     |Daviplata| FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    |Daviplata| FAILED    |

  @walletPayFAILEDNuevoDaviplata @walletPayFAILED @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| FAILED    |
#******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletPayOkRegistradoSoftLoginDaviplata @walletPayOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    |Daviplata| OK        |
      | registrado |    3     | Entrega hoy       | guardada       |  CC     |Daviplata| OK        |
      | registrado |    3     | Envio gratis      | registrada     |  CE     |Daviplata| OK        |
      | registrado |    3     | Entrega hoy       | guardada       |  PAS    |Daviplata| OK        |

  @walletPayOkNuevoSoftLoginDaviplata @walletPayOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @walletPayPENDINGRegistradoSoftLoginDaviplata @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | registrada     |  NIT    |Daviplata| PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     |Daviplata| PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     |Daviplata| PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    |Daviplata| PENDING   |

  @walletPayPENDINGNuevoSoftLoginDaviplata @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoSoftLoginDaviplata @walletFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    |Daviplata| FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     |Daviplata| FAILED    |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     |Daviplata| FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    |Daviplata| FAILED    |

  @walletFAILEDNuevoSoftLoginDaviplata @walletFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     |Daviplata| FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    |Daviplata| FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| FAILED    |

    #================================================NEQUI============================================
  #******************************************************HARDLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletOkRegistradoNequi @walletPayOk @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | OK        |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Nequi   | OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | Nequi   | OK        |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | OK        |

    @walletOkNuevoNequi @walletPayOk @walletHardLogin @digitalWallet
    Esquema del escenario: Compra de productos con billetera digital
    Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoNequi @walletPENDING @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Nequi   | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | Nequi   | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | Nequi   | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Nequi   | PENDING   |

  @walletPayPENDINGNuevoNequi @walletPENDING @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  CE     | Nequi   | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoNequi @walletFAILED @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Nequi   | FAILED    |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CE     | Nequi   | FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    | Nequi   | FAILED    |

  @walletPayFAILEDNuevoNequi @walletPayFAILED @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | FAILED    |
#******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletOkRegistradoSoftLoginNequi @walletOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Nequi   | OK        |
      | registrado |    3     | Entrega hoy       | guardada       |  CC     | Nequi   | OK        |
      | registrado |    3     | Envio gratis      | registrada     |  CE     | Nequi   | OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  PAS    | Nequi   | OK        |

  @walletOkNuevoSoftLoginNequi @walletOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | OK        |

  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoSoftLoginNequi @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Envio gratis      | registrada     |  NIT    | Nequi   | PENDING   |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Nequi   | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     | Nequi   | PENDING   |
      | registrado |    3     | Entrega hoy       | guardada       |  PAS    | Nequi   | PENDING   |

  @walletPayPENDINGNuevoSoftLoginNequi @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | PENDING   |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | PENDING   |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | PENDING   |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletPayFAILEDRegistradoSoftLoginNequi @walletPayFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Nequi   | FAILED    |
      | registrado |    3     | Envio gratis      | guardada       |  CC     | Nequi   | FAILED    |
      | registrado |    3     | Envio gratis      | registrada     |  CE     | Nequi   | FAILED    |
      | registrado |    3     | Entrega hoy       | registrada     |  PAS    | Nequi   | FAILED    |

  @walletPayFAILEDNuevoSoftLoginNequi @walletPayFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | Nequi   | FAILED    |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | Nequi   | FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  RUT    | Nequi   | FAILED    |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  PAS    | Nequi   | FAILED    |

