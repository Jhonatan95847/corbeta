package co.com.colcomercio.financiero.models.users;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class UserEcomerce {
    private String email;
    private String passwordMail;
    private String passwordEcomerce;
    private boolean isUsed;
}