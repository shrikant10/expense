package expense

class LogoutController {

    def index(){
        if(session.recentlySavedUser==null)
        {redirect(controller: "login",action: "enter")}
        session.recentlySavedUser=null
    }
}
