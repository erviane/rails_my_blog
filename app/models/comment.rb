class Comment < ApplicationRecord
	belongs_to :blog
	validates :blog_id, presence: true
	validates :message, presence: true,
						length: { maximum: 100 }
	validates :sender, presence: true
end
