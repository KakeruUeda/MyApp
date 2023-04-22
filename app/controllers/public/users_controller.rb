class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @letters = @user.letters
    @letter = Letter.new
  end
end
