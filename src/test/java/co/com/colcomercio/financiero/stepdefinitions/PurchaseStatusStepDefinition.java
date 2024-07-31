package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.tasks.paymetProcess.ValidatePay;
import io.cucumber.java.es.Entonces;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class PurchaseStatusStepDefinition {
    @Entonces("debería observar la notificación de compra {string}")
    public void deberíaObservarLaNotificaciónDeCompra(String estado) {
        theActorInTheSpotlight().attemptsTo(
                ValidatePay.validate()
        );
    }
}
