class CreateMakeateams < ActiveRecord::Migration
  def change
    create_table :makeateams do |t|
      t.text :info

      t.timestamps
    end
  end
end
