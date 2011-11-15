class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.text :info

      t.timestamps
    end
  end
end
