class AddApnNameToApns < ActiveRecord::Migration
  def change
    add_column :apns, :apn_name, :string
  end
end
