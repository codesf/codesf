class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :address
      t.string :cost
      t.string :food
      t.string :hours
      t.text :info

      t.timestamps
    end
  end
end
