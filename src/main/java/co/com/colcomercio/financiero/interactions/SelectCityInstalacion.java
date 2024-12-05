package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class SelectCityInstalacion implements Interaction{
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
            EnterText.intoField("Bogota",TEXTBOX_CITY_INSTALACION),
            Wait.withDuration(MICRO_TIME),
            ClickOnElement.on(SELECT_CITY_INSTALACION),
            Wait.withDuration(MICRO_TIME),
            ClickOnElement.on(CKECK_CITY_INSTALACION),
            Wait.withDuration(MICRO_TIME),
            ClickOnElement.on(BUTTON_CONTINUAR_INSTALACION)
        );
    }

    public static SelectCityInstalacion instalacion(){return Tasks.instrumented(SelectCityInstalacion.class);
    }
}
