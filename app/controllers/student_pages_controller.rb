class StudentPagesController < ApplicationController

  def home
    
  end

  def eval
    @student = Student.find_by(id: current_user_student.id)
    @evaluations = Evaluate.select { |e| e.recipient_id == current_user_student.id }
  end
  
end
