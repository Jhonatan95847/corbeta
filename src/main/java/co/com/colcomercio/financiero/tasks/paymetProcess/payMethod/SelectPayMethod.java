package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

public class SelectPayMethod implements Task {

    private final String  payMethod;

    public SelectPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    @Override
    public <T extends Actor> void performAs(T t) {
        switch (payMethod) {
            case "tarjeta alkosto":

                break;
            case "tarjeta codensa":

                break;
            case "tarjeta credito":

                break;
            case "tarjeta debito":

                break;
            case "pse":

                break;
            case "efectivo":

                break;
            case "billetera digital":

                break;
            case "boton bancolombia":

                break;
        }

    }
}
