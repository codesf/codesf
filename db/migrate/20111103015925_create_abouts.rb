class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :contact
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
