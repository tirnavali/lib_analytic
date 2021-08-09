class UsersController < ApplicationController
  def index
    @users = User.order(:email)
  end

  def edit
    set_user
  end

  def update
    set_user
    if @user.update_with_password(user_params)
      redirect_to users_path, notice: "Successfully updated"
    else
      #puts"#{@user.errors.inspect}################adsdfadsfas"
      render :edit, notice: "Something bad happened!"
    end
  end
  private

  def set_user
    @user = User.find(params[:id])    
  end

  def user_params
    params.require(:user).permit(
      :current_password,
      :password,
      :password_confirmation,
      :email
    )
  end
end
