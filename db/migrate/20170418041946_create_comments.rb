class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :blog_post_id, nukl:false
      t.string :name, null:false
      t.string :message, null:false

      t.timestamps null:false
    end
    add_index :comments, :blog_post_id
    add_foreign_key :comments, :blog_posts, on_delete: :cascade
  end
end
