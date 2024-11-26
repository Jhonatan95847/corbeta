# language: es
@all
@BancolombiaCompleto
Característica: Medio de Pago - Boton Bancolombia


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso


  @BancolombiaSoftLogin @exitoso @Bancolombia
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id     | resultado |
      | registrado | garantia_extendida    | 2        | Envio gratis       |  otros datos    |  CC      | OK   |
      | registrado | llantas               | 1        | Entrega hoy        |  guardada       |  CE      | OK   |
      | registrado | kasado_dos            | 2        | Recoge en tienda   |  nuevo usuario  |  NIT     | OK   |
      | registrado | cero_interes          | 3        | Envio gratis       |  registrada     |  RUT     | OK   |
      | registrado | promocion_porcentaje  | 1        | Entrega hoy        |  otros datos    |  PAS     | OK   |

  @BancolombiaSoftLoginNuevo @exitoso @Bancolombia
  Esquema del escenario: Compra con T Alkosto
  Narrativa: El cliente registrado en Alkosto
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id  | resultado |
      | nuevo      | normal                | 2        | Entrega hoy        |  nuevo usuario  |  CC      | OK   |
      | nuevo      | normal                | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | OK   |
      | nuevo      | normal                | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | OK   |
      | nuevo      | normal                | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | OK   |
      | nuevo      | normal                | 2        | Envio gratis       |  nuevo usuario  |  PAS     | OK   |