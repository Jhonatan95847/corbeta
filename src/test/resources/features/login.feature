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

    @alkostocardcodensaPrueba
    Esquema del escenario: Compra con T Alkosto
    Narrativa: El cliente registrado en Alkosto
        Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
        Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
        Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
        Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
        Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
            | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id  | tarjeta                            | franquicia| resultado |
            | registrado |      1   | Entrega hoy       |  registrada    |  NIT     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      3   | Entrega hoy       |  otros datos   |  NIT     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      2   | Entrega hoy       |  guardada      |  NIT     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      1   | Entrega hoy       |  registrada    |  CC      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      1   | Entrega hoy       |  otros datos   |  CC      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      3   | Entrega hoy       |  guardada      |  CC      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      2   | Entrega hoy       |  registrada    |  CE      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      1   | Entrega hoy       |  otros datos   |  CE      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      3   | Entrega hoy       |  guardada      |  CE      | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      2   | Entrega hoy       |  registrada    |  PAS     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      2   | Entrega hoy       |  otros datos   |  PAS     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      3   | Entrega hoy       |  guardada      |  PAS     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      1   | Entrega hoy       |  registrada    |  RUT     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      3   | Entrega hoy       |  otros datos   |  RUT     | Crédito Fácil CODENSA              | codensa   | exitoso   |
            | registrado |      1   | Entrega hoy       |  guardada      |  RUT     | Crédito Fácil CODENSA              | codensa   | exitoso   |

