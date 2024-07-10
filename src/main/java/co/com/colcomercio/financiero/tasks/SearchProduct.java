package co.com.colcomercio.financiero.tasks;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.productList.ProductList;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_SEARCH_BAR;
import static co.com.colcomercio.financiero.userinterfaces.HomePage.EDITBOX_SEARCH_BAR;
import static co.com.colcomercio.financiero.userinterfaces.SearchResultsPage.*;

public class SearchProduct implements Task {

    private static final Logger logger = LogManager.getLogger(SearchProduct.class);
    private final ProductList productList;

    public SearchProduct(ProductList productList) {this.productList = productList;}


    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("########################BUSCANDO PRODUCTO########################");
        actor.attemptsTo(
                EnterText.intoField(productList.getDataProductList().getProductName(),EDITBOX_SEARCH_BAR),
                ClickOnElement.on(BUTTON_SEARCH_BAR),
                WaitUntil.the(VALIDATE_PRICE, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Ensure.that(IsElementPresent.on(VALIDATE_PRICE)).isTrue(),
                Ensure.that(IsElementPresent.on(VALIDATE_NAME_PRODUCT)).isTrue(),
                Ensure.that(IsElementPresent.on(VALIDATE_IMAGE_PRODUCT)).isTrue(),
                Ensure.that(IsElementPresent.on(VALIDATE_DATA_PRODUCT)).isTrue(),
                Ensure.that(IsElementPresent.on(VALIDATE_FILTER)).isTrue()
        );
    }

    public static SearchProduct addProduct(ProductList productList) {
        return Tasks.instrumented(SearchProduct.class, productList);
    }
}
