class CreateApns < ActiveRecord::Migration
  def change
    create_table :apns do |t|
      t.string :rogers_apn_id
      t.string :fido_apn_id
      t.string :msd_code
      t.boolean :static_ip
      t.boolean :control_center
      t.string :context_id
      t.string :control_center_account_name
      t.string :control_center_account_id
      t.string :primary_dns
      t.string :secondary_dns
      t.integer :contact_id

      t.timestamps
    end
  end
end
