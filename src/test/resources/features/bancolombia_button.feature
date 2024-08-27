# language: es
@all
@cashPayment
Característica: Medio de Pago - Boton Bancolombia


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso

  @cashPayment
  Esquema del escenario: Compra de productos con Boton Bancolombia
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante Boton Bancolombia
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona la cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | pendiente |
      | registrado |    3     | Entrega hoy       | guardada       |  NIT    | pendiente |
      | registrado |    3     | Entrega hoy       | registrada     |  NIT    | pendiente |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  NIT    | pendiente |