class Post < ApplicationRecord

	validates :title, presence: true,
	lenth: {minimum: 5}
end
