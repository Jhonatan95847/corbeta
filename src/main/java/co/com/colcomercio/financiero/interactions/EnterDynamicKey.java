package co.com.colcomercio.financiero.interactions;


import co.com.colcomercio.financiero.utils.BancolombiaButtonData;
import lombok.SneakyThrows;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.actions.Enter;

import java.util.List;
import java.util.stream.Collectors;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.BUTTON_CONTINUE;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.NUMBER_LIST_PASSWORD;

public class EnterDynamicKey implements Task {

    @SneakyThrows
    @Override
    public <T extends Actor> void performAs(T actor) {

        List<WebElementFacade> inputsDynamicKeys = NUMBER_LIST_PASSWORD.resolveAllFor(actor);
        List<String> dinamicKey = BancolombiaButtonData.DINAMIC_KEY.chars()
                .mapToObj(c -> String.valueOf((char)c))
                .collect(Collectors.toList());
        for(int i=0;i<dinamicKey.size();i++){
            actor.attemptsTo(Enter.theValue(dinamicKey.get(i)).into(inputsDynamicKeys.get(i)));
        }

        actor.attemptsTo(
                Click.on(BUTTON_CONTINUE)
        );
    }

    public static EnterDynamicKey toValidateLogin(){
        return Tasks.instrumented(EnterDynamicKey.class);
    }

}
