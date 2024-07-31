package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class SelectSaveAddress implements Task {
    private static final Logger logger = LogManager.getLogger(SelectSaveAddress.class);

    @Step("Seleccionando una direccion guardada")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("########################SELECCIONANDO UNA DIRECCION GUARDADA#######################");

        actor.attemptsTo(
                Wait.withDuration(6),
                WaitUntil.the(BUTTON_DIRECCION_GUARDADA, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ScrollToElement.to(BUTTON_DIRECCION_GUARDADA),
                ClickOnElement.on(BUTTON_DIRECCION_GUARDADA),
                ScrollToElement.to(RADIOBUTTON_DIRECCION_GUARDADA),
                ClickOnElement.on(RADIOBUTTON_DIRECCION_GUARDADA),
                //Wait.withDuration(LOW_TIME),
                ScrollToElement.to(RADIOBUTTON_MISMOS_DATOS),
                Wait.withDuration(LOW_TIME),
                ScrollToElement.to(BUTTON_CONTINUAR_GUARDADA),
                ClickOnElement.on(BUTTON_CONTINUAR_GUARDADA)
        );
    }
    public static SelectSaveAddress selectSave() {
        return Tasks.instrumented(SelectSaveAddress.class);
    }

}
