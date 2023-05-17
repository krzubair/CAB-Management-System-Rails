module ApplicationHelper


def current_user
    # The current_user method returns the user record if it exists, or nil if the user_id is not found in the session.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
    
def logged_in?
    # checks if current user is login
    # !! will convert the value into boolean
    !!current_user
end
end
