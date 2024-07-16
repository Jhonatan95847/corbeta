package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.SelectID;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;
import static jdk.internal.org.jline.utils.Log.error;

public class AddNewAddress implements Task {

    private final String tipoID;private static final Logger logger = LogManager.getLogger(AddNewAddress.class);

    private final NewUser newUser;

    public AddNewAddress(String tipoID, NewUser newUser) {
        this.tipoID = tipoID;
        this.newUser = newUser;
    }

    @Step("Agregando una nueva direccion en el proceso de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {

        logger.info("#########################AGREGANDO UNA NUEVA DIRECCION#########################");
        actor.attemptsTo(
                WaitUntil.the(VALIDATE_DIRECCION_ENVIO, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ScrollToElement.to(VALIDATE_DIRECCION_ENVIO),
                ClickOnElement.on(LIST_TIPO_ID),
                SelectID.type(tipoID),
                WaitUntil.the(EDITBOX_PHONE_ADDRES, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                EnterText.intoField(newUser.getDataNewUsers().getId(),EDITBOX_NUMBERID_ADDRESS),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EDITBOX_PHONE_ADDRES),
                ClickOnElement.on(LIST_DEPARTAMENT_ADDRES),
                ClickOnElement.on(SELECT_LIST_ADDRES.of("Bogota dc")),
                ClickOnElement.on(LIST_CITY_ADDRES),
                ClickOnElement.on(SELECT_LIST_ADDRES.of("Bogotá dc")),
                EnterText.intoField(newUser.getDataNewUsers().getAddress(),EDITBOX_SHIPPING_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getNeighborhood(),EDITBOX_BARRIO_ADDRES),
                ClickOnElement.on(CHECK_SAVE_ADDRESS),
                ClickOnElement.on(BUTTON_CONTINUAR_ADDRES),
                WaitUntil.the(RADIOBUTTON_CONFIRMAR_ADDRES, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ClickOnElement.on(RADIOBUTTON_CONFIRMAR_ADDRES),
                ClickOnElement.on(BUTTON_CONFIRMAR_ADDRES)
        );

    }

    public static AddNewAddress selectAddress(NewUser newUser, String tipoID) {
        return Tasks.instrumented(AddNewAddress.class, tipoID, newUser);
    }
}
