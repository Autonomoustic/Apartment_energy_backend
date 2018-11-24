class CreatePersonalBills < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_bills do |t|
      t.string :tariff
      t.string :meter_reading
      t.string :meter_img_url
      t.string :bill_amount
      t.integer :user_id

      t.timestamps
    end
  end
end
