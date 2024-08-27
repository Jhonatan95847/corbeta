package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.productList.ProductList;
import co.com.colcomercio.financiero.tasks.SearchProduct;
import co.com.colcomercio.financiero.tasks.SelectProduct;
import co.com.colcomercio.financiero.tasks.productOptions.AddProduct;
import co.com.colcomercio.financiero.tasks.productOptions.SelectQuantitiProduct;
import co.com.colcomercio.financiero.tasks.productOptions.SelectShippingMetod;
import co.com.colcomercio.financiero.tasks.shoppingCar.DeleteCard;
import co.com.colcomercio.financiero.tasks.shoppingCar.DeleteProducts;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Dado;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class ProductSearch {

    private ProductList withTheData;

    @Cuando("el cliente {string} busca un producto y selecciona cantidad {string} y método de envío {string}")
    public void elClienteBuscaUnProductoYSeleccionaY(String cliente, String cantidad, String metodoEnvio) {
        withTheData = GetDataModel.productList("lista_de_productos");

        theActorInTheSpotlight().attemptsTo(
                DeleteProducts.delete(),
                DeleteCard.delete(),
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectShippingMetod.selectMethod(metodoEnvio,cliente),
                SelectQuantitiProduct.selectQuantity(cantidad),
                AddProduct.goToPay(),
                GoToPay.pay()
        );
    }

    @Dado("que un cliente busca un producto y selecciona cantidad {string} y método de envío {string}")
    public void queUnClienteBuscaUnProductoYSeleccionaCantidadYMétodoDeEnvío(String cantidad, String metodoEnvio) {
        withTheData = GetDataModel.productList("lista_de_productos");
        theActorInTheSpotlight().attemptsTo(
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectShippingMetod.selectMethod(metodoEnvio,"nuevo"),
                SelectQuantitiProduct.selectQuantity(cantidad),
                AddProduct.goToPay(),
                GoToPay.pay()
        );
    }

    @Cuando("el cliente {string} busca un producto y selecciona la cantidad {string} y método de envío {string}")
    public void elClienteBuscaUnProductoYSeleccionaLaCantidadYMétodoDeEnvío(String cliente, String cantidad, String metodoEnvio) {
        withTheData = GetDataModel.productList("lista_de_productos");
        theActorInTheSpotlight().attemptsTo(
                DeleteProducts.delete(),
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectShippingMetod.selectMethod(metodoEnvio,cliente),
                SelectQuantitiProduct.selectQuantity(cantidad),
                AddProduct.goToPay(),
                GoToPay.pay()
        );
    }
}
