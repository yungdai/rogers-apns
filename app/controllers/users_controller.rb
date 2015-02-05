class UsersController < ApplicationController
  # skip_before_filter :require_login, :only => [:index, :new, :create, :activate]
  # load_and_authorize_resource

  # required to be logged in to be able to see the page.
  # before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # automatically log in the user to the website after he's created himself - this is method gained from sorcery
      # auto_login(@user)
      # # used when a user tries to access a page while logged out, is asked to login
      redirect_back_or_to root_url, :notice => "Signed up!  Please log in after you have authenicated"
    else
      render :new
    end
  end

  def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(
        :email,
        :first_name,
        :last_name,
        :company_name,
        :street_address,
        :city,
        :phone_number1,
        :phone_number2,
        :administrator,
        :username,
        :password,
        :password_confirmation
    )
  end
end
