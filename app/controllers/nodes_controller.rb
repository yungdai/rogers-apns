class NodesController < ApplicationController
  # this is a CanCan thing, to check to see if you're logged in before you can do anything on this page.
  load_and_authorize_resource

  # required to be logged in to be able to see the page.
  before_action :require_login
  def index
    # make sure that you are seeing the APN that the Node belongs to
    @apn = Apn.find(params[:apn_id])
    @nodes = @apn.nodes.order(id: :asc).all
  end
  def show
    @nodes = Node.order(id: :asc).all
  end

  def new
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    # makes sure that when you create a new node that you pass in the APN ID into the @node
    @node = @apn.nodes.build
  end

  def create
    # makes sure that you find the right APN ID for that new node first
    @apn = Apn.find(params[:apn_id])
    # make sure that when you create a new node that you pass in the APN ID into the @node (note it says nodes and not node) You'll be passing the contact_params method
    @node = @apn.nodes.build(node_params)
    if @node.save
      redirect_to apn_nodes_path
    else
      render :new
    end
  end
  def edit
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    @node = @apn.nodes.find(params[:id])
  end

  def update
    @node = Node.find(params[:id])

    if @node.update_attributes(node_params)
      redirect_to apn_nodes_path, notice: 'Successfully Updated the Node Information'
    end
  end

  def destroy
    # makes sure that you find the right APN ID for that new contact first
    @apn = Apn.find(params[:apn_id])
    @node = @apn.nodes.find(params[:id])
    @node.destroy
    redirect_to apn_nodes_path, notice: 'Node was deleted'
  end

  private

  def node_params
    params.require(:node).permit(
        :ssr_location,
        tunnels_attributes: [
            :id,
            :nat_server_ip,
            :customer_vpn_ip,
            :customer_server_ip,
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
            :_destroy
        ]
    )
  end
end
