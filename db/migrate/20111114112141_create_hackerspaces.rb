class CreateHackerspaces < ActiveRecord::Migration
  def change
    create_table :hackerspaces do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :cost
      t.string :phone
      t.string :hours
      t.text :info

      t.timestamps
    end
  end
end
