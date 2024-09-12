class AddImageToCarpicks < ActiveRecord::Migration[6.1]
  def change
    add_column :carpicks, :image, :string
  end
end
