class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :class
      t.integer :capacity

      t.timestamps
    end
  end
end
