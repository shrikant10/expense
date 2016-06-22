package expense

class LoginController {

    def enter() {}

    def save() {
        println(params)
        List myPerson =[]

        myPerson = User.findByEmailLikeAndPasswordLike(params.email,                                                                params.password)

        session.recentlySavedUser = myPerson
        println(myPerson)
        if(myPerson!=null){
            redirect(controller:"profile",action: "display")
        }
        else{
            render("INVALID USER")
        }
    }
}
