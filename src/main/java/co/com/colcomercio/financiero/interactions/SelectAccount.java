package co.com.colcomercio.financiero.interactions;


import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.actions.JavaScriptClick;

import java.security.SecureRandom;
import java.util.List;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.*;



public class SelectAccount implements Task {

    @Override
    public <T extends Actor> void performAs(T actor) {

        for(int i=0;i<5;i++) {
            actor.attemptsTo(JavaScriptClick.on(SELECT_ACCOUNT));
            if (LIST_OPTIONS_SELECT_ACCOUNT.isVisibleFor(actor)) {
                List<WebElementFacade> options = LIST_OPTIONS_SELECT_ACCOUNT.resolveAllFor(actor);
                actor.attemptsTo(
                        Click.on(options.get(new SecureRandom().nextInt(options.size() - 1))),
                        Click.on(BUTTON_CONTINUE)
                );
                break;
            }
        }
    }

    public static SelectAccount toPay() {
        return Tasks.instrumented(SelectAccount.class);
    }
}

