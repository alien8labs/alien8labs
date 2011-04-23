class Contact < ActiveRecord::Base
  validates :name,               :presence => true
  validates :email,              :presence => true
  validates :company,            :presence => true
  validates :phone_number,       :presence => true
  validates :want_to_accomplish, :presence => true
  validates :help_you_succeed,   :presence => true
end
