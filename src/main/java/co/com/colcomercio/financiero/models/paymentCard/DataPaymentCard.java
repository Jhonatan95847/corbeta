package co.com.colcomercio.financiero.models.paymentCard;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DataPaymentCard {
    private String cardNumber;
    private String expirationDate;
    private String cvv;
    private String name;

}
