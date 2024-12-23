package co.com.colcomercio.financiero.interactions.selectOptions;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;
import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.EDITBOX_LASTNAME_ADDRES;


public class SelectID implements Interaction {

    private final NewUser newUser;
    private final String tipoID;

    public SelectID(NewUser newUser, String tipoID) {
        this.newUser = newUser;
        this.tipoID = tipoID;
    }

    //@Step("Seleccionando tipo de ID")
    @Override
    public <T extends Actor> void performAs(T actor) {
        switch (tipoID) {
            case "CC":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("CC")),
                        EnterText.intoField(newUser.getDataNewUsers().getCc(),EDITBOX_NUMBERID_ADDRESS),
                        EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                        EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES)
                );
                break;
            case "CE":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("CE")),
                        EnterText.intoField(newUser.getDataNewUsers().getCe(),EDITBOX_NUMBERID_ADDRESS),
                        EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                        EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES)
                );
                break;
            case "NIT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("NIT")),
                        EnterText.intoField(newUser.getDataNewUsers().getNit(),EDITBOX_NUMBERID_ADDRESS),
                        EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAMECOMPANY_ADDRES)
                );
                if (CHECK_SAVE_ADDRESS.isVisibleFor(actor)){
                    actor.attemptsTo(
                            EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_NAMEDELIVERY_ADDRES)
                    );
                }
                break;
            case "RUT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("RUT")),
                        EnterText.intoField(newUser.getDataNewUsers().getRut(),EDITBOX_NUMBERID_ADDRESS),
                        EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                        EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES)
                );
                break;
            case "PAS":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("PAS")),
                        EnterText.intoField(newUser.getDataNewUsers().getPas(),EDITBOX_NUMBERID_ADDRESS),
                        EnterText.intoField(newUser.getDataNewUsers().getName(),EDITBOX_NAME_ADDRES),
                        EnterText.intoField(newUser.getDataNewUsers().getLastname(),EDITBOX_LASTNAME_ADDRES)
                );
                break;
            default:
                break;
        }

    }
    public static SelectID type(NewUser newUser, String tipoID) {
        return Tasks.instrumented(SelectID.class, newUser, tipoID);
    }
}
