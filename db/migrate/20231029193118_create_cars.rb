class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.string :color

      t.timestamps
    end
  end
end
