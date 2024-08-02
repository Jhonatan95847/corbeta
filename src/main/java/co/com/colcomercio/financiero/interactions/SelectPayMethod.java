package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.SELECT_CREDITCARD_METHOD;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.SELECT_PAY_METHOD;
import static jdk.internal.org.jline.utils.Log.error;

public class SelectPayMethod implements Interaction {
    private final String payMethod;
    private static final Logger logger = LogManager.getLogger(SelectPayMethod.class);

    public SelectPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################SELECCIONANDO METODO DE PAGO##############################");

                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of(payMethod)),
                        ClickOnElement.on(SELECT_PAY_METHOD.of(payMethod))
                );

              if (payMethod.equals("credito")){
                  actor.attemptsTo(
                          Wait.withDuration(1),
                          ScrollToElement.to(SELECT_CREDITCARD_METHOD),
                          ClickOnElement.on(SELECT_CREDITCARD_METHOD)
                  );
              }
    }
    public static SelectPayMethod payMethod(String payMethod) {
        return Tasks.instrumented(SelectPayMethod.class, payMethod);
    }
}
