package co.com.colcomercio.financiero.questions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import net.serenitybdd.screenplay.questions.WebElementQuestion;
import net.serenitybdd.screenplay.targets.Target;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class IsElementPresent implements Question<Boolean> {

    private static final Logger logger = LogManager.getLogger(IsElementPresent.class);
    private final Target target;

    public IsElementPresent(Target target) {
        this.target = target;
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        logger.info("Validando si el elemento "+target+ " esta presente");
        return WebElementQuestion.the(target).answeredBy(actor).isCurrentlyVisible();
    }

    public static IsElementPresent on(Target target) {
        return new IsElementPresent(target);
    }
}
