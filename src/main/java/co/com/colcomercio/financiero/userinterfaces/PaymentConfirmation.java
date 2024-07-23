package co.com.colcomercio.financiero.userinterfaces;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class PaymentConfirmation extends PageObject {
    public static final Target BUTTON_MYACCOUNT =Target.the("Boton Mi Cuenta").located(By.xpath("//li[@id=\"js-myaccount-header\"]//span[contains(text(),'Mi cuenta')]"));

}
