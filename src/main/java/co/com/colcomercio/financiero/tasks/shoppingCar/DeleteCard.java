package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class DeleteCard implements Task {
    private static final Logger logger = LogManager.getLogger(DeleteCard.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#########################BORRANDO TARJETAS GUARDADAS########################");
        actor.attemptsTo(
                WaitUntil.the(BUTTON_MYACCOUNT, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_MYACCOUNT)
        );
        if(BUTTON_DETALLES_PAGO.isVisibleFor(actor)){
                actor.attemptsTo(
                        ClickOnElement.on(BUTTON_DETALLES_PAGO)
                );
        }
        while (BUTTON_ELIMINAR_TARJETA.isVisibleFor(actor)){
            actor.attemptsTo(
                    ClickOnElement.on(BUTTON_ELIMINAR_TARJETA),
                    Wait.withDuration(1),
                    ClickOnElement.on(BUTTON_CONFIRMARELIMINAR_TARJETA),
                    Wait.withDuration(5)
            );
        }
    }
    public static DeleteCard delete() {
        return Tasks.instrumented(DeleteCard.class);
    }
}
