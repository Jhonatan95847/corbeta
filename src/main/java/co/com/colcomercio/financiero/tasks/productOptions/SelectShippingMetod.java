package co.com.colcomercio.financiero.tasks.productOptions;

import co.com.colcomercio.financiero.interactions.*;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
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
                        PickupInStore.pickup()
                );
                break;
            case "Entrega hoy":
                actor.attemptsTo(
                        ScrollToElement.to(BUTTON_SAME_DAY),
                        ClickOnElement.on(BUTTON_SAME_DAY),
                        DeliveryToday.delivery(cliente)
                );


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
