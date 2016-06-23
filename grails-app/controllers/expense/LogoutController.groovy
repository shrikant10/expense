package expense

class LogoutController {

    def index() {
        session.recentlySavedUser = null
        flash.message ="Successfully logged out"
        if (session.recentlySavedUser == null) {
            redirect(controller: "login", action: "enter")
        }
    }
}
