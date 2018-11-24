class BuildingBill < ApplicationRecord
has_many :users
has_many :personal_bills, through: :users
belongs_to :building

end
