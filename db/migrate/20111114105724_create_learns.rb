class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.text :info

      t.timestamps
    end
  end
end
