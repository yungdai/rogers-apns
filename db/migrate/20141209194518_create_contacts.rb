class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :street_address
      t.string :city
      t.string :province_state
      t.string :country
      t.string :email
      t.string :phone_number1
      t.string :phone_number2
      t.boolean :technical_contact
      t.boolean :business_contact
      t.integer :apn_id
      t.integer :tunnel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
