class CreateCarpicks < ActiveRecord::Migration[6.1]
  def change
    create_table :carpicks do |t|
      t.string :question1
      t.string :question2
      t.string :question3

      t.timestamps
    end
  end
end
