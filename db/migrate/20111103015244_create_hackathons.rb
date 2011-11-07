class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|
      t.string :name
      t.string :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
