class Node < ActiveRecord::Base
  belongs_to :apn
  has_many :tunnels, :dependent => :destroy
  accepts_nested_attributes_for :tunnels
end
