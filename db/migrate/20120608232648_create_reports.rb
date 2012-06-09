class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.string :type
      t.boolean :anonymous, :default => false
      t.boolean :public, :default => true
      t.references :user
      t.references :client

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :client_id
  end
end
