class CreateHackwithus < ActiveRecord::Migration
  def change
    create_table :hackwithus do |t|
      t.string :name
      t.string :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
