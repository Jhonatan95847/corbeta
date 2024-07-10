package co.com.colcomercio.financiero.userinterfaces.loginPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class LoginRegisterPassPage extends PageObject {
    public static final Target EDITBOX_PASSWORD =Target.the("Texto Contraseña usuario registrado").located(By.xpath("//input[@id=\"j_password\"]"));
    public static final Target BUTTON_CONTINUE_PASS =Target.the("Texto Contraseña usuario registrado").located(By.xpath("//form[@id=\"loginForm\"]//button[@class=\"button-primary js-login-email-password\"]"));



}
