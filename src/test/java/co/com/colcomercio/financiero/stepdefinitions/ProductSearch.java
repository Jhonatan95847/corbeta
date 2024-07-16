package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.models.productList.ProductList;
import co.com.colcomercio.financiero.tasks.SearchProduct;
import co.com.colcomercio.financiero.tasks.SelectProduct;
import co.com.colcomercio.financiero.tasks.login.LoginNewUser;
import co.com.colcomercio.financiero.tasks.productOptions.SelectQuantitiProduct;
import co.com.colcomercio.financiero.tasks.productOptions.SelectShippingMetod;
import co.com.colcomercio.financiero.tasks.shoppingCar.DeleteProducts;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Dado;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class ProductSearch {

    private ProductList withTheData;
    @Cuando("realiza la busqueda de un productos y cantidad {string}")
    public void realizaLaBusquedaDeYCantidad( String cantidad) {
        withTheData = GetDataModel.productList("lista_de_productos");

        theActorInTheSpotlight().attemptsTo(
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect()
        );
    }

    @Cuando("el cliente {string} busca un producto y selecciona cantidad {string} y método de envío {string}")
    public void elClienteBuscaUnProductoYSeleccionaY(String cliente, String cantidad, String metodoEnvio) {
        withTheData = GetDataModel.productList("lista_de_productos");

        theActorInTheSpotlight().attemptsTo(
                DeleteProducts.delete(),
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectShippingMetod.selectMethod(metodoEnvio,cliente),
                SelectQuantitiProduct.selectQuantity(cantidad)
        );
    }
}
