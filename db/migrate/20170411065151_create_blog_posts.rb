class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.text :content, null: false
      t.integer :user_id, null: false
      t.string :title_image_url

      t.timestamps null: false
    end
    add_index :blog_posts, :user_id
    add_foreign_key :blog_posts, :users
  end
end
