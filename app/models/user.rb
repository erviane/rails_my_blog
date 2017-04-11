class User < ApplicationRecord
	has_many :blogs
	validates :name, presence: true
	validates :bio, presence: true,
					length: {maximum: 1000 }
	validates :quote, presence: true,
					  length: { maximum: 100 }
	validates :username, presence: true,
						 length: { maximum: 30 },
						 uniqueness: true
	validates :password, presence: true,
						 length: { minimum: 8}
end
