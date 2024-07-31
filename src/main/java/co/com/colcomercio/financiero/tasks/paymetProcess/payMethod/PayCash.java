package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CashPaymentPage.*;
import static jdk.internal.org.jline.utils.Log.error;

public class PayCash implements Task {
    private static final Logger logger = LogManager.getLogger(PayCash.class);
    private final String payMethod;

    public PayCash(String payMethod) {
        this.payMethod = payMethod;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE EFECTIVO##############################");
        actor.attemptsTo(
                SelectPayMethod.payMethod(payMethod)
        );
        switch (payMethod) {
            case "sured":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_SURED)
                );
                break;
            case "deposito":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_DEPOSITO)
                );
                break;
            case "efecty":
                actor.attemptsTo(
                        ClickOnElement.on(RADIOBUTTON_EFECTY)
                );
                break;
            default:
                error();
                break;
        }
    }
    public static PayCash payCash(String payMethod) {
        return Tasks.instrumented(PayCash.class, payMethod);
    }
}
