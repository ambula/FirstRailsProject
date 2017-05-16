class Question < ApplicationRecord
	include HasGravator
	has_many :answers
end
