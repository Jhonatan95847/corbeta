# language: es
@all
@alkostoCard
Característica: Medio de Pago - Tarjeta Alkosto


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************HARDLOGIN*********************************************
  @tarjetaAlkostoRegistradoExitosa @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |


  @tarjetaAlkostoNuevoExitosa @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta          | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |


  @tarjetaAlkostoRegistradoExitosaTokenisada @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                   | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto guardada  | alkosto    | OK   |


  @tarjetaAlkostoNuevoExitosaTokenisada @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                   | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto guardada  | alkosto    | OK   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto guardada  | alkosto    | OK   |

 #******************************************************SOFTLOGIN*********************************************
  @tarjetaAlkostoRegistradoSoftlogin @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta           | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | OK   |

  @tarjetaAlkostoNuevoSoftlogin @tarjetaAlkosto @exitoso
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion     | tipo_id  | tarjeta           | franquicia| resultado |
      | nuevo      |      3   | Entrega hoy       | nuevo usuario |  NIT     | Tarjeta Alkosto   | alkosto   | OK   |
      | nuevo      |      2   | Recoge en tienda  | nuevo usuario |  CC      | Tarjeta Alkosto   | alkosto   | OK   |
      | nuevo      |      2   | Envio gratis      | nuevo usuario |  RUT     | Tarjeta Alkosto   | alkosto   | OK   |
      | nuevo      |      2   | Entrega hoy       | nuevo usuario |  CE      | Tarjeta Alkosto   | alkosto   | OK   |
      | nuevo      |      3   | Recoge en tienda  | nuevo usuario |  PAS     | Tarjeta Alkosto   | alkosto   | OK   |
  @tarjetaAlkostoRegistradoSoftloginTokenisada @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta           | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | OK   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | OK   |

    #______________________________________________________RECHAZADAS______________________________________________
    #******************************************************HARDLOGIN*********************************************

  @tarjetaAlkostoRegistradoFallido @fallido @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |


  @tarjetaAlkostoNuevofallido @fallido @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta          | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |

  @tarjetaAlkostoRegistradofallidoTokenisada @fallido @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                   | franquicia | resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |


  @tarjetaAlkostoNuevoFallidoTokenisada @fallido @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                   | franquicia | resultado |
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto guardada  | alkosto    | FAILED   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto guardada  | alkosto    | FAILED   |

  #******************************************************SOFTLOGIN*********************************************
  @tarjetaAlkostoRegistradoSoftloginFallido @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta           | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | FAILED   |

  @tarjetaAlkostoNuevoSoftloginFallido @tarjetaAlkosto @exitoso
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta           | franquicia| resultado |
      | nuevo      |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | nuevo      |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | nuevo      |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | nuevo      |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | nuevo      |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | FAILED   |

  @tarjetaAlkostoRegistradoSoftloginFallidoTokenisada @exitoso @tarjetaAlkosto
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta           | franquicia| resultado |
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | FAILED   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | FAILED   |