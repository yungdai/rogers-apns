class CreateApns < ActiveRecord::Migration
  def change
    create_table :apns do |t|
      t.rogers_apn_id :string
      t.fido_apn_id :string
      t.msd_code :string
      t.static_ip :boolean
      t.control_center :boolean
      t.context_id :string
      t.control_center_account_name :string
      t.control_center_account_id :string
      t.primary_dns :string
      t.secondary_dns :string

      t.timestamps
    end
  end
end
