package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.BUTTON_SELECT_TIENDA;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class PickupInStore implements Interaction {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                ClickOnElement.on(SELECT_CITY_PICKUP),
                ClickOnElement.on(SELECT_BOGOTA),
                ClickOnElement.on(RADIOBUTTON_TIENDA),
                ClickOnElement.on(BUTTON_SELECT_TIENDA)
        );
    }
    public static PickupInStore pickup(){return Tasks.instrumented(PickupInStore.class);
    }
}
