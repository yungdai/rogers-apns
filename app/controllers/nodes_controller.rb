class NodesController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login
  def index
    # make sure that you are seeing the APN that the Node belongs to
    @apn = Apn.find(params[:apn_id])
    @nodes = @apn.nodes
  end
  def show
    @nodes = Node.all
  end

  def new
    @node = Node.new
    @node.tunnels.build
  end

  def edit
    @node = Node.find(params[:id])
  end

  def update
    @node = Node.find(params[:id])

    if @node.update_attributes(node_params)
      redirect_to apn_path(@apn), notice: 'Successfully Updated the Node Information'
    end
  end

  def destroy
  end

  private

  def node_params
    params.require(:node).permit(
        :ssr_location,
        tunnel_attributes: [
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
            :customer_encryption_domain
        ]
    )
  end
end
