package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYCAR;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.BUTTON_AGREGAR_PROMOCION;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.BUTTON_VER_PROMOCION;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.TotalInfo.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class GoToPay implements Task {
    private static final Logger logger = LogManager.getLogger(GoToPay.class);
    //@Step("Ir a pagar desde el carrito")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################IR A PAGAR DESDE EL CARRITO#########################");
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                ClickOnElement.on(BUTTON_MYCAR),
                Wait.withDuration(MICRO_TIME)
        );
        if (BUTTON_VER_PROMOCION.isVisibleFor(actor)){
            actor.attemptsTo(
                    ScrollToElement.to(BUTTON_VER_PROMOCION),
                    ClickOnElement.on(BUTTON_VER_PROMOCION),
                    Wait.withDuration(MICRO_TIME),
                    ClickOnElement.on(BUTTON_AGREGAR_PROMOCION)
            );
        }

        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                WaitUntil.the(BUTTON_GOTO_PAY, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ScrollToElement.to(BUTTON_GOTO_PAY),
                ClickOnElement.on(BUTTON_GOTO_PAY)
        );



        if (TEXTO_ESCRIBE_CORREO.isVisibleFor(actor)){
            actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                    WaitUntil.the(BUTTON_CONTINUE_SOFT, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                    ScrollToElement.to(BUTTON_CONTINUE_SOFT),
                ClickOnElement.on(BUTTON_CONTINUE_SOFT)
            );
        }
    }

    public static GoToPay pay() {
        return Tasks.instrumented(GoToPay.class);
    }
}
