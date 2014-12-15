class AddMobile2MobileCommunicationToApns < ActiveRecord::Migration
  def change
    add_column :apns, :m2m_communications, :string
  end
end
