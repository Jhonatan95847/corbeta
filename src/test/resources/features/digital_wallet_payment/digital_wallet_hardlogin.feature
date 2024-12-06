# language: es
@all
@digitalWalletj @estable
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
  Esquema del escenario: Compra de productos con billetera digital daviplata exitosa hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera | resultado |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      | Daviplata | OK   |
      ##| registrado | llantas               | 1        | Entrega hoy        |  guardada       |  CE      | Daviplata | OK   |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Daviplata | OK   |
      | registrado | cero_interes          | 3        | Envio gratis       |  registrada     |  RUT     | Daviplata | OK   |
      ##| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | Daviplata | OK   |


      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | Daviplata | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Daviplata | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | Daviplata | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Daviplata | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | Daviplata | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoDaviplata @walletPENDING @walletHardLogin @digitalWallet
  Esquema del escenario:  Compra de productos con billetera digital daviplata pendiente hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera | resultado |
      | registrado | promocion_precio_fijo | 3        | Envio gratis       |  registrada     |  CC      | Daviplata | PENDING |
      | registrado | normal                | 2        | Entrega hoy        |  registrada     |  CE      | Daviplata | PENDING |
      | registrado | promocion_precio_fijo | 1        | Envio gratis       |  guardada       |  NIT     | Daviplata | PENDING |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Daviplata | PENDING |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  PAS     | Daviplata | PENDING |


      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Daviplata | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | Daviplata | PENDING   |
      ##| nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | Daviplata | PENDING   |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | Daviplata | PENDING   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Daviplata | PENDING   |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoDaviplata @walletPayFAILED @walletHardLogin @digitalWallet
  Esquema del escenario:  Compra de productos con billetera digital daviplata fallida hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Daviplata | FAILED |
      ##| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | Daviplata | FAILED |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | Daviplata | FAILED |
      | registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Daviplata | FAILED |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Daviplata | FAILED |


      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | Daviplata | FAILED   |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | Daviplata | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Daviplata | FAILED   |
      ##| nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | Daviplata | FAILED   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Daviplata | FAILED   |

    #================================================NEQUI============================================
  #******************************************************HARDLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________

  @walletOkRegistradoNequi @walletPayOk @walletHardLogin @digitalWallet
  Esquema del escenario:  Compra de productos con billetera digital nequi exitosa hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      ##| registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | Nequi       | OK   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      | Nequi       | OK   |
      ##| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | Nequi       | OK   |
      | registrado | normal                 | 3        | Entrega hoy        |  registrada     |  RUT     | Nequi       | OK   |
      | registrado | garantia_extendida    | 4        | Envio gratis       |  registrada     |  PAS     | Nequi       | OK   |


      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | Nequi       | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Nequi       | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | Nequi       | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Nequi       | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | Nequi       | OK   |
  #______________________________________________________PENDIENTE______________________________________________

  @walletPENDINGRegistradoNequi @walletPENDING @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital nequi pendiente hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id         | billetera   | resultado |
      | registrado | normal                | 3        | Entrega hoy        |  registrada     |  CC      | Nequi       | PENDING |
      | registrado | cero_interes          | 2        | Envio gratis       |  otros datos    |  CE      | Nequi       | PENDING |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  NIT     | Nequi       | PENDING |
      ##| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     | Nequi       | PENDING |
      | registrado | promocion_precio_fijo | 2        | Envio gratis       |  guardada       |  PAS     | Nequi       | PENDING |


      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Nequi       | PENDING |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | Nequi       | PENDING |
      ##| nuevo      | normal         | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | Nequi       | PENDING |
      | nuevo      | normal         | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | Nequi       | PENDING |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  PAS     | Nequi       | PENDING |

  #______________________________________________________FALLIDA______________________________________________

  @walletFAILEDRegistradoNequi @walletFAILED @walletHardLogin @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital nequi fallida hard login
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | billetera   | resultado |
      | registrado | normal                | 1        | Entrega hoy        |  guardada       |  CC      | Nequi       | FAILED |
      | registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Nequi       | FAILED |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     | Nequi       | FAILED |
      | registrado | cantidad_limitada     | 2        | Envio gratis       |  guardada       |  RUT     | Nequi       | FAILED |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  PAS     | Nequi       | FAILED |


      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  CC      | Nequi       | FAILED |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CE      | Nequi       | FAILED |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Nequi       | FAILED |
      ##| nuevo      | normal         | 1        | Entrega hoy        |  nuevo usuario  |  RUT     | Nequi       | FAILED |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Nequi       | FAILED |