class CreateCons < ActiveRecord::Migration
  def change
    create_table :cons do |t|
      t.string :name
      t.string :website
      t.string :date
      t.string :location
      t.text :info

      t.timestamps
    end
  end
end
