class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :githuburl
      t.string :contributors
      t.text :description

      t.timestamps
    end
  end
end
