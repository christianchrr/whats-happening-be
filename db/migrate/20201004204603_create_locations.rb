class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :location_address_line_one
      t.string :location_address_line_two
      t.string :location_city
      t.string :location_state
      t.integer :location_zip_code

      t.timestamps
    end
  end
end
