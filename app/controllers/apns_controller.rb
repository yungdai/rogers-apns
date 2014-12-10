class ApnsController < ApplicationController
  # required to be logged in to be able to see the page.
  before_action :require_login

  # calls the user_ownership method for the :edit and :update commands to check to see if the user actually owns the project before they can see the edit page.
  before_action :user_ownership, only: [:edit, :update]
  def index
  end

  def show
  end

  def edit
  end

  def new
  end

  private
  # this private method checks to see if the current user owns a project
  def user_ownership
    @apn = Apn.find(params[:id])
    redirect_to apn_path(@apn) unless current_user == @apn.user || current_user == @user.administrator?
  end
end
