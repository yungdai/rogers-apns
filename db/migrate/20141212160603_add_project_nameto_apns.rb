class AddProjectNametoApns < ActiveRecord::Migration
  def change
    add_column :apns, :project_name, :string
  end
end
