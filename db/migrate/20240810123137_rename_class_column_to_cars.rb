class RenameClassColumnToCars < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :class, :grade
  end
end
