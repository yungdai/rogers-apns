class Apn < ActiveRecord::Base
  belongs_to :user
  has_many :nodes, :dependent => :destroy
  has_many :contacts, :dependent => :destroy
  accepts_nested_attributes_for :contacts, :nodes, allow_destroy: true
end
