package co.com.colcomercio.financiero.stepdefinitions;

import io.cucumber.java.es.Y;

public class ShippingMetodStepDefinition {

    @Y("agrega producto al carrito con {string} y direccion {string}")
    public void agregaProductoAlCarritoConYDireccion(String metodoEnvio, String direccion) {
    }

    @Y("se realiza el pago con documento {string} mediante tarjeta {string} de la {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteTarjetaDeLaCuyaTransacciónEs(String arg0, String arg1, String arg2, String arg3) {
        
    }

    @Y("se realiza el pago con documento {string} mediante {string} con {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteConCuyaTransacciónEs(String arg0, String arg1, String arg2, String arg3) {
        
    }

    @Y("se realiza el pago con documento {string} mediante billetera {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteBilleteraCuyaTransacciónEs(String arg0, String arg1, String arg2) {
        
    }

    @Y("se realiza el pago con documento {string} mediante efectivo {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteEfectivoCuyaTransacciónEs(String arg0, String arg1, String arg2) {
    }

    @Y("realiza el pago mediante tarjeta {string} de la franquicia {string}")
    public void realizaElPagoMedianteTarjetaDeLaFranquicia(String tarjeta, String franqicia) {
    }
}
