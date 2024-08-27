package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class PayBancolombiaButton implements Task {
    private static final Logger logger = LogManager.getLogger(PayBancolombiaButton.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE PSE##############################");
            actor.attemptsTo(
                    SelectPayMethod.payMethod("PSE")
            );
    }
    public static PayBancolombiaButton pay(){return Tasks.instrumented(PayBancolombiaButton.class);}
}
