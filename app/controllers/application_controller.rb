class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # if a CanCanCan exception is raised you will be sent back to the new session page with the exception as the alert.
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_session_url, alert: exception.message
  end

  # def current_user
  #   User.first
  # end

  def not_authenticated
  redirect_to new_session_url, :alert => "First login to access this page."
  end
end
