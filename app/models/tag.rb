class Tag < ApplicationRecord
	before_save { tag_name.downcase! }
	has_many :tag_blogs
  	has_many :blog_posts, through: :tag_blogs

	validates :tag_name, presence: true,
						length: {maximum: 45},
						uniqueness: { case_sensitive: false }
end
