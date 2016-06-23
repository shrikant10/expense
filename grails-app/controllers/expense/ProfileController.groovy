package expense

class ProfileController {

    def display() {
        if (session.recentlySavedUser == null) {
            redirect(controller: "login", action: "enter")
        }
        return [recentlySavedUser: session.recentlySavedUser]
    }

    def edit() {
        if (session.recentlySavedUser == null) {
            redirect(controller: "login", action: "enter")
        } else {
            println(session.recentlySavedUser.id)
            return [edit1: session.recentlySavedUser]
        }
    }

    def update() {
        if (session.recentlySavedUser == null) {
            redirect(controller: "login", action: "enter")
        } else {
            flash.message ="Successfully updated your profile"
            println "Received parameters to update: ${params}"
            User myPerson = User.get(params.id)
            myPerson.firstName = params.firstName
            myPerson.lastName = params.lastName
            myPerson.email = params.email
            myPerson.password = params.password
            myPerson.save(flush: true)
            render(view: "display", model: [recentlySavedUser: myPerson])
        }
    }
}