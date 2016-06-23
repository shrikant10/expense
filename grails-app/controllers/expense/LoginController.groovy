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
            flash.message="INVALID USER"
            redirect(controller:"login", action: "enter")
        }
    }

    def home() {

    }
}
