# language: es
@all
@alkostoCard
@alkostoCardSoftlogin
Característica: Medio de Pago - Tarjeta Alkosto con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

      @tarjetaAlkostoRegistradoExitosaSoftlogin @alkostoExitoso @alkostoExitosoSoftlogin @tarjetaAlkostoExitosa @alkostoNoSave
      Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
      Narrativa:  Como cliente registrado en Alkosto
                  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
                  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
        Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
        Y selecciona el método de envío "<metodo_envio>"
        Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
        Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
        Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
        Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
          | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
          | registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
          #| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
          | registrado | kasado                | 2        | Entrega hoy        |  guardada       |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
          | registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
          | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |

  @tarjetaAlkostoNuevooExitosaSoftlogin @alkostoExitoso @alkostoExitosoSoftlogin @tarjetaAlkostoExitosa @alkostoNoSave
  Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Tarjeta Alkosto  | alkosto    | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Tarjeta Alkosto  | alkosto    | OK   |
      #| nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  RUT     | Tarjeta Alkosto  | alkosto    | OK   |
      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Tarjeta Alkosto  | alkosto    | OK   |

     #______________________________________________________RECHAZADA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @tarjetaAlkostoRegistradoExitosaSoftlogin @alkostoExitosoSoftlogin @tarjetaAlkostoRechazada @alkostoNoSave
  Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | kombo                 | 3        | Entrega hoy        |  registrada     |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | registrado | garantia_extendida    | 4        | Envio gratis       |  registrada     |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |


  @tarjetaAlkostoNuevooExitosaSoftlogin @alkostoExitosoSoftlogin @tarjetaAlkostoRechazada @alkostoNoSave
  Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
  Narrativa:  Como cliente registrado en Alkosto
  Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
  Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | tarjeta          | franquicia | resultado |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Tarjeta Alkosto  | alkosto    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Tarjeta Alkosto  | alkosto    | FAILED   |