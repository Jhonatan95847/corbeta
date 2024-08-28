package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Performable;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;

public class ScrollToPosition implements Task {
    private static final Logger logger = LogManager.getLogger(ScrollToPosition.class);
    private final int x;
    private final int y;

    public ScrollToPosition(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public static Performable to(int x, int y) {
        return new ScrollToPosition(x, y);
    }

    @Override
    //@Step("{0} scrolls to position (#x, #y)")
    public <T extends Actor> void performAs(T actor) {
        logger.info("Scroll a la posicion");
        WebDriver driver = BrowseTheWeb.as(actor).getDriver();
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollTo(arguments[0], arguments[1]);", x, y);
    }
}