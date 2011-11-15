class CreateNonprofits < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.string :website
      t.string :location
      t.text :info

      t.timestamps
    end
  end
end
