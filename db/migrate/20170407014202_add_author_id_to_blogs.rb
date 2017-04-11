class AddAuthorIdToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :author_id, :integer, null:false
    add_index :blogs, :author_id
    add_foreign_key :blogs, :users, column: :author_id
  end
end
