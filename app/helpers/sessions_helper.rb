module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user_admin
        if session[:user_id]
            @current_user ||= Admin.find_by(id: session[:user_id])
        end
    end

    def logged_in?
        !current_user_admin.nil?
    end
end
