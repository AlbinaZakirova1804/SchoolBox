class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      log_in!(@user)
      redirect_to root_path
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end


    # t.string :name
    # t.string :user_name
    # t.string :email
    # t.string :password_digest
    # t.timestamps
  private
  def user_params
    params.require(:user).permit(:name, :user_name, :email, :password)
  end

end
