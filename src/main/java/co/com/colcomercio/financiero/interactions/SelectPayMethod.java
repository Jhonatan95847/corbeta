package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.*;

public class SelectPayMethod implements Interaction {
    private final String payMethod;
    private static final Logger logger = LogManager.getLogger(SelectPayMethod.class);

    public SelectPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################SELECCIONANDO METODO DE PAGO##############################");

        if (payMethod.equals("Tarjeta de Crédito")){
            actor.attemptsTo(
                    //Wait.withDuration(LOW_TIME),
                    ScrollToElement.to(SELECT_CREDITCARD_METHOD),
                    ClickOnElement.on(SELECT_CREDITCARD_METHOD)
            );
        } else if (payMethod.equals("Consignación")||payMethod.equals("Efecty")||payMethod.equals("Su Red")) {
            actor.attemptsTo(
                    //Wait.withDuration(LOW_TIME),
                    ScrollToElement.to(SELECT_EFECTIVO_METHOD.of(payMethod)),
                    ClickOnElement.on(SELECT_EFECTIVO_METHOD.of(payMethod))
            );
        }else {
            actor.attemptsTo(
                    //Wait.withDuration(LOW_TIME),
                    ScrollToElement.to(SELECT_PAY_METHOD.of(payMethod)),
                    ClickOnElement.on(SELECT_PAY_METHOD.of(payMethod))
            );
        }


    }
    public static SelectPayMethod payMethod(String payMethod) {
        return Tasks.instrumented(SelectPayMethod.class, payMethod);
    }
}
