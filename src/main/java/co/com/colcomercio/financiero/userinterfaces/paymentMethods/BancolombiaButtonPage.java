package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class BancolombiaButtonPage extends PageObject {
    public static final Target BUTTON_CONTINUAR_BANCOLOMBIA = Target.the("Boton continuar Bancolombia").locatedBy("//button[@id=\"checkoutNextBancolombiaButton\"]");
    public static final Target BUTTON_CLIENTE_PERSONAS = Target.the("Boton app personas").locatedBy("(//button[@class='fua__loginOption'])[1]");
    public static final Target EDIT_BOX_USUARIO_BANCOLOMBIA = Target.the("Campo de texto usuario Bancolombia").locatedBy("//input[@name='usuario']");
    public static final Target BUTTON_CONTINUE = Target.the("Boton to continue").located(By.xpath("//button[@class='bsd-button__box bsd-button__box--primary']"));
    public static final Target NUMBER_LIST_PASSWORD = Target.the("list of numbers for enter password").located(By.xpath("//input"));
    public static final Target SELECT_ACCOUNT = Target.the("div with select class that contain the select options").located(By.xpath("//div[@id='selectedComponent']"));
    public static final Target LIST_OPTIONS_SELECT_ACCOUNT = Target.the("List of select options for account").located(By.xpath("//div[@class='bds-select__item bds-select__item--account']"));
    public static final Target BUTTON_REGRESAR = Target.the("Boton regresar al comercio").located(By.xpath("//button[@id=\"buttonBack\"]"));

}
