package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;
import static jdk.internal.org.jline.utils.Log.error;

public class AddNewAddress implements Task {

    private final String tipoID;
    private final NewUser newUser;

    public AddNewAddress(String tipoID, NewUser newUser) {
        this.tipoID = tipoID;
        this.newUser = newUser;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {


        actor.attemptsTo(
                ClickOnElement.on(LIST_TIPO_ID)
        );
        switch (tipoID) {
            case "CC":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_TIPO_ID.of("CC"))
                );
                break;
            case "CE":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_TIPO_ID.of("CE"))
                );
                break;
            case "NIT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_TIPO_ID.of("NIT"))
                );
                break;
            case "RUT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_TIPO_ID.of("RUT"))
                );
                break;
            case "PAS":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_TIPO_ID.of("PAS"))
                );
                break;
            default:
                error();
                break;
        }

        actor.attemptsTo(
                EnterText.intoField(newUser.getDataNewUsers().getId(),EDITBOX_NUMBERID_ADDRESS),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EDITBOX_PHONE_ADDRES),
                ClickOnElement.on(LIST_DEPARTAMENT_ADDRES),
                ClickOnElement.on(LIST_CITY_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getAddress(),EDITBOX_SHIPPING_ADDRES),
                EnterText.intoField(newUser.getDataNewUsers().getNeighborhood(),EDITBOX_BARRIO_ADDRES),
                ClickOnElement.on(CHECK_SAVE_ADDRESS),
                ClickOnElement.on(BUTTON_CONTINUAR_ADDRES),
                ClickOnElement.on(RADIOBUTTON_CONFIRMAR_ADDRES),
                ClickOnElement.on(BUTTON_CONFIRMAR_ADDRES)
        );

    }

    public static AddNewAddress selectAddress(NewUser newUser, String tipoID) {
        return Tasks.instrumented(AddNewAddress.class, tipoID, newUser);
    }
}
