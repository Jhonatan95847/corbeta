package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class WaitForElementIsClickeable implements Interaction {
    private final WebElementFacade element;
    private final long duration;

    public static WaitWith with() {
        return new WaitWith();
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        WebDriverWait wait = new WebDriverWait(BrowseTheWeb.as(actor).getDriver(), Duration.ofSeconds(duration));
        WebElement elemento = element.getWrappedElement();
        wait.until(ExpectedConditions.elementToBeClickable(elemento));
    }

    public WaitForElementIsClickeable(WebElementFacade element, long duration) {
        this.element = element;
        this.duration = duration;
    }

    public static class WaitWith {
        private WebElementFacade element;

        public WaitWith element(WebElementFacade element) {
            this.element = element;
            return this;
        }

        public WaitWith and() {
            return this;
        }

        public WaitForElementIsClickeable duration(int duration) {
            return Tasks.instrumented(WaitForElementIsClickeable.class, this.element, duration);
        }
    }
}