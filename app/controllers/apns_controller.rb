class ApnsController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login



  def index
    @apns = Apn.all
  end

  def show
    @apns = Apn.all
  end

  def edit
    @apn = Apn.find(params[:id])
  end

  def update
    @apn = Apn.find(params[:id])

    if @apn.update_attributes(apn_params)
      redirect_to apn_path(@apn), notice: 'Successfully Updated the APN'
    else
      render :edit
    end
  end

  def new
    @apn = Apn.new


  end

  def create
    @apn = Apn.new(apn_params)

    if @apn.save
      redirect_to apns_path
    else
      render :new
    end
  end

  private

  def apn_params
    params.require(:apn).permit(
                            :apn_name,
                            :project_name,
                            :project_number,
                            :rogers_apn_id,
                            :fido_apn_id,
                            :msd_code,
                            :static_ip,
                            :control_center,
                            :context_id,
                            :control_center_account_name,
                            :control_center_account_id,
                            :primary_dns,
                            :secondary_dns,
                            :redundancy_type,
                            :m2m_communications,
                            :radius_jasper_proxy_filter,
                            #makes sure that I can nest the contact model into the apn form
                            contact_attributes: [
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
                            ],
                            node_attributes:[
                                :ssr_location
                            ]
    )
  end
end
