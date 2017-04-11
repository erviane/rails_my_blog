class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :blog_id, null: false
      t.string :message, null: false
      t.string :sender, null: false

      t.timestamps null: false
    end
    add_index :comments, :blog_id
    add_foreign_key :comments, :blogs
  end
end
