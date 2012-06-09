class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :homepage

      t.timestamps
    end
    add_index :clients, :email
  end
end
