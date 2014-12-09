class Apn < ActiveRecord::Base
  has_many :users
  has_many :nodes
  has_many :technical_contacts, class_name: 'User'
  has_many :business_contacts, class_name: 'User'
  belongs_to :form_owner, class_name: 'User'

end
