package co.com.colcomercio.financiero.models.users;

import co.com.colcomercio.financiero.models.users.UserEcomerce;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@Data
public class UserEcomerceList {

    private List<UserEcomerce> users;

}