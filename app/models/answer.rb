class Answer < ApplicationRecord
	include HasGravator
	belongs_to :question
end
