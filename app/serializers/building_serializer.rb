class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :post_code, :users

  def users
    self.object.users.map do |user|
      {
        name: user.name,
        email: user.email,
        password: user.password,
        apartment_no: user.apartment_no,
        building_id: user.building_id
      }
    end
  end
end
