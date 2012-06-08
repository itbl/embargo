class CreateAccusations < ActiveRecord::Migration
  def change
    create_table :accusations do |t|
      t.string :title
      t.string :description
      t.references :accuser
      t.references :accusable

      t.timestamps
    end
    add_index :accusations, :accuser_id
    add_index :accusations, :accusable_id
  end
end
