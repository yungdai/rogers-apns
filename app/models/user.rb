class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :apns
  has_many :contacts

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
  validates_format_of :phone_number1, :with => /\d{3}[ -.]?\d{3}[ -.]?\d{4}/, :message => 'Phone number must be in the format XXX-XXX-XXXX. Dashes/spaces/dots optional'
  validates_format_of :phone_number2, :with => /\d{3}[ -.]?\d{3}[ -.]?\d{4}/, :message => 'Phone number must be in the format XXX-XXX-XXXX. Dashes/spaces/dots optional'
  def name
    [first_name,last_name].join(' ')
  end
end
