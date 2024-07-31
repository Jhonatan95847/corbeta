package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;
import net.serenitybdd.screenplay.targets.Target;
import net.thucydides.core.annotations.Step;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import static net.serenitybdd.screenplay.Tasks.instrumented;


public class ScrollToElement implements Interaction {


    private final Target target;

    public ScrollToElement(Target target) {
        this.target = target;
    }

    public static ScrollToElement to(Target target) {
        return instrumented(ScrollToElement.class, target);
    }

    @Step("{0} scrolls to #target")
    @Override
    public <T extends Actor> void performAs(T actor) {
        WebDriver driver = BrowseTheWeb.as(actor).getDriver();
        WebElement element = target.resolveFor(actor);

        ((JavascriptExecutor) driver).executeScript(
                "const element = arguments[0];" +
                        "const rect = element.getBoundingClientRect();" +
                        "window.scrollBy({top: rect.top - (window.innerHeight / 2), left: 0, behavior: 'instant'});",
                element
        );
    }
}
