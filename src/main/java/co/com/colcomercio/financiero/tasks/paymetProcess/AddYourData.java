package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;

import co.com.colcomercio.financiero.models.newUsers.NewUser;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.YourDataPage.*;

public class AddYourData implements Task {
    private final NewUser newUser;
    private static final Logger logger = LogManager.getLogger(AddYourData.class);


    public AddYourData(NewUser newUser) {
        this.newUser = newUser;
    }

    @Step("Agregando tus datos en el proceso de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################AGREGANDO TUS DATOS##############################");

        actor.attemptsTo(
                ClickOnElement.on(BUTTON_EDIT_YOURDATA),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EITBOX_NAME_TUSDATOS),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EITBOX_LASTNAME_TUSDATOS),
                ClickOnElement.on(BUTTON_CONTINUE_TUSDATOS)
        );
    }
    public static AddYourData addYourData() {
        return Tasks.instrumented(AddYourData.class);
    }
}
