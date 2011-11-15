class CreateOurprojects < ActiveRecord::Migration
  def change
    create_table :ourprojects do |t|
      t.string :name
      t.string :website
      t.string :contributors
      t.text :info

      t.timestamps
    end
  end
end
