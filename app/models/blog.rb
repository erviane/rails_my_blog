class Blog < ApplicationRecord
	belongs_to :category
	has_many :comments
	belongs_to :user, foreign_key: :author_id
	validates :title, presence: true
	validates :category_id, presence: true
	validates :content, presence: true,
						length: { maximum: 1000}
	validates :author_id, presence: true
end
