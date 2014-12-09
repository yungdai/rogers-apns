class Node < ActiveRecord::Base
  has_many :tunnels
  belongs_to :apn
end
