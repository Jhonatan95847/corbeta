package co.com.colcomercio.financiero.exceptions;

public class PaymentGatewayErrorException extends AssertionError{
    public static final String PSE_ERROR = "Servicio PSE inestable";
    public  static final String PAYMENT_GATEWAY_ERROR = "Pasarela inestable para tarjeta crédito";
    public  static final String PAYMENT_GATEWAY_ERROR_DEBIT_CARD = "Pasarela inestable para tarjeta débito";
    public PaymentGatewayErrorException(String message){
        super(message);
    }
    public PaymentGatewayErrorException(String message, Throwable cause){
        super(message, cause);
    }

}