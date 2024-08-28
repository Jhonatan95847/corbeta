package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;

import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.models.newUsers.NewUser;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.YourDataPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class AddYourData implements Task {
    private final NewUser newUser;
    private static final Logger logger = LogManager.getLogger(AddYourData.class);


    public AddYourData(NewUser newUser) {
        this.newUser = newUser;
    }

    //@Step("Agregando tus datos en el proceso de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################AGREGANDO TUS DATOS##############################");

        actor.attemptsTo(
                //Wait.withDuration(LOW_TIME),
                WaitUntil.the(EITBOX_NAME_TUSDATOS, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //ClickOnElement.on(BUTTON_EDIT_YOURDATA),
                ScrollToElement.to(EITBOX_NAME_TUSDATOS),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EITBOX_NAME_TUSDATOS),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EITBOX_LASTNAME_TUSDATOS),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EITBOX_PHONE_TUSDATOS),
                ClickOnElement.on(CHECK_AUTORIZO),
                ClickOnElement.on(BUTTON_CONTINUE_TUSDATOS)
        );
    }
    public static AddYourData addYourData(NewUser newUser) {
        return Tasks.instrumented(AddYourData.class,newUser);
    }
}
