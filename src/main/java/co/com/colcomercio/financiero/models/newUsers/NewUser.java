package co.com.colcomercio.financiero.models.newUsers;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class NewUser {
    private String key;
    private DataNewUsers dataNewUsers;
}