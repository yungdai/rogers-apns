class Tunnel < ActiveRecord::Base
  belongs_to :node
  has_many :contacts, :dependent => :destroy
  has_many :tunnel_rules, :dependent => :destroy
  accepts_nested_attributes_for :contacts, :tunnel_rules
end
