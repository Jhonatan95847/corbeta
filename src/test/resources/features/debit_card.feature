# language: es
@all
@debitCard
Característica: Medio de Pago - Tarjeta Debito


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront




  ####################################### Nueva Implementacion ############################################
  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaDebitoRegistradoExitosa @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
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


  @tarjetaDebitoNuevoExitosa @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | amex       | OK   |


  @tarjetaDebitoRegistradoExitosaTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Recoge en tienda  |  nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | registrado |      2   | Entrega hoy       |  guardada      |  CC      | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  CE      | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | registrado |      2   | Entrega hoy       |  guardada      |  PAS     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |


  @tarjetaDebitoNuevoExitosaTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |

 #******************************************************SOFTLOGIN*********************************************
  @tarjetaDebitoRegistradoSoftlogin @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  CC      | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | registrado |      3   | Recoge en tienda  |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |

  @tarjetaDebitoNuevoSoftlogin @tarjetaCredito @exitoso
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion     | tipo_id  | tarjeta                             | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       | nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  | nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | nuevo      |      2   | Envio gratis      | nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | nuevo      |      2   | Entrega hoy       | nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | nuevo      |      3   | Recoge en tienda  | nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | amex       | OK   |

  @tarjetaDebitoRegistradoSoftloginTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito o Debito con CVV | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta de Crédito o Debito con CVV | visa       | OK   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | amex       | OK   |
      | registrado |      3   | Recoge en tienda  |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | diners     | OK   |

    #______________________________________________________RECHAZADAS______________________________________________
    #******************************************************HARDLOGIN*********************************************

  @tarjetaDebitoRegistradoFallido @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Envio gratis      |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | registrado |      2   | Entrega hoy       |  guardada      |  PAS     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |


  @tarjetaDebitoNuevofallido @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |

  @tarjetaDebitoRegistradofallidoTokenisada @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | registrado |      2   | Entrega hoy       |  guardada      |  CC      | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |


  @tarjetaDebitoNuevoFallidoTokenisada @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |

  #******************************************************SOFTLOGIN*********************************************
  @tarjetaDebitoRegistradoSoftloginFallido @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Envio gratis      |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | registrado |      2   | Envio gratis      |  guardada      |  CC      | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | registrado |      3   | Recoge en tienda  |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |

  @tarjetaDebitoNuevoSoftloginFallido @tarjetaCredito @exitoso
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  RUT     | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | registrado |      3   | Envio gratis      |  registrada    |  PAS     | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |

  @tarjetaDebitoRegistradoSoftloginFallidoTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Debito
  Narrativa: El cliente registrado en Debito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                             | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito o Debito con CVV | diners     | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito o Debito con CVV | mastercard | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito o Debito con CVV | visa       | FAILED   |
      | registrado |      3   | Recoge en tienda  |  nuevo usuario |  PAS     | Tarjeta de Crédito o Debito con CVV | amex       | FAILED   |
