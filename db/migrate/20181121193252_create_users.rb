class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :apartment_no
      t.integer :building_id

      t.timestamps
    end
  end
end
