class AddDetailsToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :hoshihyouka, :integer
    add_column :cars, :comfort, :integer
    add_column :cars, :ease_of_driving, :integer
  end
end
