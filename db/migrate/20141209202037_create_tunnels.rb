class CreateTunnels < ActiveRecord::Migration
  def change
    create_table :tunnels do |t|
      t.string :nat_server_ip
      t.string :customer_vpn_ip
      t.string :customer_server_ip
      t.string :rogers_vpn_ip
      t.string :rogers_mobile_ip
      t.string :rogers_gre_tunnel_ip
      t.string :customer_gre_tunnel_ip
      t.integer :node_id
      t.string :rogers_vpn_device_desc
      t.string :customer_vpn_device_desc
      t.string :rogers_vpn_device_version
      t.string :customer_vpn_device_version

      t.timestamps
    end
  end
end
