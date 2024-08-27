# language: es
@all
@cashPayment
Característica: Medio de Pago - PSE


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso

  @psePayment
  Esquema del escenario: Compra de productos con PSE
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante PSE
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante PSE cuya transacción es "<resultado>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | PENDING   |
      | registrado |    3     | Entrega hoy       | guardada       |  NIT    | OK        |
      | registrado |    3     | Entrega hoy       | registrada     |  NIT    | FAILED    |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  NIT    | PENDING   |