package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.targets.Target;
import net.thucydides.core.annotations.Step;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.SELECT_LIST_ADDRES;
import static jdk.internal.org.jline.utils.Log.error;

public class SelectID implements Interaction {

    private final String tipoID;

    public SelectID(String tipoID) {
        this.tipoID = tipoID;
    }
    public static SelectID type(String tipoID) {
        return Tasks.instrumented(SelectID.class, tipoID);
    }
    @Step("Seleccionando tipo de ID")
    @Override
    public <T extends Actor> void performAs(T actor) {
        switch (tipoID) {
            case "CC":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("CC"))
                );
                break;
            case "CE":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("CE"))
                );
                break;
            case "NIT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("NIT"))
                );
                break;
            case "RUT":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("RUT"))
                );
                break;
            case "PAS":
                actor.attemptsTo(
                        ClickOnElement.on(SELECT_LIST_ADDRES.of("PAS"))
                );
                break;
            default:
                error();
                break;
        }

    }
}
