class UsersController < ApplicationController
  protect_from_forgery

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to posts_path
    else
      flash.now[:notice] = @user.error.full_messages.to_sentence
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
