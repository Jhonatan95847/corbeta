package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class DeliveryToday implements Interaction {

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(6)
        );
        if (RADIOBUTTON_ADDRESS.isVisibleFor(actor)){
            actor.attemptsTo(
                    WaitUntil.the(RADIOBUTTON_ADDRESS, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                    Wait.withDuration(5),
                    ClickOnElement.on(RADIOBUTTON_ADDRESS),
                    ClickOnElement.on(BUTTON_CONTINUAR_HOY)
            );
        } else if (SELECT_DEPRTAMENT_SAME.isVisibleFor(actor)) {
            actor.attemptsTo(
                    //WaitUntil.the(RADIOBUTTON_ADDRESS_CITY, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                    //ClickOnElement.on(RADIOBUTTON_ADDRESS_CITY),
                    //ClickOnElement.on(BUTTON_CONTINUAR_HOY_CITY)
                    ///forma antigua
                    WaitUntil.the(SELECT_DEPRTAMENT_SAME, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                    Wait.withDuration(5),
                    ClickOnElement.on(SELECT_DEPRTAMENT_SAME),
                    ClickOnElement.on(SELECT_BOGOTADC),
                    ClickOnElement.on(SELECT_CITY_SAME),
                    ClickOnElement.on(SELECT_BOGOTACITY),
                    ClickOnElement.on(SELECT_ZONE_SAME),
                    ClickOnElement.on(SELECT_CHAPZONE),
                    ClickOnElement.on(BUTTON_CONTINUAR_HOY_NUEVO)
            );
        }
    }
    public static DeliveryToday delivery(){return Tasks.instrumented(DeliveryToday.class);
    }
}
