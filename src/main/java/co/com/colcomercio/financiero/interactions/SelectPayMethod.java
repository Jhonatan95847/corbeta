package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.SELECT_CREDITCARD_METHOD;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.SELECT_PAY_METHOD;
import static jdk.internal.org.jline.utils.Log.error;

public class SelectPayMethod implements Interaction {
    private final String payMethod;

    public SelectPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        switch (payMethod) {
            case "alkosto":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Tarjeta Alkosto"))
                );
                break;
            case "codensa":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA"))
                );
                break;
            case "codensa GlobalPay":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Crédito Fácil CODENSA GlobalPay"))
                );
                break;
                case "credito":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_CREDITCARD_METHOD)
                );
                break;
            case "debito":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Tarjeta de Crédito o Debito con CVV"))
                );
                break;
            case "pse":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("PSE"))
                );
                break;
            case "billetera digital":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Nequi"))
                );
                break;
            case "efectivo":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_PAY_METHOD.of("Pago en efectivo"))
                );
                break;
            case "bancolombia":
                actor.attemptsTo(
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
