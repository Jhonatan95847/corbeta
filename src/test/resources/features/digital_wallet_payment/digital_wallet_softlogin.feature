# language: es
@all
@digitalWallet
Característica: Medio de Pago - billetera digital


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Billetera: Nequi | Daviplata |
  #Resultado: pendiente | exitoso

  #******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletPayOkRegistradoSoftLoginDaviplata @walletPayOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      |Daviplata | OK   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      |Daviplata | OK   |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     |Daviplata | OK   |
      | registrado | kombo                 | 3        | Entrega hoy        |  registrada     |  RUT     |Daviplata | OK   |
      | registrado | garantia_extendida    | 4        | Envio gratis       |  registrada     |  PAS     |Daviplata | OK   |

  @walletPayOkNuevoSoftLoginDaviplata @walletPayOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | Daviplata | OK   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Daviplata | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | Daviplata | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Daviplata | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | Daviplata | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @walletPayPENDINGRegistradoSoftLoginDaviplata @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | kasado                | 3        | Entrega hoy        |  registrada     |  CC      |Daviplata | PENDING |
      | registrado | cero_interes          | 2        | Envio gratis       |  otros datos    |  CE      |Daviplata | PENDING |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  NIT     |Daviplata | PENDING |
      | registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     |Daviplata | PENDING |
      | registrado | promocion_precio_fijo | 2        | Envio gratis       |  guardada       |  PAS     |Daviplata | PENDING |

  @walletPayPENDINGNuevoSoftLoginDaviplata @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Daviplata | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | Daviplata | PENDING   |
      | nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | Daviplata | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | Daviplata | PENDING   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Daviplata | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoSoftLoginDaviplata @walletFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | kasado_dos            | 1        | Entrega hoy        |  guardada       |  CC      |Daviplata | FAILED |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      |Daviplata | FAILED |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     |Daviplata | FAILED |
      | registrado | cantidad_limitada     | 2        | Envio gratis       |  guardada       |  RUT     |Daviplata | FAILED |
      | registrado | corbeta               | 2        | Envio gratis       |  otros datos    |  PAS     |Daviplata | FAILED |

  @walletFAILEDNuevoSoftLoginDaviplata @walletFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | Daviplata | FAILED   |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | Daviplata | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Daviplata | FAILED   |
      | nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | Daviplata | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Daviplata | FAILED   |


#******************************************************SOFTLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletOkRegistradoSoftLoginNequi @walletOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Nequi | OK   |
      | registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Nequi | OK   |
      | registrado | kasado                | 2        | Entrega hoy        |  guardada       |  NIT     | Nequi | OK   |
      | registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | Nequi | OK   |
      | registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Nequi | OK   |

  @walletOkNuevoSoftLoginNequi @walletOk @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | Nequi | OK   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Nequi | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | Nequi | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Nequi | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | Nequi | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoSoftLoginNequi @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | kasado                | 1        | Entrega hoy        |  guardada       |  PAS     | Nequi | PENDING |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Nequi | PENDING |
      | registrado | promocion_precio_fijo | 1        | Envio gratis       |  guardada       |  NIT     | Nequi | PENDING |
      | registrado | kombo                 | 2        | Entrega hoy        |  registrada     |  CE      | Nequi | PENDING |
      | registrado | promocion_precio_fijo | 3        | Envio gratis       |  registrada     |  CC      | Nequi | PENDING |

  @walletPayPENDINGNuevoSoftLoginNequi @walletPayPENDING @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Nequi | PENDING |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | Nequi | PENDING |
      | nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | Nequi | PENDING |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | Nequi | PENDING |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Nequi | PENDING |
  #______________________________________________________FALLIDA______________________________________________

  @walletPayFAILEDRegistradoSoftLoginNequi @walletPayFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | Nequi | FAILED |
      | registrado | cero_interes          | 3        | Envio gratis       |  registrada     |  RUT     | Nequi | FAILED |
      | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Nequi | FAILED |
      | registrado | llantas               | 1        | Entrega hoy        |  guardada       |  CE      | Nequi | FAILED |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      | Nequi | FAILED |

  @walletPayFAILEDNuevoSoftLoginNequi @walletPayFAILED @walletSoftLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | Nequi | FAILED |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | Nequi | FAILED |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Nequi | FAILED |
      | nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | Nequi | FAILED |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Nequi | FAILED |
