package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.targets.Target;
//import net.thucydides.core.annotations.Step;


public class ClickOnElementRetry implements Interaction {
    private final Target element;

    public ClickOnElementRetry(Target element) {
        this.element = element;
    }

    public static ClickOnElementRetry on(Target element) {
        return Tasks.instrumented(ClickOnElementRetry.class, element);
    }

    //@Step("Reintentado hacer click en el elemento")
    @Override
    public <T extends Actor> void performAs(T actor) {
        for (int retry = 0; retry < 3; retry++) {
            try {
                actor.attemptsTo(
                        Click.on(element)
                );
                retry = 3;
            } catch (Exception e) {

                try {
                    Thread.sleep(5000);
                } catch (InterruptedException ex) {
                    throw new RuntimeException(ex);
                }
                if(retry==2){
                    actor.attemptsTo(
                            Click.on(element)
                    );
                }
            }
        }
    }
}
