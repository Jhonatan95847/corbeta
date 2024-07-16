package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.AddNewAddress;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.SameShippingMethod;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.OtherData;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.SelectSaveAddress;
import co.com.colcomercio.financiero.tasks.productOptions.AddProduct;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Y;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class PaymentMethodsStepDefinition {

    private NewUser withTheData;

    @Y("se realiza el pago mediante {string} con tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoMedianteConTarjetaCuyaTransacciónEs(String metodoPago, String tarjeta, String resultado) {
    }

    @Y("se realiza el pago con documento {string} mediante {string} con tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteConTarjetaCuyaTransacciónEs(String arg0, String arg1, String arg2, String arg3) {
        
    }

    @Y("se realiza el pago con documento {string} mediante tarjeta {string} cuya transacción es {string}")
    public void seRealizaElPagoConDocumentoMedianteTarjetaCuyaTransacciónEs(String arg0, String arg1, String arg2) {
    }

    @Y("desea ir a pagar con tipo de documento {string} con dirección {string}")
    public void deseaIrAPagarConTipoDeDocumentoConDireccion(String documento, String direccion) {
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");

        theActorInTheSpotlight().attemptsTo(
                AddProduct.goToPay(),
                GoToPay.pay()
        );
        switch (direccion) {
            case "registrada":
                theActorInTheSpotlight().attemptsTo(
                        SameShippingMethod.selectMethod(withTheData)
                );
                break;
            case "nuevo usuario":
                theActorInTheSpotlight().attemptsTo(
                        AddNewAddress.selectAddress(withTheData, documento)
                );
                break;
            case "otros datos":
                theActorInTheSpotlight().attemptsTo(
                        OtherData.otherData(),
                        AddNewAddress.selectAddress(withTheData, documento)
                );
                break;
            case "guardada":
                theActorInTheSpotlight().attemptsTo(
                        SelectSaveAddress.selectSave()
                );
                break;
        }
        theActorInTheSpotlight().attemptsTo(
                SameShippingMethod.selectMethod(withTheData)
        );
    }
}

