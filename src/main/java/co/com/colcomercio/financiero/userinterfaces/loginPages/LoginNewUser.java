package co.com.colcomercio.financiero.userinterfaces.loginPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class LoginNewUser extends PageObject {
    public static final Target EITBOX_NAME =Target.the("Campo Nombre usuario nuevo").located(By.xpath("//form[@id=\"alkostoRegisterForm\"]//input[@id=\"register.firstName\"]"));
    public static final Target EITBOX_LASTNAME =Target.the("Campo Apellido usuario nuevo").located(By.xpath("//form[@id=\"alkostoRegisterForm\"]//input[@id=\"register.lastName\"]"));
    public static final Target EITBOX_PHONE =Target.the("Campo Celular usuario nuevo").located(By.xpath("//form[@id=\"alkostoRegisterForm\"]//input[@id=\"register.mobileNumber\"]"));
    public static final Target CHECK_CONDITIONS =Target.the("Check Box Aceptar condiciones").located(By.xpath("//form[@id=\"alkostoRegisterForm\"]//label[@for=\"registerChkTermsConditions\"]"));
    public static final Target BUTTON_CONTINUE_NEW =Target.the("Check Box Aceptar condiciones").located(By.xpath("//button[@class=\"button-primary btn-block js-btn-register-myaccount\"]"));
}
