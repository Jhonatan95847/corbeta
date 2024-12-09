# language: es
@all
@CodensaCard
@CodensaCardSoftlogin
Característica: Medio de Pago - Crédito Fácil CODENSA con forma de logueo hard login


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################

  #______________________________________________________EXITOSA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @estable @tarjetaCodensaRegistradoExitosaSoftlogin @tarjetaExitosa @CodensaExitoso @tarjetaCodensaExitosa @CodensaNoSave
  Esquema del escenario: Compra con Tarjeta codensa exitosa soft login
  Narrativa:  Como cliente registrado en codensa
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
      | registrado | promocion_porcentaje  | 1        | Envio gratis       |  guardada       |  CC      | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| registrado | instalaciones         | 3        | Entrega hoy        |  otros datos    |  CE      | Crédito Fácil CODENSA  | codensa    | OK   |
      | registrado | normal                | 2        | Entrega hoy        |  guardada       |  NIT     | Crédito Fácil CODENSA  | codensa    | OK   |
      | registrado | preventa              | 1        | Envio gratis       |  otros datos    |  RUT     | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| registrado | normal                | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Crédito Fácil CODENSA  | codensa    | OK   |

      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Crédito Fácil CODENSA  | codensa    | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CE      | Crédito Fácil CODENSA  | codensa    | OK   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  NIT     | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  RUT     | Crédito Fácil CODENSA  | codensa    | OK   |
      ##| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  PAS     | Crédito Fácil CODENSA  | codensa    | OK   |

     #______________________________________________________RECHAZADA______________________________________________
  #******************************************************SOFTLOGIN*********************************************

  @tarjetaCodensaRegistradoExitosaSoftlogin @CodensaExitosoSoftlogin @tarjetaCodensaRechazada @CodensaNoSave
  Esquema del escenario: Compra con Tarjeta codensa fallida Soft login
  Narrativa:  Como cliente registrado en codensa
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
      #| registrado | promociones           | 2        | Entrega hoy        |  otros datos    |  CC      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | cantidad_limitada     | 3        | Envio gratis       |  guardada       |  CE      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      #| registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  NIT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | normal                | 3        | Entrega hoy        |  registrada     |  RUT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | registrado | garantia_extendida    | 1        | Envio gratis       |  registrada     |  PAS     | Crédito Fácil CODENSA  | codensa    | FAILED   |


      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CE      | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  RUT     | Crédito Fácil CODENSA  | codensa    | FAILED   |
      | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  PAS     | Crédito Fácil CODENSA  | codensa    | FAILED   |