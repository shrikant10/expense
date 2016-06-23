package expense

class User {
    String firstName
    String lastName
    String email
    String password
    static constraints = {
        firstName(nullable: true)
        lastName(nullable: true)
        email(email: true)
        email(unique: true)
    }
}
