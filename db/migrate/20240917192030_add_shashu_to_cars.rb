class AddShashuToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :shashu, :string
  end
end
