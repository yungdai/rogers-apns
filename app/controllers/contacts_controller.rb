class ContactsController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login

end
  def index
    @contacts = Contact.where(apn_id: params[:apn_id])
    @apn = params[:apn_id]
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    if @contacts.save

  end

  def edit
  end

  def update

  end

  def destroy
  end
  private
  def contact_params
    params.require(:contact).permit(
        :first_name,
        :last_name,
        :company_name,
        :street_address,
        :city,
        :province_state,
        :country,
        :email,
        :phone_number1,
        :phone_number2,
        :technical_contact,
        :business_contact
    )
  end
end
