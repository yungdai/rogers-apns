class Apn < ActiveRecord::Base
  belongs_to :user
  has_many :nodes
  has_many :contacts

end
