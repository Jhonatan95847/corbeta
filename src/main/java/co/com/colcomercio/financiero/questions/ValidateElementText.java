package co.com.colcomercio.financiero.questions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import net.serenitybdd.screenplay.questions.WebElementQuestion;
import net.serenitybdd.screenplay.targets.Target;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class ValidateElementText implements Question<String> {
    private static final Logger logger = LogManager.getLogger(ValidateElementText.class);
    private final Target target;

    public ValidateElementText(Target target) {
        this.target = target;
    }

    @Override
    public String answeredBy(Actor actor) {
        String element = WebElementQuestion.the(target).answeredBy(actor).getText();

        logger.info(element,"EL texto es:");
        return element;
    }

    public static ValidateElementText of(Target target) {
        return new ValidateElementText(target);
    }
}
