class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
    redirect parent_path(user.parent_id)
  end

  def check_logged_in
    redirect_to '/', notice: 'must be logged in' unless current_user
  end
end
