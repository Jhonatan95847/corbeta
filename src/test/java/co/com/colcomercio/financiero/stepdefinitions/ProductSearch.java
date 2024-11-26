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
import io.cucumber.java.es.Y;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;

public class ProductSearch {

    private ProductList withTheData;


    //HARD LOGIN
    @Cuando("el cliente busca un producto {string} y selecciona {string} unidades")
    public void elClienteBuscaUnProductoYSeleccionaY(String producto, String cantidad) {
        withTheData = GetDataModel.productList(producto);
        theActorInTheSpotlight().attemptsTo(
                DeleteProducts.delete(),
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectQuantitiProduct.selectQuantity(cantidad)
        );
    }

    //HARD LOGIN CARD
    @Cuando("el usuario busca un producto {string} y selecciona {string} unidades")
    public void queUnClienteBuscaUnProductoYSeleccionaCantidadYMétodoDeEnvío(String producto, String cantidad) {
        withTheData = GetDataModel.productList(producto);
        theActorInTheSpotlight().attemptsTo(
                DeleteProducts.delete(),
                DeleteCard.delete(),
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectQuantitiProduct.selectQuantity(cantidad)
        );
    }
    //SOFT LOGIN
    @Dado("que el usuario inicialmente busca un producto {string} y selecciona {string} unidades")
    public void elClienteBuscaUnProductoYSeleccionaLaCantidadYMétodoDeEnvío(String producto, String cantidad) {
        withTheData = GetDataModel.productList(producto);
        theActorInTheSpotlight().attemptsTo(
                SearchProduct.addProduct(withTheData),
                SelectProduct.productSelect(),
                SelectQuantitiProduct.selectQuantity(cantidad)
        );
    }


    @Y("selecciona el método de envío {string}")
    public void seleccionaElMétodoDeEnvío(String metodoEnvio){
        theActorInTheSpotlight().attemptsTo(
                SelectShippingMetod.selectMethod(metodoEnvio),
                AddProduct.goToPay(),
                GoToPay.pay()
        );
    }
}
