package co.com.colcomercio.financiero.tasks.productOptions;

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

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static jdk.internal.org.jline.utils.Log.error;

public class SelectShippingMetod implements Task {
    private static final Logger logger = LogManager.getLogger(SelectShippingMetod.class);
    private String metodo;
    private String cliente;

    public SelectShippingMetod(String metodo, String cliente){
        this.metodo = metodo;
        this.cliente = cliente;
    }
    @Step("Seleccionando el metodo de envio")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##########################SELECCIONANDO METODO DE ENVIO#########################");
        actor.attemptsTo(
                Wait.withDuration(LOW_TIME)
        );
        switch (metodo) {
            case "Envio gratis":
                actor.attemptsTo(
                        ScrollToElement.to(BUTTON_FREESHIPPING),
                        ClickOnElement.on(BUTTON_FREESHIPPING)
                );
                break;
            case "Recoge en tienda":
                actor.attemptsTo(
                        ScrollToElement.to(BUTTON_STORE_PICKUP),
                        ClickOnElement.on(BUTTON_STORE_PICKUP),
                        Wait.withDuration(LOW_TIME),
                        ClickOnElement.on(SELECT_CITY_PICKUP),
                        ClickOnElement.on(SELECT_BOGOTA),
                        ClickOnElement.on(RADIOBUTTON_TIENDA),
                        ClickOnElement.on(BUTTON_SELECT_TIENDA)
                );
                break;
            case "Entrega hoy":
                if (cliente.equals("registrado")){
                    actor.attemptsTo(
                            ScrollToElement.to(BUTTON_SAME_DAY),
                            ClickOnElement.on(BUTTON_SAME_DAY),
                            Wait.withDuration(LOW_TIME),
                            ClickOnElement.on(RADIOBUTTON_ADDRESS),
                            ClickOnElement.on(BUTTON_CONTINUAR_HOY)
                    );
                } else if (cliente.equals("nuevo")) {
                    actor.attemptsTo(
                            ScrollToElement.to(BUTTON_SAME_DAY),
                            ClickOnElement.on(BUTTON_SAME_DAY),
                            Wait.withDuration(LOW_TIME),
                            WaitUntil.the(SELECT_DEPRTAMENT_SAME, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                            ClickOnElement.on(SELECT_DEPRTAMENT_SAME),
                            ClickOnElement.on(SELECT_BOGOTADC),
                            ClickOnElement.on(SELECT_CITY_SAME),
                            ClickOnElement.on(SELECT_BOGOTACITY),
                            ClickOnElement.on(SELECT_ZONE_SAME),
                            ClickOnElement.on(SELECT_CHAPZONE),
                            ClickOnElement.on(BUTTON_CONTINUAR_HOY_NUEVO)
                    );
                }

                break;
            default:
                error();
                break;
        }
    }
    public static SelectShippingMetod selectMethod(String metodo, String cliente) {
        return Tasks.instrumented(SelectShippingMetod.class, metodo, cliente);
    }
}
