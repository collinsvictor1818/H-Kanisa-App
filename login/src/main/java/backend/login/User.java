
package backend.login;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import lombok.Data;

//To use the @Data annotation you should add the Lombok dependency.
@Data
@Entity
public class User {
    @Id
    @GeneratedValue
    Integer id;

    String username;
    String password;

    
}
