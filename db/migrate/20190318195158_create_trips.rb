class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.string :currency_one
      t.string :currency_two
      t.string :currency_three

      t.timestamps
    end
  end
end
