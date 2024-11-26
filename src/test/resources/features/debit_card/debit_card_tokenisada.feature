# language: es
@all
@DebitoCard
@DebitoCardTojenisada
Característica: Medio de Pago - Tarjeta de Crédito o Debito con CVV con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________

  @tarjetaDebitoRegistradoExitosaTokenisada @DebitoExitosoSoftlogin @tarjetaDebitoExitosa @DebitoNoSave
  Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
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
      | registrado | kasado                | 3        | Entrega hoy        |  registrada     |  CC      | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |
      | registrado | cero_interes          | 2        | Envio gratis       |  otros datos    |  CE      | Tarjeta de Crédito o Debito con CVV  | mastercard | OK   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  NIT     | Tarjeta de Crédito o Debito con CVV  | visa       | OK   |
      | registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     | Tarjeta de Crédito o Debito con CVV  | amex       | OK   |
      | registrado | promocion_precio_fijo | 2        | Envio gratis       |  guardada       |  PAS     | Tarjeta de Crédito o Debito con CVV  | diners     | OK   |

    #______________________________________________________FALLIDA______________________________________________

  @tarjetaDebitoRegistradoExitosaTokenisada @DebitoExitosoTokenisada @tarjetaDebitoRechazada @DebitoNoSave
  Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
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
      | registrado | kasado_dos            | 1        | Entrega hoy        |  guardada       |  CC      | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Tarjeta de Crédito o Debito con CVV  | mastercard | FAILED   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     | Tarjeta de Crédito o Debito con CVV  | visa       | FAILED   |
      | registrado | cantidad_limitada     | 2        | Envio gratis       |  guardada       |  RUT     | Tarjeta de Crédito o Debito con CVV  | amex       | FAILED   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  PAS     | Tarjeta de Crédito o Debito con CVV  | diners     | FAILED   |