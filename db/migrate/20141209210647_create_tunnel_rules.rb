class CreateTunnelRules < ActiveRecord::Migration
  def change
    create_table :tunnel_rules do |t|
      t.string :services
      t.string :action
      t.text :remarks
      t.string :rogers_source_ip
      t.string :customer_source_ip
      t.integer :tunnel_id

      t.timestamps
    end
  end
end
