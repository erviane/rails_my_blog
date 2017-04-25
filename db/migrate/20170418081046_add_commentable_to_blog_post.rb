class AddCommentableToBlogPost < ActiveRecord::Migration[5.0]
	
  def change
    add_column :blog_posts, :commentable, :boolean, :default=>true
  end
end
