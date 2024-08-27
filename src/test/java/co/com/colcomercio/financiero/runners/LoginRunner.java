package co.com.colcomercio.financiero.runners;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;
@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources/features",
        tags = "@tarjetaAlkostoRegistradoSoftlogin",
        glue = {"co.com.colcomercio.financiero.stepdefinitions"},
        snippets = CucumberOptions.SnippetType.CAMELCASE)
public class LoginRunner {
}