class StudentPagesController < ApplicationController

  def home
    
  end

  def eval
    @student = Student.find_by(id: current_user_student)
  end
  
end
