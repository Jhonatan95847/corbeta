package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingMethodPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class SameShippingMethod implements Task {
    private static final Logger logger = LogManager.getLogger(SameShippingMethod.class);

    private final NewUser newUser;

    public SameShippingMethod(NewUser newUser) {
        this.newUser = newUser;
    }

    @Step("Seleccionando el mismo metodo de envio")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("######################SELECCIONANDO MISMO METODO DE ENVIO####################");
        if (EDITTEXT_NUMBERID_ENVIO.isVisibleFor(actor)){
            actor.attemptsTo(
                    Wait.withDuration(LOW_TIME),
                    WaitUntil.the(EDITTEXT_NUMBERID_ENVIO, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                    ScrollToElement.to(EDITTEXT_NUMBERID_ENVIO),
                    EnterText.intoField(newUser.getDataNewUsers().getCc(),EDITTEXT_NUMBERID_ENVIO),
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        } else {
            actor.attemptsTo(
                    Wait.withDuration(LOW_TIME),
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        }
    }
    public static SameShippingMethod selectMethod(NewUser newUser) {
        return Tasks.instrumented(SameShippingMethod.class, newUser);
    }
}
