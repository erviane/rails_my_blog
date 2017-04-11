class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.integer :category_id, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
    add_index :blogs, :category_id
    add_foreign_key :blogs, :categories
    
  end
end
