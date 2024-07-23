package co.com.colcomercio.financiero.utils;

import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;

public class CardDaraProvider {


    public static PaymentCard getCardData(String franquicia) {
        PaymentCard whithTheCardData;

        switch (franquicia.toLowerCase()) {
            case "visa":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_visa");
                break;
            case "diners":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_diners");
                break;
            case "mastercard":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_mastercard");
                break;
            case "amex":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_amex");
                break;
            case "alkosto":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_alkosto");
                break;
            case "codensa":
                whithTheCardData = GetDataModel.paymentCard("tarjeta_codensa");
                break;
            default:
                throw new IllegalArgumentException("Franquicia desconocida: " + franquicia);
        }

        return whithTheCardData;
    }
}
