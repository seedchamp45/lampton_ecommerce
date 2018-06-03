class Content < ApplicationRecord
	has_attached_file :image
  	validates_attachment :image, presence: true,
  	content_type: { content_type:  ["image/jpeg", "image/PNG", "image/png"] },
  	size: { in: 0..100000.kilobytes }
end
