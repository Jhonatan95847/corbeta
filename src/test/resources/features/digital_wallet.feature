# language: es
@all
@cashPayment
Característica: Medio de Pago - billetera digital


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Billetera: Nequi | Daviplata |
  #Resultado: pendiente | exitoso

  @digitalWallet
  Esquema del escenario: Compra de productos con billetera digital
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante billetera digital
    Dado que un cliente busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Cuando inicia sesion y desea realizar la compra como un cliente "<cliente>"
    #Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    #Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio      | direccion      | tipo_id | billetera  | resultado |
      | registrado |    3     | Entrega hoy      | otros datos    |  NIT    | Daviplata  | PENDING   |
      | registrado |    3     | Entrega hoy      | guardada       |  CC     | Daviplata  | OK        |
      | registrado |    3     | Entrega hoy      | registrada     |  CE     | Daviplata  | FAILED    |
      | nuevo      |    1     | Entrega hoy      | nuevo usuario  |  PAS    | Daviplata  | PENDING   |
      | registrado |    3     | Entrega hoy      | otros datos    |  RUT    | Nequi      | OK        |
      | registrado |    1     | Entrega hoy      | guardada       |  NIT    | Nequi      | FAILED    |
      | registrado |    3     | Entrega hoy      | registrada     |  CE     | Nequi      | FAILED    |
      | nuevo      |    1     | Entrega hoy      | nuevo usuario  |  PAS    | Nequi      | PENDING   |
      #| registrado |    3     | Recoge en tienda | otros datos    |  NIT    | Daviplata  | PENDING   |
      #| registrado |    3     | Recoge en tienda | guardada       |  CC     | Daviplata  | OK        |
      #| registrado |    3     | Recoge en tienda | registrada     |  CE     | Daviplata  | FAILED    |
      #| nuevo      |    1     | Recoge en tienda | nuevo usuario  |  PAS    | Daviplata  | PENDING   |
      #| registrado |    3     | Recoge en tienda | otros datos    |  RUT    | Nequi      | OK        |
      #| registrado |    1     | Recoge en tienda | guardada       |  NIT    | Nequi      | FAILED    |
      #| registrado |    3     | Recoge en tienda | registrada     |  CE     | Nequi      | FAILED    |
      #| nuevo      |    1     | Recoge en tienda | nuevo usuario  |  PAS    | Nequi      | PENDING   |
      | registrado |    3     | Envio gratis     | otros datos    |  NIT    | Daviplata  | PENDING   |
      | registrado |    3     | Envio gratis     | guardada       |  CC     | Daviplata  | OK        |
      | registrado |    3     | Envio gratis     | registrada     |  CE     | Daviplata  | FAILED    |
      | nuevo      |    1     | Envio gratis     | nuevo usuario  |  PAS    | Daviplata  | PENDING   |
      | registrado |    3     | Envio gratis     | otros datos    |  RUT    | Nequi      | OK        |
      | registrado |    1     | Envio gratis     | guardada       |  NIT    | Nequi      | FAILED    |
      | registrado |    3     | Envio gratis     | registrada     |  CE     | Nequi      | FAILED    |
      | nuevo      |    1     | Envio gratis     | nuevo usuario  |  PAS    | Nequi      | PENDING   |
