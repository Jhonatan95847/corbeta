package co.com.colcomercio.financiero.models.users;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data

public class Users {
    private String key;
    private DataUsers dataUsers;
}