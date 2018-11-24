class CreateBuildingBills < ActiveRecord::Migration[5.2]
  def change
    create_table :building_bills do |t|
      t.string :tariff
      t.string :energy_consumption
      t.string :bill_amount
      t.integer :building_id

      t.timestamps
    end
  end
end
