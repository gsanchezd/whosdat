class QuestionsController < ApplicationController
	def index
		@question = Question.offset(rand(Question.count)).first
		answers = Answer.offset(rand(Question.count)).first(3)
		answers << @question.answer
		@answers = answers.shuffle
	end

	def landing
		@question = Question.offset(rand(Question.count)).first	
	end

end
