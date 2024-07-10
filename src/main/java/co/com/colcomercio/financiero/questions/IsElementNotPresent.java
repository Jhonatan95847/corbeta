package co.com.colcomercio.financiero.questions;

import net.serenitybdd.screenplay.Question;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.questions.WebElementQuestion;
import net.serenitybdd.screenplay.targets.Target;

public class IsElementNotPresent implements Question {


    private final Target target;

    public IsElementNotPresent(Target target) {
        this.target = target;
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        return !WebElementQuestion.the(target).answeredBy(actor).isCurrentlyVisible();
    }

    public static IsElementNotPresent on(Target target) {
        return new IsElementNotPresent(target);
    }
}
