class Contact < ActiveRecord::Base
  belongs_to :apn
  belongs_to :tunnel
  belongs_to :user

  # makes sure that the user has an email address, first name and last name.
  validates_presence_of :email, :first_name, :last_name
  validates_format_of :phone_number1, :with => /\d{3}[ -.]?\d{3}[ -.]?\d{4}/, :message => 'Phone number must be in the format XXX-XXX-XXXX. Dashes/spaces/dots optional'
  validates_format_of :phone_number2, :with => /\d{3}[ -.]?\d{3}[ -.]?\d{4}/, :message => 'Phone number must be in the format XXX-XXX-XXXX. Dashes/spaces/dots optional'
end
