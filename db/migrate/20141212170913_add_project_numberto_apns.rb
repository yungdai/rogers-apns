class AddProjectNumbertoApns < ActiveRecord::Migration
  def change
    add_column :apns, :project_number, :string
  end
end
