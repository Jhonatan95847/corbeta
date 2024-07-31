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
        switch (payMethod) {
            case "alkosto":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Tarjeta Alkosto")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Tarjeta Alkosto"))
                );
                break;
            case "codensa":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA"))
                );
                break;
            case "codensa GlobalPay":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA GlobalPay")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA GlobalPay"))
                );
                break;
                case "credito":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_CREDITCARD_METHOD),
                        ClickOnElement.on(SELECT_CREDITCARD_METHOD)
                );
                break;
            case "debito":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Tarjeta de Crédito o Debito con CVV")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Tarjeta de Crédito o Debito con CVV"))
                );
                break;
            case "pse":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("PSE")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("PSE"))
                );
                break;
            case "billetera digital":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Nequi")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Nequi"))
                );
                break;
            case "efectivo":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Pago en efectivo")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Pago en efectivo"))
                );
                break;
            case "bancolombia":
                actor.attemptsTo(
                        Wait.withDuration(1),
                        ScrollToElement.to(SELECT_PAY_METHOD.of("Bancolombia")),
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Bancolombia"))
                );
                break;
            default:
                error();
                break;
        }
    }
    public static SelectPayMethod payMethod(String payMethod) {
        return Tasks.instrumented(SelectPayMethod.class, payMethod);
    }
}
