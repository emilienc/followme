class CreateBalises < ActiveRecord::Migration
  def self.up
    create_table :balises do |t|
      t.string :code
      t.timestamps
    end
  end

  def self.down
    drop_table :balises
  end
end
