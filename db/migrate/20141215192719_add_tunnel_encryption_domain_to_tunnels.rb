class AddTunnelEncryptionDomainToTunnels < ActiveRecord::Migration
  def change
    add_column :tunnels, :rogers_encryption_domain, :string
    add_column :tunnels, :customer_encryption_domain, :string
  end
end
