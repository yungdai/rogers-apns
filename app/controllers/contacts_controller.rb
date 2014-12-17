class ContactsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create

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
