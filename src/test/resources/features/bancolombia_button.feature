# language: es
@all
@BancolombiaCompleto
Característica: Medio de Pago - Boton Bancolombia


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso

  @BancolombiaButtonregistrado @Bancolombia
  Esquema del escenario: Compra de productos con Boton Bancolombia
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante Boton Bancolombia
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
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

  @BancolombiaButtonNew @Bancolombia
  Esquema del escenario: Compra de productos con Boton Bancolombia
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante Boton Bancolombia
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    1     | Envio gratis      | nuevo usuario  |  CC     | OK        |
      | nuevo      |    3     | Recoge en tienda  | nuevo usuario  |  RUT    | OK        |
      | nuevo      |    2     | Entrega hoy       | nuevo usuario  |  CE     | OK        |
      | nuevo      |    1     | Envio gratis      | nuevo usuario  |  NIT    | OK        |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  PAS    | OK        |

  @BancolombiaSoftLogin @exitoso @Bancolombia
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    2     | Envio gratis      | guardada       |  CC     | OK        |
      | registrado |    1     | Envio gratis      | registrada     |  RUT    | OK        |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | OK        |
      | registrado |    2     | Envio gratis      | guardada       |  NIT    | OK        |
      | registrado |    1     | Entrega hoy       | registrada     |  PAS    | OK        |

  @BancolombiaSoftLoginNuevo @exitoso @Bancolombia
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  CC     | OK        |
      | nuevo      |    2     | Recoge en tienda  | nuevo usuario  |  RUT    | OK        |
      | nuevo      |    1     | Entrega hoy       | nuevo usuario  |  CE     | OK        |
      | nuevo      |    3     | Envio gratis      | nuevo usuario  |  NIT    | OK        |
      | nuevo      |    2     | Entrega hoy       | nuevo usuario  |  PAS    | OK        |