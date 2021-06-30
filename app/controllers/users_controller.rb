class UsersController < ApplicationController
  def index
    @users = User.order(:email)
  end
end
