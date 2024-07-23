package co.com.colcomercio.financiero.models.registeruser;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@Data
public class UsersEcomerceList {

    private List<UserEcomerce> users;

}