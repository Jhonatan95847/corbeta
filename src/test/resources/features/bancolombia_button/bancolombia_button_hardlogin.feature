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
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id     | resultado |
      | registrado | preventa              | 2        | Recoge en tienda   |  nuevo usuario  |  CC         | OK   |
      | registrado | cero_interes          | 3        | Envio gratis       |  registrada     |  CE         | OK   |
      | registrado | corbeta               | 2        | Envio gratis       |  otros datos    |  NIT        | OK   |
      | registrado | llantas               | 1        | Entrega hoy        |  guardada       |  RUT        | OK   |
      | registrado | corbeta               | 2        | Envio gratis       |  otros datos    |  PAS        | OK   |

  @BancolombiaButtonNew @Bancolombia
  Esquema del escenario: Compra de productos con Boton Bancolombia
  Narrativa: El cliente registrado en Alkosto desea realizar una compra mediante Boton Bancolombia
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | resultado |
      | nuevo      | normal         | 1        | Envio gratis       |  nuevo usuario  |  CC      | OK   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  NIT     | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | OK   |
      | nuevo      | normal         | 3        | Recoge en tienda   |  nuevo usuario  |  PAS     | OK   |

