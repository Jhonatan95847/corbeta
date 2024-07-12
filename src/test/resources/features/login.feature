# language: es
@all
@alkostoCard
Característica: Medio de Pago - Tarjeta Alkosto


    Antecedentes:
        Dado que el Cliente Colcomercio ingresa al storefront
    ####################################### Nueva Implementacion ############################################


    @alkostocardcodensa
    Esquema del escenario: Compra con T Alkosto
    Narrativa: El cliente registrado en Alkosto
        Dado que un cliente "<cliente>" inicia sesion y desea realizar una compra
        Cuando el cliente "<cliente>" busca un producto y selecciona "<cantidad>" y "<metodoEnvio>"
        Y  desea ir a pagar con tipo de documento "<tipo_id>" con direccion "<direccion>"
       #Y realiza el pago mediante tarjeta "<tarjeta>" de franquicia "<franquicia>" con resultado "<resultado>"
        #Entonces debería observar la notificación de compra "<estado>"
        Ejemplos:
            | cliente    | n  | cantidad | metodoEnvio       | direccion | tipo_id | tarjeta            | resultado | estado  |
            | registrado | 1  |      4   | Envio gratis      |  registrada    |   cc    | alkosto            | exitoso   | exitoso |
            #| registrado | 2  |      3   | Recoge en tienda  |  registrada    |  nit    | codensa            | fallido   | fallido |
            #| registrado | 2  |      2   | Entrega hoy       |  registrada    |  nit    | codensa            | fallido   | fallido |
            #| nuevo      | 2  |      1   | Envio gratis      |  misma    |  nit    | codensa            | fallido   | fallido |
            #| nuevo      | 2  |      5   | Entrega hoy       |  misma    |  nit    | codensa            | fallido   | fallido |
            #| nuevo      | 2  |      8   | Recoge en tienda  |  misma    |  nit    | codensa            | fallido   | fallido |


