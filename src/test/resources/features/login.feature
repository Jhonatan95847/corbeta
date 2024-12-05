# language: es
@all
@alkostoCard
Característica: Medio de Pago - Tarjeta Alkosto


    Antecedentes:
        Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


    #CLIENTE: registrado | nuevo
    #CANTIDAD: 1 - 10
    #METODOENVIO: Envio gratis | Recoge en tienda | Entrega hoy
    #DIRECCION: registrada | otros datos | nuevo usuario | guardada
    #TIPO_ID: cc | ce | nit | rut | pasaporte
    #TARJETA: alkosto | codensa | debito | credito
    #FRANQUICIA: visa | mastercad | diners | amex
    #RESULTADO: exitoso | rechazada


    @refactor
    Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
        Narrativa:  Como cliente registrado en Alkosto
                    Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
                    Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
        Dado que un cliente "<cliente>" inicia sesión en ecomerce
        Cuando el cliente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
        Y selecciona el método de envío "<metodo_envio>"
        Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
        Y realiza el pago mediante efectivo con "<efectivo>"
        Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
            | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
            | registrado | normal       | 2        | Envio gratis       |  otros datos    |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Envio gratis       |  registrada     |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Envio gratis       |  guardada       |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Entrega hoy        |  otros datos    |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            #| registrado | normal         | 2        | Entrega hoy        |  registrada     |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Entrega hoy        |  guardada       |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |
            #| nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Su Red     | PENDING   |
            #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            #| nuevo      | preventa       | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |

    @refactorTokenisada
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
            | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
            | registrado | normal         | 2        | Envio gratis       |  otros datos    |  CC      | Su Red     | PENDING   |
            | registrado | normal         | 2        | Envio gratis       |  registrada     |  CC      | Su Red     | PENDING   |
            | registrado | normal         | 2        | Envio gratis       |  guardada       |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Entrega hoy        |  otros datos    |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            | registrado | normal         | 2        | Entrega hoy        |  registrada     |  CC      | Su Red     | PENDING   |
            | registrado | normal         | 2        | Entrega hoy        |  guardada       |  CC      | Su Red     | PENDING   |
            | registrado | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |
            | nuevo      | normal         | 2        | Envio gratis       |  nuevo usuario  |  CC      | Su Red     | PENDING   |
            #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            | nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |



    @refactorSoft
    Esquema del escenario: Compra exitosa en Alkosto con métodos variados.
    Narrativa:  Como cliente registrado en Alkosto
    Quiero realizar compras seleccionando productos, métodos de envío y formas de pago
    Para recibir mis productos correctamente y disfrutar de una experiencia de compra eficiente.
        Dado que el usuario inicialmente busca un producto "<tipo_producto>" y selecciona "<cantidad>" unidades
        Y selecciona el método de envío "<metodo_envio>"
        Cuando inicia sesion en la pagina de alkosto como un cliente "<cliente>"
        Y desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion_envio>"
        Y realiza el pago mediante efectivo con "<efectivo>"
        Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
            | cliente    | tipo_producto  | cantidad | metodo_envio       | direccion_envio | tipo_id  | efectivo   | resultado |
            | registrado | preventa       | 2        | Envio gratis       |  otros datos    |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Envio gratis       |  registrada     |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Envio gratis       |  guardada       |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Entrega hoy        |  otros datos    |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            #| registrado | normal         | 2        | Entrega hoy        |  registrada     |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Entrega hoy        |  guardada       |  CC      | Su Red     | PENDING   |
            #| registrado | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |  falla recoger en tienda soft login por ambiente
            | nuevo      | preventa       | 2        | Envio gratis       |  nuevo usuario  |  CC      | Su Red     | PENDING   |
            #| nuevo      | normal         | 2        | Entrega hoy        |  nuevo usuario  |  CC      | Su Red     | PENDING   |  falla entrega hoy otros datos por ambiente
            #| nuevo      | normal         | 2        | Recoge en tienda   |  nuevo usuario  |  CC      | Su Red     | PENDING   |

