class Movie < ApplicationRecord
	ratyrate_rateable 'visual_effects', 'custome_design','original_score', 'rating'
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
