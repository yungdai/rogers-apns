class Apn < ActiveRecord::Base
  has_many :users
  has_many :nodes
  has_many :contacts

end
