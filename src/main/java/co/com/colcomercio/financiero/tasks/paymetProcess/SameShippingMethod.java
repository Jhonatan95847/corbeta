package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingMethodPage.*;

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
        actor.attemptsTo(
                Wait.withDuration(7),
                //ScrollToElement.to(VALIDATION_METODOENVIO),
                ScrollToElement.to(BUTTON_CONTINUAR_ENVIO)
        );
        if (EDITTEXT_NUMBERID_ENVIO.isVisibleFor(actor)){
            actor.attemptsTo(
                    EnterText.intoField(newUser.getDataNewUsers().getCc(),EDITTEXT_NUMBERID_ENVIO),
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        } else {
            actor.attemptsTo(

                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        }
    }
    public static SameShippingMethod selectMethod(NewUser newUser) {
        return Tasks.instrumented(SameShippingMethod.class, newUser);
    }
}
