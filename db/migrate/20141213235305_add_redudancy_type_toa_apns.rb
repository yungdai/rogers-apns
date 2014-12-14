class AddRedudancyTypeToaApns < ActiveRecord::Migration
  def change
    add_column :apns, :redundancy_type, :string
  end
end
