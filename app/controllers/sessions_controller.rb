class SessionsController < ApplicationController
  def new
    # @ = .new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user
      log_in user
      redirect_back_or user
    else
      # flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
  
end
