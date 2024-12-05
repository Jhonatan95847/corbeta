# language: es
@all
@BancolombiaCompleto @estable
Característica: Medio de Pago - Boton Bancolombia


  Antecedentes:
    Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


  #Resultado: pendiente | exitoso


  @BancolombiaSoftLogin @BancolombiaSoftLogin
  Esquema del escenario: Compra de productos con Boton Bancolombia Soft Login
  Narrativa: El cliente registrado en Alkosto
    Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
    Y selecciona el método de envío "<metodo_envio>"
    Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
    Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
    Y realiza el pago mediante boton Bancolombia
    Entonces debería observar la notificación de compra "<resultado>"
    Ejemplos:
      | cliente    | tipo_producto         | cantidad | metodo_envio       | direccion_envio | tipo_id     | resultado |
      | registrado | normal                | 2        | Envio gratis       |  otros datos    |  CC      | OK   |
      ##| registrado | normal                | 1        | Recoge en tienda   |  nuevo usuario  |  CE      | OK   |
      | registrado | normal                | 2        | Envio gratis       |  otros datos    |  NIT     | OK   |
      | registrado | normal                | 3        | Envio gratis       |  registrada     |  RUT     | OK   |
      ##| registrado | normal                | 1        | Entrega hoy        |  guardada       |  PAS     | OK   |

      | nuevo      | promocion_porcentaje  | 2        | Envio gratis       |  nuevo usuario  |  CC      | OK   |
      | nuevo      | promocion_porcentaje  | 1        | Envio gratis       |  nuevo usuario  |  CE      | OK   |
      #| nuevo      | promocion_porcentaje  | 3        | Entrega hoy        |  nuevo usuario  |  NIT     | OK   |
      | nuevo      | promocion_porcentaje  | 1        | Recoge en tienda   |  nuevo usuario  |  RUT     | OK   |
      | nuevo      | promocion_porcentaje  | 2        | Envio gratis       |  nuevo usuario  |  PAS     | OK   |