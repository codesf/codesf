class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :location
      t.string :hours
      t.text :description

      t.timestamps
    end
  end
end
