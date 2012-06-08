class CreateAccusations < ActiveRecord::Migration
  def change
    create_table :accusations do |t|
      t.string :title
      t.string :description
      t.references :accuser
      t.integer :accusable_id
      t.string :accusable_type

      t.timestamps
    end
    add_index :accusations, :accuser_id
    add_index :accusations, :accusable_id
  end
end
