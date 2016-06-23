package expense

class RegisterController {

    def index() {
        [myUser: new User()]
    }

    def save() {
        println("Parameters Received")
        println params.firstName
        println params.lastName
        println params.email
        println params.password

        User myPersonInstance = new User([firstName: params.firstName, lastName: params.lastName, email: params.email, password: params.password])

        println myPersonInstance.errors
        if (myPersonInstance.hasErrors()) {
            render(view: "index", model: [myUser: myPersonInstance])
        }
        myPersonInstance.save()
        redirect(controller: "login",action: "enter")
    }
}