package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.utils.GetDataModel;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class AddNewAddress implements Task {

    private final String tipoID;
    private static final Logger logger = LogManager.getLogger(AddNewAddress.class);

    private NewUser newUser;

    public AddNewAddress(String tipoID, NewUser newUser) {
        this.tipoID = tipoID;
        this.newUser = newUser;
    }

    @Step("Agregando una nueva direccion en el proceso de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        newUser = GetDataModel.newUser("datos_nuevo_usuario");

        logger.info("#########################AGREGANDO UNA NUEVA DIRECCION#########################");
        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                WaitUntil.the(LIST_TIPO_ID, WebElementStateMatchers.isVisible()).forNoMoreThan(30).seconds(),
                ScrollToElement.to(LIST_TIPO_ID),
                ClickOnElement.on(LIST_TIPO_ID),
                SelectID.type(newUser,tipoID),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EDITBOX_PHONE_ADDRES),
                ScrollToElement.to(LIST_DEPARTAMENT_ADDRES),
                ClickOnElement.on(LIST_DEPARTAMENT_ADDRES),
                ClickOnElement.on(SELECT_LIST_ADDRES.of("Bogota dc")),
                ClickOnElement.on(LIST_CITY_ADDRES),
                ClickOnElement.on(SELECT_LIST_ADDRES.of("Bogotá dc")),
                EnterText.intoField(newUser.getDataNewUsers().getAddress(),EDITBOX_SHIPPING_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getNeighborhood(),EDITBOX_BARRIO_ADDRES),
                Wait.withDuration(LOW_TIME)
        );
        if (CHECK_SAVE_ADDRESS.isVisibleFor(actor)){
            actor.attemptsTo(
                    Wait.withDuration(1),
                    ScrollToElement.to(RADIOBUTTON_MISMOS_DATOS),
                    //Wait.withDuration(1),
                    ScrollToElement.to(BUTTON_CONTINUAR_ADDRES),
                    ClickOnElement.on(BUTTON_CONTINUAR_ADDRES),
                    Wait.withDuration(LOW_TIME),
                    WaitUntil.the(RADIOBUTTON_CONFIRMAR_ADDRES, WebElementStateMatchers.isVisible()).forNoMoreThan(30).seconds(),
                    ClickOnElement.on(RADIOBUTTON_CONFIRMAR_ADDRES),
                    //Wait.withDuration(1),
                    ScrollToElement.to(BUTTON_CONFIRMAR_ADDRES),
                    ClickOnElement.on(BUTTON_CONFIRMAR_ADDRES),
                    Wait.withDuration(LOW_TIME)
            );
        }else {
            actor.attemptsTo(
                    ScrollToElement.to(BUTTON_CONTINUAR_ADDRES),
                    ClickOnElement.on(BUTTON_CONTINUAR_ADDRES),
                    Wait.withDuration(LOW_TIME)
            );

        }

    }

    public static AddNewAddress selectAddress(NewUser newUser, String tipoID) {
        return Tasks.instrumented(AddNewAddress.class, tipoID, newUser);
    }
}