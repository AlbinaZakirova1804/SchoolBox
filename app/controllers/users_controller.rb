class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:edit, :update]
  def show
    @user = User.find(@current_user.id)
  end

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


  def edit
    find_user#@user = User.find(@current_user.id)
  end

  def update
    find_user#@user = User.find(@current_user.id)
  
    @current_user.update(user_params)
    redirect_to '/users/:id/profile'
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

  def find_user
    @user = User.find(@current_user.id)
  end

end
