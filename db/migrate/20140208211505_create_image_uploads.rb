class CreateImageUploads < ActiveRecord::Migration
  def change
    create_table :image_uploads do |t|
      t.integer :user_id
      t.integer :takedown_id
      t.string :image
      t.boolean :mark_for_destruction

      t.timestamps
    end
    add_index :image_uploads, :user_id
    add_index :image_uploads, :takedown_id
    add_index :image_uploads, :mark_for_destruction
  end
end
