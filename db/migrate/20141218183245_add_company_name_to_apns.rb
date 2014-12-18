class AddCompanyNameToApns < ActiveRecord::Migration
  def change
    add_column :apns, :company_name, :string
  end
end
