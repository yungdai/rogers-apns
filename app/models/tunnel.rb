class Tunnel < ActiveRecord::Base
  belongs_to :node
  has_many :contacts
  has_many :tunnel_rules
end
