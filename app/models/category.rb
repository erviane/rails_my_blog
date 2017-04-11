class Category < ApplicationRecord
	has_many :blogs
	validates :category_name, presence: true,
								length: {maximum: 30}
end
