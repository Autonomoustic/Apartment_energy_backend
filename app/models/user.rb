class User < ApplicationRecord
  has_secure_password
  belongs_to :building
  has_many :personal_bills
end
