# language: es
@all
@creditCard
Característica: Medio de Pago - Tarjeta Credito


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront


   ####################################### Nueva Implementacion ############################################
  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaCreditoRegistradoExitosa @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | visa       | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito | amex       | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | diners     | OK   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta de Crédito | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta de Crédito | visa       | OK   |


  @tarjetaCreditoNuevoExitosa @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito | diners     | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito | mastercard | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito | visa       | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito | amex       | OK   |


  @tarjetaCreditoRegistradoExitosaTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Recoge en tienda  |  otros datos   |  NIT     | Tarjeta de Crédito | diners     | OK   |
      | registrado |      2   | Entrega hoy       |  guardada      |  CC      | Tarjeta de Crédito | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | visa       | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  CE      | Tarjeta de Crédito | amex       | OK   |
      | registrado |      2   | Entrega hoy       |  guardada      |  PAS     | Tarjeta de Crédito | diners     | OK   |


  @tarjetaCreditoNuevoExitosaTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito | mastercard | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito | visa       | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito | diners     | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito | mastercard | OK   |

 #******************************************************SOFTLOGIN*********************************************
  @tarjetaCreditoRegistradoSoftlogin @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | visa       | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  CC      | Tarjeta de Crédito | amex       | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta de Crédito | diners     | OK   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito | mastercard | OK   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta de Crédito | visa       | OK   |

  @tarjetaCreditoNuevoSoftlogin @tarjetaCredito @exitoso
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion     | tipo_id  | tarjeta            | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       | nuevo usuario |  NIT     | Tarjeta de Crédito | amex       | OK   |
      | nuevo      |      2   | Recoge en tienda  | nuevo usuario |  CC      | Tarjeta de Crédito | diners     | OK   |
      | nuevo      |      2   | Envio gratis      | nuevo usuario |  RUT     | Tarjeta de Crédito | mastercard | OK   |
      | nuevo      |      2   | Entrega hoy       | nuevo usuario |  CE      | Tarjeta de Crédito | visa       | OK   |
      | nuevo      |      3   | Recoge en tienda  | nuevo usuario |  PAS     | Tarjeta de Crédito | amex       | OK   |

  @tarjetaCreditoRegistradoSoftloginTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | diners     | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito | mastercard | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta de Crédito | visa       | OK   |
      | registrado |      2   | Recoge en tienda  |  registrada    |  CE      | Tarjeta de Crédito | amex       | OK   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta de Crédito | diners     | OK   |

    #______________________________________________________RECHAZADAS______________________________________________
    #******************************************************HARDLOGIN*********************************************

  @tarjetaCreditoRegistradoFallido @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Envio gratis      |  otros datos   |  NIT     | Tarjeta de Crédito | mastercard | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito | visa       | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta de Crédito | diners     | FAILED   |
      | registrado |      2   | Entrega hoy       |  guardada      |  PAS     | Tarjeta de Crédito | mastercard | FAILED   |


  @tarjetaCreditoNuevofallido @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito | visa       | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito | amex       | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito | diners     | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito | mastercard | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito | visa       | FAILED   |

  @tarjetaCreditoRegistradofallidoTokenisada @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | amex       | FAILED   |
      | registrado |      2   | Entrega hoy       |  guardada      |  CC      | Tarjeta de Crédito | diners     | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | mastercard | FAILED   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta de Crédito | visa       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  PAS     | Tarjeta de Crédito | amex       | FAILED   |


  @tarjetaCreditoNuevoFallidoTokenisada @fallido @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta de Crédito | diners     | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta de Crédito | mastercard | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta de Crédito | visa       | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta de Crédito | amex       | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta de Crédito | diners     | FAILED   |

  #******************************************************SOFTLOGIN*********************************************
  @tarjetaCreditoRegistradoSoftloginFallido @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Envio gratis      |  otros datos   |  NIT     | Tarjeta de Crédito | mastercard | FAILED   |
      | registrado |      2   | Envio gratis      |  guardada      |  CC      | Tarjeta de Crédito | visa       | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  RUT     | Tarjeta de Crédito | amex       | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito | diners     | FAILED   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta de Crédito | mastercard | FAILED   |

  @tarjetaCreditoNuevoSoftloginFallido @tarjetaCredito @exitoso
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | visa       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  registrada    |  RUT     | Tarjeta de Crédito | diners     | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito | mastercard | FAILED   |
      | registrado |      3   | Envio gratis      |  registrada    |  PAS     | Tarjeta de Crédito | visa       | FAILED   |

  @tarjetaCreditoRegistradoSoftloginFallidoTokenisada @exitoso @tarjetaCredito
  Esquema del escenario: Compra con T Credito
  Narrativa: El cliente registrado en Credito
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta            | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta de Crédito | amex       | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta de Crédito | diners     | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta de Crédito | mastercard | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta de Crédito | visa       | FAILED   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta de Crédito | amex       | FAILED   |
