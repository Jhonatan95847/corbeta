package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingMethodPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class SameShippingMethod implements Task {
    private static final Logger logger = LogManager.getLogger(SameShippingMethod.class);

    private final NewUser newUser;

    public SameShippingMethod(NewUser newUser) {
        this.newUser = newUser;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("######################SELECCIONANDO MISMO METODO DE ENVIO####################");
        actor.attemptsTo(
                Wait.withDuration(5),
                WaitUntil.the(BUTTON_CONTINUAR_ENVIO, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ScrollToElement.to(BUTTON_CONTINUAR_ENVIO)
        );
        if (EDITTEXT_NUMBERID_ENVIO.isVisibleFor(actor)){
            actor.attemptsTo(
                    EnterText.intoField(newUser.getDataNewUsers().getCc(),EDITTEXT_NUMBERID_ENVIO)

            );
        }
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_CONTINUAR_ENVIO),
                Wait.withDuration(5)
        );

    }
    public static SameShippingMethod selectMethod(NewUser newUser) {
        return Tasks.instrumented(SameShippingMethod.class, newUser);
    }
}
