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
            | registrado |      2   | Recoge en tienda  |  registrada    |  CC     | credito            | mastercard| exitoso   |
            | registrado |      2   | Envio gratis      |  otros datos   |  CC     | debito             | mastercard| fallido   |
            | registrado |      3   | Envio gratis      |  guardada      |  CC     | alkosto            | alkosto   | fallido   |
            | registrado |      2   | Envio gratis      |  registrada    |  CC     | codensa            | codensa   | fallido   |
            | registrado |      2   | Envio gratis      |  otros datos   |  CC     | codensa            | codensa   | fallido   |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  NIT    | alkosto            | alkosto   | exitoso   |
            | nuevo      |      3   | Envio gratis      |  nuevo usuario |  NIT    | debito             | mastercard| fallido   |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  NIT    | codensa            | codensa   | fallido   |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | alkosto            | alkosto   | exitoso   |
            | nuevo      |      3   | Envio gratis      |  nuevo usuario |  RUT     | debito             | mastercard | fallido   |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  RUT     | codensa            | codensa   | fallido   |
            | registrado |      1   | Envio gratis      |  guardada      |  RUT     | credito            | visa      |           |
            | registrado |      1   | Envio gratis      |  guardada      |  RUT     | alkosto            | alkosto   |           |
            | registrado |      1   | Envio gratis      |  guardada      |  RUT     | debito             | visa      |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  RUT     | codensa            | codensa   |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  RUT     | credito            | diners    |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  RUT     | alkosto            | alkosto   |           |
            | registrado |      2   | Envio gratis      |  registrada    |  RUT     | debito             | amex      |           |
            | registrado |      2   | Envio gratis      |  registrada    |  RUT     | codensa            | codensa   |           |
            | registrado |      2   | Envio gratis      |  registrada    |  RUT     | credito            | visa      |           |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  CE     | alkosto            | alkosto   | exitoso   |
            | nuevo      |      3   | Envio gratis      |  nuevo usuario |  CE     | debito             | mastercard | fallido   |
            | nuevo      |      2   | Envio gratis      |  nuevo usuario |  CE     | codensa            | codensa   | fallido   |
            | registrado |      1   | Envio gratis      |  guardada      |  CE     | credito            | visa      |           |
            | registrado |      1   | Envio gratis      |  guardada      |  CE     | alkosto            | alkosto   |           |
            | registrado |      1   | Envio gratis      |  guardada      |  CE     | debito             | visa      |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  CE     | codensa            | codensa   |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  CE     | credito            | diners    |           |
            | registrado |      3   | Envio gratis      |  otros datos   |  CE     | alkosto            | alkosto   |           |
            | registrado |      2   | Envio gratis      |  registrada    |  CE     | debito             | amex      |           |
            | registrado |      2   | Envio gratis      |  registrada    |  CE     | codensa            | codensa   |           |
            | registrado |      1   | Envio gratis      |  registrada    |  CE     | credito            | visa      |           |
