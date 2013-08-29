class QuestionsController < ApplicationController
	def index
		@question = Question.offset(rand(Question.count)).first
		answers = Answer.offset(rand(Question.count)).first(3)
		answers << @question.answer
		@answers = answers.shuffle
		if session[:score].nil? 
			session[:score] = 0
		else
			session[:score] = session[:score] + 1
		end

	end

	def landing
		@question = Question.offset(rand(Question.count)).first	
		session[:score] = 0
	end

end
