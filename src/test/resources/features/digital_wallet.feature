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
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>" cuyo resultado es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | billetera  | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Daviplata  | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  CC     | Daviplata  | OK        |
      | registrado |    3     | Entrega hoy       | otros datos    |  CE     | Daviplata  | FAILED    |
      | registrado |    3     | Entrega hoy       | otros datos    |  PAS    | Nequi      | PENDING   |
      | registrado |    3     | Entrega hoy       | otros datos    |  RUT    | Nequi      | OK        |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Nequi      | FAILED    |