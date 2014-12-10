class CreateApns < ActiveRecord::Migration
  def change
    create_table :apns do |t|
      t.integer :rogers_apn_id
      t.integer :fido_apn_id
      t.string :apn_name
      t.string :msd_code
      t.boolean :static_ip
      t.boolean :control_center
      t.integer :context_id
      t.string :control_center_account_name
      t.string :control_center_account_id
      t.string :primary_dns
      t.string :secondary_dns
      t.integer :contact_id
      t.integer :user_id

      t.timestamps
    end
  end
end
