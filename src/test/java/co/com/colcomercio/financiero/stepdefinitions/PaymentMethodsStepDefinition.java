package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import co.com.colcomercio.financiero.tasks.paymetProcess.payMethod.TarjetaAlkosto;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.AddNewAddress;
import co.com.colcomercio.financiero.tasks.paymetProcess.SameShippingMethod;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.OtherData;
import co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress.SelectSaveAddress;
import co.com.colcomercio.financiero.tasks.productOptions.AddProduct;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import co.com.colcomercio.financiero.utils.CardDaraProvider;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Y;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class PaymentMethodsStepDefinition {
    private NewUser withTheData;
    private PaymentCard whithTheCardData;

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
        }

    }

    @Y("realiza el pago mediante tarjeta {string} de la franquicia {string}")
    public void realizaElPagoMedianteTarjetaDeLaFranquicia(String tarjeta, String franquicia) {
        PaymentCard cardData = CardDaraProvider.getCardData(franquicia);
        theActorInTheSpotlight().attemptsTo(
                TarjetaAlkosto.tarjetaAlkosto(tarjeta,cardData)
                //ReviewAndAproval.review()
        );
    }
}

