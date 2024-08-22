package co.com.colcomercio.financiero.userinterfaces.loginPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class LoginPage extends PageObject {
    public static final Target EDITBOX_EMAIL =Target.the("Texto correo login").located(By.xpath("//input[@id=\"js-login-email\"]"));
    public static final Target BUTTON_CONTINUE_LOGIN =Target.the("Boton Continuar Login").located(By.xpath("//div[@class=\"js-normal-body-login\"]//button[contains(text(),' Continuar')]"));
    public static final Target TEXT_LOGIN =Target.the("Texto Iniciar sesion").located(By.xpath("//h1[contains(text(),'Iniciar sesión')]"));
    public static final Target TEXT_PLEASE_ID =Target.the("Texto Porfacor identificate").located(By.xpath("//span[contains(text(),'Por favor identifícate para ')]"));

}