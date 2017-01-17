class Comment < ApplicationRecord

	attr_accessible :commenter
	belongs_to :movie


end

