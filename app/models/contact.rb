class Contact < ActiveRecord::Base
  belongs_to :apn
  belongs_to :tunnel
  belongs_to :user
end
