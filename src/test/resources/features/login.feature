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

    @alkostocardcodensa
    Esquema del escenario: Compra con T Alkosto
    Narrativa: El cliente registrado en Alkosto
        Dado que un cliente "<cliente>" inicia sesión y desea realizar una compra
        Cuando el cliente "<cliente>" busca un producto y selecciona cantidad "<cantidad>" y método de envío "<metodoEnvio>"
        Y  desea ir a pagar con tipo de documento "<tipo_id>" con dirección "<direccion>"
        Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
        #Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
            | cliente    | cantidad | metodoEnvio       | direccion      | tipo_id | tarjeta            | franquicia| resultado |
            #| registrado |      2   | Envio gratis      |  registrada    |  CC     | alkosto            | alkosto   | exitoso   |
            #| registrado |      3   | Envio gratis      |  registrada    |  CC     | debito             | mastercard| fallido   |
            #| registrado |      3   | Envio gratis      |  registrada    |  CC     | alkosto            | amex      | fallido   |
            #| registrado |      3   | Envio gratis      |  registrada    |  CC     | alkosto            | alkosto   | fallido   |
            #| registrado |      3   | Envio gratis      |  registrada    |  CC     | codensa            | codensa   | fallido   |
            #| nuevo      |      4   | Envio gratis      |  nuevo usuario |  NIT    | alkosto            | alkosto   | exitoso   |
            #| nuevo      |      3   | Recoge en tienda  |  nuevo usuario |  NIT    | debito             | mastercard | fallido   |
            #| nuevo      |      2   | Entrega hoy       |  nuevo usuario |  NIT    | codensa            | codensa   | fallido   |
            #| registrado |      1   | Envio gratis      |  guardada      |  NIT    | credito            | visa      |           |
            #| registrado |      1   | Recoge en tienda  |  guardada      |  NIT    | alkosto            | alkosto   |           |
            #| registrado |      1   | Entrega hoy       |  guardada      |  NIT    | debito             | visa      |           |
            #| registrado |      3   | Envio gratis      |  otros datos   |  NIT    | codensa            | codensa   |           |
            | registrado |      3   | Recoge en tienda  |  otros datos   |  NIT    | credito            | diners    |           |
            #| registrado |      3   | Entrega hoy       |  otros datos   |  NIT    | alkosto            | alkosto   |           |
            #| registrado |      8   | Envio gratis      |  registrada    |  NIT    | debito             | amex      |           |
            #| registrado |      8   | Recoge en tienda  |  registrada    |  NIT    | codensa            | codensa   |           |
            #| registrado |      8   | Entrega hoy       |  registrada    |  NIT    | credito            | visa      |           |
