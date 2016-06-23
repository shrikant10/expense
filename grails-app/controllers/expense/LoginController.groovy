package expense

class LoginController {

    def enter() {}

    def save() {
        println(params)

        def myPerson = User.findByEmailAndPassword(params.email,params.password)

        println(myPerson)
        if(myPerson!=null){
            session.recentlySavedUser = myPerson
            redirect(controller: "profile",action: "display")
        }
        else{
            render("INVALID USER")
        }

    }

    def home() {

    }
}
