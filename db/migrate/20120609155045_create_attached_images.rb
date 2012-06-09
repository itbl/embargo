class CreateAttachedImages < ActiveRecord::Migration
  def change
    create_table :attached_images do |t|
      t.references :report
      t.string :image

      t.timestamps
    end
    add_index :attached_images, :report_id
  end
end
