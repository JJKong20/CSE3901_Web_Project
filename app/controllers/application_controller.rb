class ApplicationController < ActionController::Base
  include SessionsHelper
  include SessionsStudentHelper
  def hello
    render html: "Hello World"
  end
  
end
