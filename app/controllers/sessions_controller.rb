class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
      # for log in form
  end

  def create

    @user = User.find_by(params[:user_name])
#byebug
    if @user && @user.authenticate(params[:password])

      log_in!(@user)
      flash[:notes] = "Welcome to the App!"
      redirect_to root_path#'/users/:id/profile'#current_user
    else
      #flash[:error] = @user.errors.full_messages
      render :new
    end
  end

    def logout
      # session[:user_id] = nil
      session.delete :user_id
      redirect_to login_path
    end

end
