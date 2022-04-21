module SessionsStudentHelper
    def log_in_student(user)
        session[:user_id] = user.id
    end

    def current_user_student
        if session[:user_id]
            @current_user_student ||= Student.find_by(id: session[:user_id])
        end
    end

    def logged_in_student?
        !current_user_student.nil?
    end
end
