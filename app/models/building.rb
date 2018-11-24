class Building < ApplicationRecord
  has_many :users
  has_many :personal_bills, through: :users
  has_many :building_bills

end
