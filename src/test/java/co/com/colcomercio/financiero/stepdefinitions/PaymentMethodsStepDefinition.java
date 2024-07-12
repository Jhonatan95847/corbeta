package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.tasks.paymetProcess.AddNewAddress;
import co.com.colcomercio.financiero.tasks.paymetProcess.SameShippingMethod;
import co.com.colcomercio.financiero.tasks.productOptions.AddProduct;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import io.cucumber.java.es.Y;
import net.serenitybdd.screenplay.actions.ClickOnElement;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class PaymentMethodsStepDefinition {

    @Y("se realiza el pago mediante {string} con tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoMedianteConTarjetaCuyaTransacciónEs(String metodoPago, String tarjeta, String resultado) {
    }

    @Y("se realiza el pago con documento {string} mediante {string} con tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteConTarjetaCuyaTransacciónEs(String arg0, String arg1, String arg2, String arg3) {
        
    }

    @Y("se realiza el pago con documento {string} mediante tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteTarjetaCuyaTransacciónEs(String arg0, String arg1, String arg2) {
    }

    @Y("desea ir a pagar con tipo de documento {string} con direccion {string}")
    public void deseaIrAPagarConTipoDeDocumentoConDireccion(String documento, String direccion) {
        theActorInTheSpotlight().attemptsTo(
                AddProduct.goToPay(),
                GoToPay.pay()
        );
        switch (direccion) {
            case "registrada":
                theActorInTheSpotlight().attemptsTo(
                        SameShippingMethod.selectMethod()
                );
                break;
            case "nuevo usuario":
                theActorInTheSpotlight().attemptsTo(
                        AddNewAddress.selectAddress(documento)
                );
                break;
            case "editar":
                theActorInTheSpotlight().attemptsTo(
                        //nuevo registrada
                );
                break;
            case "seleccionar guardada":
                //seleccionar guardada
                break;
        }
    }
}

