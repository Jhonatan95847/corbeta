package co.com.colcomercio.financiero.userinterfaces.selectedProductPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ActionsOnProducrPage extends PageObject {
    public static final Target BUTTON_ADD_CAR =Target.the("Boton agregar al carrito").located(By.xpath("//div[@class=\"product-main-info\"]//button[@id=\"addToCartButton\"]"));
    public static final Target BUTTON_FREESHIPPING =Target.the("Boton Envio gratis").located(By.xpath("//label[@for=\"delivery_ship-to-address\"]"));
    //RECOGER EN TIENDA
    public static final Target BUTTON_STORE_PICKUP =Target.the("Boton Recoger en tienda").located(By.xpath("//div[contains(text(),'Recoge ')]"));
    public static final Target SELECT_CITY_PICKUP =Target.the("Select Ciudad recogida").located(By.xpath("//div[@class=\"modal-body__filters--city\"]//div[@class=\"float-select js-float-select active-click\"]"));
    public static final Target SELECT_BOGOTA =Target.the("Select Ciudad Bogota").located(By.xpath("//div[@class=\"modal-body__filters--city\"]//ul//li[contains(text(),'bogotá')]"));
    public static final Target RADIOBUTTON_TIENDA =Target.the("Radiobutton tienda").located(By.xpath("//div[@class=\"form-check custom-radio radio-green\"]//label[@for=\"AKB68-pickup\"]"));
    public static final Target BUTTON_SELECT_TIENDA =Target.the("Select tienda").located(By.xpath("//button[@id=\"locationAddToCart\"]"));
    //MISMO DIA REGISTRADO
    public static final Target BUTTON_SAME_DAY =Target.the("Boton Entrega hoy").located(By.xpath("//label[@for=\"delivery_same-day-delivery\"]"));
    public static final Target RADIOBUTTON_ADDRESS =Target.the("Radiobutton seleccionar direccion hoy").located(By.xpath("(//div[@data-line1=\"CL 84 # 24 - 78\"]//label)[2]"));
    public static final Target RADIOBUTTON_ADDRESS_CITY =Target.the("Radiobutton seleccionar direccion hoy Ciudad").located(By.xpath("//div[@class=\"form-check custom-radio\"]//label[@for=\"Bogotá\"]"));
    //MISMO DIA NUEVO
    public static final Target SELECT_DEPRTAMENT_SAME =Target.the("Select Departamento cliente nuevo").located(By.xpath("//div[@class=\"modal-body__form--department\"]//div[@class=\"float-select js-float-select\"]"));
    public static final Target SELECT_BOGOTADC =Target.the("Select Departamento Bogota").located(By.xpath("//div[@class=\"float-select--list js-float-list open\"]//li[contains(text(),'Bogota DC')]"));
    public static final Target SELECT_CITY_SAME =Target.the("Select Ciudad cliente nuevo").located(By.xpath("//div[@class=\"modal-body__form--city\"]//div[@class=\"float-select js-float-select\"]"));
    public static final Target SELECT_BOGOTACITY =Target.the("Select Ciudad Bogota").located(By.xpath("//div[@class=\"float-select--list js-float-list open\"]//li[contains(text(),'Bogotá')]"));
    public static final Target SELECT_ZONE_SAME =Target.the("Select Zona cliente nuevo").located(By.xpath("//div[@class=\"modal-body__form--zones js-localities-zones\"]//div[@class=\"float-select js-float-select active-click\"]"));
    public static final Target SELECT_CHAPZONE =Target.the("Select Zona Chapinero").located(By.xpath("//div[@class=\"float-select--list js-float-list open\"]//li[contains(text(),'Localidad nueva de Suba')]"));
    public static final Target BUTTON_CONTINUAR_HOY =Target.the("Baton continuar entrega hoy").located(By.xpath("//button[@id=\"js-sourcingAction\"]"));
    public static final Target BUTTON_CONTINUAR_HOY_CITY =Target.the("Baton continuar entrega hoy ciudad").located(By.xpath("//button[@id=\"same-day-delivery-choose-city\"]"));
    public static final Target BUTTON_CONTINUAR_HOY_NUEVO =Target.the("Baton continuar entrega hoy").located(By.xpath("//button[@id=\"js-verify-email-same-day-zones\"]"));
    public static final Target SELECT_QUANTITY_UNO =Target.the("Select cantidad").located(By.xpath("//div[@class=\"AddToCart-AddToCartAction\"]//div[@class=\"addtocart-component__select addtocart-select-quantity\"]"));
    public static final Target SELECT_NUMBERONE =Target.the("Select numero uno").locatedBy("//li[@data-value='{0}']");
    public static final Target VALIDATE_PRICE =Target.the("Validar precio").located(By.xpath("//span[@id=\"js-original_price\"]"));


}
