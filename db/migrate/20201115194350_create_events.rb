class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :event_month
      t.integer :event_day
      t.integer :event_year
      t.string :event_description
      t.belongs_to :location

      t.timestamps
    end
  end
end
