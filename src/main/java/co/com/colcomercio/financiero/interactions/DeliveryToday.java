package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class DeliveryToday implements Interaction {

    private final String cliente;

    public DeliveryToday(String cliente){
        this.cliente = cliente;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        if (cliente.equals("registrado")){
            actor.attemptsTo(
                    Wait.withDuration(LOW_TIME),
                    ClickOnElement.on(RADIOBUTTON_ADDRESS),
                    ClickOnElement.on(BUTTON_CONTINUAR_HOY)
            );
        } else if (cliente.equals("nuevo")) {
            actor.attemptsTo(
                    Wait.withDuration(LOW_TIME),
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
    public static DeliveryToday delivery(String cliente){return Tasks.instrumented(DeliveryToday.class, cliente);
    }
}
