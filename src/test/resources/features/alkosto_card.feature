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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto  | alkosto    | exitoso   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto  | alkosto    | exitoso   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto  | alkosto    | exitoso   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto  | alkosto    | exitoso   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto  | alkosto    | exitoso   |


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
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto  | alkosto    | exitoso   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto  | alkosto    | exitoso   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto  | alkosto    | exitoso   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto  | alkosto    | exitoso   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto  | alkosto    | exitoso   |


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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |


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
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto guardada  | alkosto    | exitoso   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto guardada  | alkosto    | exitoso   |

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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | exitoso   |

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
      | nuevo      |      3   | Entrega hoy       | nuevo usuario |  NIT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | nuevo      |      2   | Recoge en tienda  | nuevo usuario |  CC      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | nuevo      |      2   | Envio gratis      | nuevo usuario |  RUT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | nuevo      |      2   | Entrega hoy       | nuevo usuario |  CE      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | nuevo      |      3   | Recoge en tienda  | nuevo usuario |  PAS     | Tarjeta Alkosto   | alkosto   | exitoso   |
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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Envio gratis      |  otros datos   |  RUT     | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | exitoso   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | exitoso   |

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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto  | alkosto    | fallido   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto  | alkosto    | fallido   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto  | alkosto    | fallido   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto  | alkosto    | fallido   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto  | alkosto    | fallido   |


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
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto  | alkosto    | fallido   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto  | alkosto    | fallido   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto  | alkosto    | fallido   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto  | alkosto    | fallido   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto  | alkosto    | fallido   |

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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | registrado |      2   | Recoge en tienda  |  otros datos   |  CE      | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | registrado |      2   | Envio gratis      |  guardada      |  PAS     | Tarjeta Alkosto guardada  | alkosto    | fallido   |


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
      | nuevo      |      3   | Entrega hoy       |  nuevo usuario |  NIT     | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CC      | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | nuevo      |      2   | Recoge en tienda  |  nuevo usuario |  CE      | Tarjeta Alkosto guardada  | alkosto    | fallido   |
      | nuevo      |      2   | Envio gratis      |  nuevo usuario |  PAS     | Tarjeta Alkosto guardada  | alkosto    | fallido   |

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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | fallido   |

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
      | nuevo      |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | nuevo      |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | fallido   |
      | nuevo      |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | nuevo      |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | fallido   |
      | nuevo      |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | fallido   |

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
      | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Recoge en tienda  |  guardada      |  CC      | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Envio gratis      |  registrada    |  RUT     | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Tarjeta Alkosto   | alkosto   | fallido   |
      | registrado |      3   | Recoge en tienda  |  registrada    |  PAS     | Tarjeta Alkosto   | alkosto   | fallido   |