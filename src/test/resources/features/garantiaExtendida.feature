# language: es
@all
@garantiaExtendida
Característica: Medio de Pago - PSE


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso

  #******************************************************HARDLOGIN*********************************************
#______________________________________________________EXITOSA______________________________________________


  @psePayOkRegistradoGarantia @garantia
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    1     | Recoge en tienda  | nuevo usuario  |  NIT    | OK        |
      | registrado |    1     | Envio gratis      | guardada       |  CC     | OK        |
      | registrado |    1     | Entrega hoy       | registrada     |  CE     | OK        |
      | registrado |    1     | Recoge en tienda  | nuevo usuario  |  PAS    | OK        |
      | registrado |    1     | Recoge en tienda  | nuevo usuario  |  PAS    | OK        |

  @tarjetaAlkostoRegistradoExitosaGarantia @garantia
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |

  @BancolombiaButtonGarantia @garantia
  Esquema del escenario: Compra de productos con Boton Bancolombia
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante Boton Bancolombia
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  CC     | OK        |
      | registrado |    2     | Envio gratis      | guardada       |  NIT    | OK        |
      | registrado |    1     | Entrega hoy       | registrada     |  CE     | OK        |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    | OK        |
      | registrado |    2     | Recoge en tienda  | nuevo usuario  |  RUT    | OK        |


  @psePayPENDINGRegistradoGarantia @garantia
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |efectivo | resultado |
      | registrado |    3     | Envio gratis      | otros datos    |  NIT    | Su Red  | PENDING   |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  CC     | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | registrada     |  RUT    | Su Red  | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Su Red  | PENDING   |

  @tarjetaCodensaRegistradoExitosaGarantia @garantia
  Esquema del escenario: Compra con T Codensa
  Narrativa: El cliente registrado en Codensa
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |

  @tarjetaCreditoRegistradoExitosaGarantia @garantia
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      1   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | visa       | OK   |
      | registrado |      1   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito | amex       | OK   |
      | registrado |      1   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | diners     | OK   |
      | registrado |      1   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito | mastercard | OK   |
      | registrado |      1   | Envio gratis      |  guardada      |  PAS     | Tarjeta de Crédito | visa       | OK   |

  @tarjetaDebitoRegistradoExitosaGarantia @garantia
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |

  @walletOkRegistradoDaviplataGarantia @garantia
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Y el cliente "<cliente>" busca el producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando quiere ir a pagar y selecciona garantia extendida
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id |billetera| resultado |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  NIT    |Daviplata| OK        |
      | registrado |    3     | Envio gratis      | guardada       |  CC     |Daviplata| OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  CE     |Daviplata| OK        |
      | registrado |    3     | Recoge en tienda  | nuevo usuario  |  PAS    |Daviplata| OK        |


