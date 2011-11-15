class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :website
      t.string :location
      t.text :info

      t.timestamps
    end
  end
end
