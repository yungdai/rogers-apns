class AddRadiusJasperProxyFilterToApns < ActiveRecord::Migration
  def change
    add_column :apns, :radius_jasper_proxy_filter, :string
  end
end
