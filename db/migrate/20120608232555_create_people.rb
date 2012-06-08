class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.references :company

      t.timestamps
    end
    add_index :people, :company_id
  end
end
