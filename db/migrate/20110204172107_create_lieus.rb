class CreateLieus < ActiveRecord::Migration
  def self.up
    create_table :lieus do |t|
      t.float :lat
      t.float :lng
      t.integer :balise_id
      t.timestamps
    end
  end

  def self.down
    drop_table :lieus
  end
end
