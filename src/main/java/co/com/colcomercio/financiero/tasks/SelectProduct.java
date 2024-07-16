package co.com.colcomercio.financiero.tasks;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.models.productList.ProductList;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_SEARCH_BAR;
import static co.com.colcomercio.financiero.userinterfaces.SearchResultsPage.BUTTON_FIRST_RESULT;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.SelectedProductPage.VALIDATE_CHARACTERISTICS;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.SelectedProductPage.VALIDATE_NAME_PRODUCTC;

public class SelectProduct implements Task {

    private static final Logger logger = LogManager.getLogger(SelectProduct.class);
    @Step("Seleccionando el producto")
    @Override
    public <T extends Actor> void performAs(T actor) {
logger.info("################################SELECCIONANDO EL PRODUCTO##############################");
        actor.attemptsTo(
                WaitUntil.the(BUTTON_FIRST_RESULT, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                //WaitUntil.the(BUTTON_FIRST_RESULT, WebElementStateMatchers.isClickable()),
                ClickOnElement.on(BUTTON_FIRST_RESULT)
                //Ensure.that(IsElementPresent.on(VALIDATE_NAME_PRODUCTC)).isTrue()
                //Ensure.that(IsElementPresent.on(VALIDATE_CHARACTERISTICS)).isTrue(),
                //Ensure.that(IsElementPresent.on(VALIDATE_CHARACTERISTICS)).isTrue()
        );

    }
    public static SelectProduct productSelect() {
        return Tasks.instrumented(SelectProduct.class);
    }
}
