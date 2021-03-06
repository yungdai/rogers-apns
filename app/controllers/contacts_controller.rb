class ContactsController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login

  def index
    @apn = Apn.find(params[:apn_id])
    @contacts = @apn.contacts.order(id: :asc).all
  end

  def show
    @contacts = Contact.order(id: :asc).all
  end

  def new
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    # make sure that when you create a new contact that you pass in the APN ID into the @contact (note it says contacts and not contact)
    @contact = @apn.contacts.build
  end

  def create
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    # make sure that when you create a new contact that you pass in the APN ID into the @contact (note it says contacts and not contact) You'll be passing the contact_params method
    @contact = @apn.contacts.build(contact_params)
    if @contact.save
      redirect_to apn_contacts_path
    else
      render :new
    end
  end

  def edit
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    # make sure that when you create a new contact that you pass in the APN ID into the @contact (note it says contacts and not contact) You'll be passing the contact_params method
    @contact = @apn.contacts.find(params[:id])
  end

  def update
    if @contact.update_attributes(contact_params)
      redirect_to apn_contacts_path, notice: 'Successfully Updated the APN Contact'
    else
      render :edit
    end
  end

  def destroy
    # makes sure that you find the right APN ID for that contact first
    @apn = Apn.find(params[:apn_id])
    @node = @apn.contacts.find(params[:id])
    @contact.destroy
    redirect_to apn_contacts_path, notice: 'Contact was deleted'
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
