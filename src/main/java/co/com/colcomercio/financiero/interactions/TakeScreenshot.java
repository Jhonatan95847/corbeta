package co.com.colcomercio.financiero.interactions;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.io.FileHandler;
import net.serenitybdd.core.Serenity;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;
import net.thucydides.core.annotations.Step;

import java.io.File;
import java.io.IOException;

public class TakeScreenshot implements Task {


    @Override
    @Step("{0} toma una captura de pantalla")
    public <T extends Actor> void performAs(T actor) {

        TakesScreenshot takesScreenshot = (TakesScreenshot) BrowseTheWeb.as(actor).getDriver();
        File screenshot = takesScreenshot.getScreenshotAs(OutputType.FILE);
        try {
            // Crear un archivo temporal
            File tempFile = File.createTempFile("screenshot-", ".png");
            FileHandler.copy(screenshot, tempFile);
            Serenity.recordReportData().withTitle("Screenshot").andContents(tempFile.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static TakeScreenshot at() {
        return new TakeScreenshot();
    }
}


