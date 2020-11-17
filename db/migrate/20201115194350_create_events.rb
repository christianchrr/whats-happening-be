class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :month
      t.integer :day
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
