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
    #DIRECCION: registrada | misma | nuevo cliente | guardada
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
        #Y realiza el pago mediante tarjeta "<tarjeta>" de la franquicia "<franquicia>"
        #Entonces debería observar la notificación de compra "<resultado>"
        Ejemplos:
            | cliente    |  cantidad | metodoEnvio       | direccion      | tipo_id | tarjeta            | franquicia| resultado |
            | registrado |       4   | Envio gratis      |  registrada    |   CC    | alkosto            | visa      | exitoso   |
            | registrado |       3   | Recoge en tienda  |  registrada    |  nit    | codensa            | mastercad | fallido   |
            | registrado |       2   | Entrega hoy       |  registrada    |  nit    | codensa            | diners    | fallido   |
            #| nuevo      |       1   | Envio gratis      |  misma    |  nit    | codensa            | fallido   |
            #| nuevo      |       5   | Entrega hoy       |  misma    |  nit    | codensa            | fallido   |
            #| nuevo      |       8   | Recoge en tienda  |  misma    |  nit    | codensa            | fallido   |


