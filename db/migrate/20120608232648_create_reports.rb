class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :description
      t.string :type
      t.references :user
      t.references :client

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :client_id
  end
end
