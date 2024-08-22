# language: es
@all
@cashPayment
Característica: Medio de Pago - Efectivo


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Efectivo: Su Red | Consignación | Efecty
  #Resultado: pendiente | exitoso

  @cashPayment
  Esquema del escenario: Compra de productos con efectivo
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante efectivo
    Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
    Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
    Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
    Y realiza el pago mediante efectivo con "<efectivo>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | efectivo     | resultado |
      | registrado |    3     | Entrega hoy       | otros datos    |  NIT    | Su Red       | pendiente |
      | registrado |    3     | Entrega hoy       | guardada       |  NIT    | Consignación | pendiente |
      | registrado |    3     | Entrega hoy       | registrada     |  NIT    | Efecty       | pendiente |
      | nuevo      |    3     | Entrega hoy       | nuevo usuario  |  NIT    | Efecty       | pendiente |








