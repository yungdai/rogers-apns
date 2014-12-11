class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def current_user
  #   User.first
  # end

  def not_authenticated
  redirect_to new_session_url, :alert => "First login to access this page."
  end
end
