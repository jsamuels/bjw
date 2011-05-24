class CreateTolerances < ActiveRecord::Migration
  def self.up
    create_table :tolerances do |t|
      t.integer :id
      t.string :name
      t.float :de
      t.float :decmc
      t.float :de94
      t.float :de2000

      t.timestamps
    end
  end

  def self.down
    drop_table :tolerances
  end
end
