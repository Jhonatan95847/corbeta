package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.*;

public class ChangeShippingMethod implements Task {
    private String cambiarMetodo;

    public ChangeShippingMethod(String cambiarMetodo) {
        this.cambiarMetodo = cambiarMetodo;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        switch (cambiarMetodo) {
            case "Envio gratis":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_FREE)
                );
                break;
            case "Recoge en tienda":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_STORE),
                        //WaitUntil.the(SELECT_CITY_PICKUP, WebElementStateMatchers.isClickable()),
                        ClickOnElement.on(SELECT_CITY_PICKUP),
                        ClickOnElement.on(SELECT_BOGOTA),
                        ClickOnElement.on(RADIOBUTTON_TIENDA),
                        ClickOnElement.on(BUTTON_SELECT_TIENDA)
                );
                break;
            case "Entrega hoy":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_SAMEDAY),
                        ClickOnElement.on(RADIOBUTTON_ADDRESS),
                        ClickOnElement.on(BUTTON_CONTINUAR_HOY)
                );
                break;
        }
    }
    public static ChangeShippingMethod changeMethod(String cambiarMetodo) {
        return Tasks.instrumented(ChangeShippingMethod.class, cambiarMetodo);
    }

}