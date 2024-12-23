package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import co.com.colcomercio.financiero.tasks.paymetProcess.ProcesBancolombiaPay;
import co.com.colcomercio.financiero.tasks.paymetProcess.ProcesPSEPay;
import co.com.colcomercio.financiero.tasks.paymetProcess.ReviewAndAproval;
import co.com.colcomercio.financiero.tasks.paymetProcess.payMethod.*;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.AddNewAddress;
import co.com.colcomercio.financiero.tasks.paymetProcess.SameShippingMethod;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.OtherData;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.SelectSaveAddress;
import co.com.colcomercio.financiero.tasks.productOptions.AddProductGarantia;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Y;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class PaymentMethodsStepDefinition {
    private NewUser withTheData;
    private PaymentCard whithTheCardData;

    @Y("desea ir a pagar con tipo de documento {string} con dirección {string}")
    public void deseaIrAPagarConTipoDeDocumentoConDireccion(String documento, String direccion) {
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");

        switch (direccion) {
            case "registrada":
                theActorInTheSpotlight().attemptsTo(
                        SameShippingMethod.selectMethod(withTheData)
                );
                break;
            case "nuevo usuario":
                theActorInTheSpotlight().attemptsTo(
                        AddNewAddress.selectAddress(withTheData, documento),
                        SameShippingMethod.selectMethod(withTheData)
                );
                break;
            case "otros datos":
                theActorInTheSpotlight().attemptsTo(
                        OtherData.otherData(),
                        AddNewAddress.selectAddress(withTheData, documento),
                        SameShippingMethod.selectMethod(withTheData)
                );
                break;
            case "guardada":
                theActorInTheSpotlight().attemptsTo(
                        SelectSaveAddress.selectSave(),
                        SameShippingMethod.selectMethod(withTheData)
                );
                break;
            default:
                break;

        }

    }

    @Y("realiza el pago mediante tarjeta {string} de la franquicia {string}")
    public void realizaElPagoMedianteTarjetaDeLaFranquicia(String tarjeta, String franquicia) {
        whithTheCardData = GetDataModel.paymentCard(franquicia);
        theActorInTheSpotlight().attemptsTo(
                PayCards.tarjetaAlkosto(tarjeta,whithTheCardData),
                ReviewAndAproval.review()
        );
    }

    @Y("realiza el pago mediante billetera digital {string} cuyo resultado es {string}")
    public void realizaElPagoMedianteBilleteraDigital(String billetera, String resultado) {
        theActorInTheSpotlight().attemptsTo(
                PayDigitalWallet.paymentCard(billetera),
                ReviewAndAproval.review(),
                ProcesPSEPay.pay(resultado)
        );
    }

    @Y("realiza el pago mediante efectivo con {string}")
    public void realizaElPagoMedianteEfectivoCon(String efectivo) {
        theActorInTheSpotlight().attemptsTo(
                PayCash.payCash(efectivo),
                ReviewAndAproval.review()

        );
    }

    @Y("realiza el pago mediante tarjeta guardada {string} de la franquicia {string}")
    public void realizaElPagoMedianteTarjetaGuardadaDeLaFranquicia(String tarjeta, String franquicia) {
        whithTheCardData = GetDataModel.paymentCard(franquicia);
        theActorInTheSpotlight().attemptsTo(
                PaySaveCards.pay(tarjeta,whithTheCardData),
                ReviewAndAproval.review()
        );

    }

    @Y("realiza el pago mediante PSE cuya transacción es {string}")
    public void realizaElPagoMediantePSE(String resultado) {
        theActorInTheSpotlight().attemptsTo(
                PayPSE.pay(),
                ReviewAndAproval.review(),
                ProcesPSEPay.pay(resultado)
        );
    }

    @Y("realiza el pago mediante boton Bancolombia")
    public void realizaElPagoMedianteBotonBancolombia() {
        theActorInTheSpotlight().attemptsTo(
                PayBancolombiaButton.pay(),
                ReviewAndAproval.review(),
                ProcesBancolombiaPay.payBancolombia()
        );
    }

    @Cuando("quiere ir a pagar y selecciona garantia extendida")
    public void quiereIrAPagarYSeleccionaGarantiaExtendida() {
        theActorInTheSpotlight().attemptsTo(
                AddProductGarantia.goToPay(),
                GoToPay.pay()
        );
    }
}

