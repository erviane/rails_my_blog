class Comment < ApplicationRecord
	belongs_to :blog_post


		validates :blog_post_id, presence: true
		validates :name, presence: true,
					length: {maximum: 45}
		validates :message, presence: true,
						length: {maximum: 100}

end
