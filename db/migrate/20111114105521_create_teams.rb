class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :info

      t.timestamps
    end
  end
end
