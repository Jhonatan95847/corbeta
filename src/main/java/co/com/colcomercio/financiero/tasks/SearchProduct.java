package co.com.colcomercio.financiero.tasks;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.productList.ProductList;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.*;
import static co.com.colcomercio.financiero.userinterfaces.SearchResultsPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.*;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class SearchProduct implements Task {

    private static final Logger logger = LogManager.getLogger(SearchProduct.class);
    private final ProductList productList;

    public SearchProduct(ProductList productList) {this.productList = productList;}

    @Step("Buscando el producto")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("################################BUSCANDO PRODUCTO##############################");
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(EDITBOX_SEARCH_BAR_ADICIONAL),
                WaitUntil.the(EDITBOX_SEARCH_BAR_ADICIONAL, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //TakeScreenshot.at("target/site/serenity"),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(EDITBOX_SEARCH_BAR_ADICIONAL),
                ClickOnElement.on(EDITBOX_SEARCH_BAR_ADICIONAL),
                WaitUntil.the(EDITBOX_SEARCH_BAR, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                EnterText.intoField(productList.getDataProductList().getProductName(),EDITBOX_SEARCH_BAR),
                Wait.withDuration(5),
                WaitUntil.the(BUTTON_SEARCH_BAR_DOS, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_SEARCH_BAR_DOS),
                WaitUntil.the(VALIDATE_PRICE, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                Wait.withDuration(MICRO_TIME)
                //GetText.ofElement(VALIDATE_PRICE),
                //Ensure.that(IsElementPresent.on(VALIDATE_PRICE)).isTrue(),
                //Ensure.that(IsElementPresent.on(VALIDATE_NAME_PRODUCT)).isTrue(),
                //Ensure.that(IsElementPresent.on(VALIDATE_IMAGE_PRODUCT)).isTrue(),
                //Ensure.that(IsElementPresent.on(VALIDATE_DATA_PRODUCT)).isTrue(),
                //Ensure.that(IsElementPresent.on(VALIDATE_FILTER)).isTrue()
        );
    }

    public static SearchProduct addProduct(ProductList productList) {
        return Tasks.instrumented(SearchProduct.class, productList);
    }
}
