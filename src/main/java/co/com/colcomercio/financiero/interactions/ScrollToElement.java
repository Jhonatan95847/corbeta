package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Scroll;
import net.serenitybdd.screenplay.targets.Target;
import net.thucydides.core.annotations.Step;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

public class ScrollToElement implements Interaction {

    static WebDriver driver;
    private final Target element;

    public ScrollToElement(Target element) {
        this.element = element;
    }
    public static ScrollToElement to(Target element) {
        return Tasks.instrumented(ScrollToElement.class, element);
    }
    @Step("Scroll hacia el elemento")
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Scroll.to(element)
        );
    }
}
