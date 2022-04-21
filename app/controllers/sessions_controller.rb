class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in admin
      redirect_to '/admin_pages/home'
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
