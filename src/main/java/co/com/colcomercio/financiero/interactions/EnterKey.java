package co.com.colcomercio.financiero.interactions;

import co.com.colcomercio.financiero.utils.BancolombiaButtonData;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.actions.Enter;
import org.apache.commons.lang3.StringUtils;

import java.util.Arrays;
import java.util.List;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.BUTTON_CONTINUE;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.NUMBER_LIST_PASSWORD;


public class EnterKey implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        List<WebElementFacade> inputs = NUMBER_LIST_PASSWORD.resolveAllFor(actor);
        List<String> password = Arrays.asList(BancolombiaButtonData.KEY.split(StringUtils.EMPTY));
        for(int i=0;i<password.size();i++){
            actor.attemptsTo(Enter.theValue(password.get(i)).into(inputs.get(i)));
        }
        actor.attemptsTo(
                Click.on(BUTTON_CONTINUE)
        );
    }

    public static EnterKey toLogin(){
        return Tasks.instrumented(EnterKey.class);
    }


}
