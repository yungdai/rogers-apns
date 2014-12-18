class TunnelsController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login

  def show
    @tunnels = Tunnel.all
  end

  def new

    @tunnel = Tunnel.new
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
  def tunnel_params
    params.require(:tunnel).permit(
        :nat_server_ip,
        :customer_vpn_ip,
        :rogers_vpn_ip,
        :rogers_mobile_ip,
        :rogers_gre_tunnel_ip,
        :customer_gre_tunnel_ip,
        :roger_vpn_device_desc,
        :customer_vpn_device_desc,
        :rogers_vpn_device_version,
        :customer_vpn_device_version,
        :rogers_encryption_domain,
        :customer_encryption_domain,
        tunnel_rules_attributes: [
             :services,
             :action,
             :remarks,
             :rogers_source_ip,
             :customer_source_ip
        ]
    )
  end
end
