package co.com.colcomercio.financiero.models.paymentCard;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class PaymentCard {
    private String key;
    private DataPaymentCard dataPaymentCard;
}
