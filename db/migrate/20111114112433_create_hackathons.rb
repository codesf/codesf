class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|
      t.string :name
      t.string :date
      t.string :hours
      t.string :website
      t.string :location
      t.string :info

      t.timestamps
    end
  end
end
