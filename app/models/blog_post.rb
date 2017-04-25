class BlogPost < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :tag_blogs, dependent: :destroy
  	has_many :tags, through: :tag_blogs

	validates :title, presence: true,
					  length: { maximum: 45 }
	validates :summary, presence: true,
					length: {maximum: 45 }
	validates :content, presence: true
	validates :user_id, presence: true
	
end