package co.com.colcomercio.financiero.userinterfaces.loginPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class SoftLoginPage extends PageObject {
    public static final Target EDITBOX_EMAIL_SOFT =Target.the("Texto correo softlogin").located(By.xpath("//input[@id=\"j_username\"]"));
    public static final Target BUTTON_CONTINUE_SOFT =Target.the("Boton continuar softlogin").located(By.xpath("(//button[contains(text(),' Continuar')])[1]"));


}
