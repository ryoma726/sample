class AddBodyToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :body, :text
  end
end
