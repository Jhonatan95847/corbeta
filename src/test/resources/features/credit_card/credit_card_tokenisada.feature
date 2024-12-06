# language: es
@all
@CreditoCard
@CreditoCardTojenisada
Característica: Medio de Pago - Tarjeta de Crédito con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________

  @tarjetaCreditoRegistradoExitosaTokenisada @CreditoExitosoSoftlogin @tarjetaCreditoExitosa @CreditoNoSave
  Esquema del escenario: Compra con Tarjeta credito guardada exitosa hard login
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el usuario busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | kasado                | 3        | Entrega hoy        |  registrada     |  CC      | Tarjeta de Crédito  | visa       | OK   |
      | registrado | cero_interes          | 2        | Envio gratis       |  otros datos    |  CE      | Tarjeta de Crédito  | amex       | OK   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  NIT     | Tarjeta de Crédito  | diners     | OK   |
      | registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     | Tarjeta de Crédito  | mastercard | OK   |
      | registrado | promocion_precio_fijo | 2        | Envio gratis       |  guardada       |  PAS     | Tarjeta de Crédito  | visa       | OK   |

    #______________________________________________________FALLIDA______________________________________________

  @tarjetaCreditoRegistradoExitosaTokenisada @CreditoExitosoTokenisada @tarjetaCreditoRechazada @CreditoNoSave
  Esquema del escenario: Compra con Tarjeta credito guardada fallida hard login
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que un cliente "<cliente>" inicia sesión en ecomerce
    Cuando el usuario busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta guardada "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | kasado_dos            | 1        | Entrega hoy        |  guardada       |  CC      | Tarjeta de Crédito  | mastercard | FAILED   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Tarjeta de Crédito  | visa       | FAILED   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     | Tarjeta de Crédito  | amex       | FAILED   |
      | registrado | cantidad_limitada     | 2        | Envio gratis       |  guardada       |  RUT     | Tarjeta de Crédito  | diners     | FAILED   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  PAS     | Tarjeta de Crédito  | mastercard | FAILED   |