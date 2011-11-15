class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :date
      t.string :hours
      t.string :website
      t.string :location
      t.text :info

      t.timestamps
    end
  end
end
