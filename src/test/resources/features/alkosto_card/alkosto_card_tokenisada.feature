# language: es
@all
@alkostoCard
@alkostoCardTojenisada
Característica: Medio de Pago - Tarjeta Alkosto con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________

  @tarjetaAlkostoRegistradoExitosaTokenisada  @tarjetaAlkostoExitosa @alkostoNoSave
  Esquema del escenario: Compra con Tarjeta Alkosto guardada exitosa hard login
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
      | registrado | kasado                | 3        | Entrega hoy        |  registrada     |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | cero_interes          | 2        | Envio gratis       |  otros datos    |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | promocion_precio_fijo | 2        | Envio gratis       |  guardada       |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |

    #______________________________________________________FALLIDA______________________________________________

  @tarjetaAlkostoRegistradoExitosaTokenisada @alkostoExitosoTokenisada @tarjetaAlkostoRechazada @alkostoNoSave
  Esquema del escenario: Compra con Tarjeta Alkosto guardada fallida hard login
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
      | registrado | kasado_dos            | 1        | Entrega hoy        |  guardada       |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | pines                 | 2        | Recoge en tienda   |  nuevo usuario  |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | cantidad_limitada     | 2        | Envio gratis       |  guardada       |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      | registrado | promociones           | 1        | Entrega hoy        |  registrada     |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |