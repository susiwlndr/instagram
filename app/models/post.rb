class Post < ApplicationRecord
	belongs_to :user
	has_many :comment_posts

	mount_uploader :image, ImageUploader

	validates :caption, presence: true
	validates :image, file_size: { less_than: 1.megabytes }
end