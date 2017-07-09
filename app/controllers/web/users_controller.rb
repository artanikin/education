class Web::UsersController < Web::ApplicationController
  def new
    respond_with(@user = User.new)
  end

  def create
    respond_with(@user = User.create(user_params), location: -> { root_path })
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
