# language: es
@all
@cashPayment
Característica: Medio de Pago - Tarjeta Alkosto


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Billetera: Nequi | Daviplata |
  #Resultado: pendiente | exitoso

  @digitalWallet
  Esquema del escenario: Compra de productos con efectivo
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante efectivo
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante billetera digital "<billetera>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | billetera  | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Nequi      | exitoso   |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Daviplata  | exitoso   |