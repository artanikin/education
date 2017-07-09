class Web::SessionsController < Web::ApplicationController
  def new
  end

  def create
    user = User.find_by_email(session_params[:email])
    if user.try(:authenticate, session_params[:password])
      session[:user_id] = user.id
      redirect_to account_root_path
    else
      render :new
    end
  end

  def destroy
    respond_with(session.delete(:user_id), location: -> { root_path })
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
