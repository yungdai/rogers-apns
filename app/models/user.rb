class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :apns
  has_many :contacts

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email

  def name
    [first_name,last_name].join(' ')
  end
end
