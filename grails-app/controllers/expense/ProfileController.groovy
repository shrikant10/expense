package expense

class ProfileController {

    def display() {
        println(myPerson)
        User log = User.get(myPerson)
        return [recentlySavedUser: log]
    }

    def edit() {
        return [edit1: User.get(params.id)]
    }

    def update() {
        println "Received parameters to update: ${params}"
        User myPerson = User.get(params.id)
        myPerson.firstName = params.firstname
        myPerson.lastName = params.lastname
        myPerson.email = params.email
        myPerson.password = params.password
        myPerson.save(flush: true)
        render(action: "display",model: [myPerson:myPerson])
    }
}
