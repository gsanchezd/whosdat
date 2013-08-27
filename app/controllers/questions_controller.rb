class QuestionsController < ApplicationController
	def index
		@question = Question.offset(rand(Question.count)).first
	end
end
