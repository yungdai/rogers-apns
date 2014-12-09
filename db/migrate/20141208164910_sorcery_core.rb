class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false
      t.string :first_name,       :null => false
      t.string :last_name,        :null => false
      t.string :company_name
      t.string :street_address
      t.string :city
      t.string :province_state
      t.string :country
      t.string :phone_number1,     :null => false
      t.string :phone_number2
      t.boolean :administrator
      t.string :username
      t.integer :apn_id

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end