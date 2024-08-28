package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;


public class TakeScreenshot implements Task {

    private static final Logger logger = LogManager.getLogger(TakeScreenshot.class);

    @Override
    //@Step("{0} toma una captura de pantalla")
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################TOMANDO SCREENSHOT##############################");


        WebDriver driver = BrowseTheWeb.as(actor).getDriver();
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);

        // Serenity automáticamente incluye esta captura en el informe
        actor.remember("captura", screenshot);

    }

    public static TakeScreenshot at() {
        return new TakeScreenshot();
    }
}


