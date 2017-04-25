class CreateTagBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_blogs do |t|
      t.integer :blog_post_id, null:false
      t.integer :tag_id, null:false

      t.timestamps null:false
    end
    add_index :tag_blogs, :blog_post_id
    add_index :tag_blogs, :tag_id
    add_foreign_key :tag_blogs, :blog_posts, on_delete: :cascade
    add_foreign_key :tag_blogs, :tags, on_delete: :cascade
  end
end
