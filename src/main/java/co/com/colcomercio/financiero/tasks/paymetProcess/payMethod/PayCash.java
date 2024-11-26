package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CashPaymentPage.*;


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
                case "Su Red":
                actor.attemptsTo(
                        ScrollToElement.to(RADIOBUTTON_SURED),
                        ClickOnElement.on(RADIOBUTTON_SURED)
                );
                break;
            case "Consignación":
                actor.attemptsTo(
                        ScrollToElement.to(RADIOBUTTON_DEPOSITO),
                        ClickOnElement.on(RADIOBUTTON_DEPOSITO)
                );
                break;
            case "Efecty":
                actor.attemptsTo(
                        ScrollToElement.to(RADIOBUTTON_EFECTY),
                        ClickOnElement.on(RADIOBUTTON_EFECTY)
                );
                break;
            default:

                break;
        }
        actor.attemptsTo(
                ScrollToElement.to(BUTTON_CPNTINUAR_EFECTIVO),
                ClickOnElement.on(BUTTON_CPNTINUAR_EFECTIVO)
        );
    }
    public static PayCash payCash(String payMethod) {
        return Tasks.instrumented(PayCash.class, payMethod);
    }
}
