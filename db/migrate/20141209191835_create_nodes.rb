class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :ssr_location
      t.integer :apn_id

      t.timestamps
    end
  end
end
