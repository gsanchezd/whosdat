class QuestionsController < ApplicationController
	def index
		@question = Question.offset(rand(Question.count)).first
		#answers = Answer.offset(rand(Question.count)).first(3)
		answers = Answer.order("RANDOM()").first(3)
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

		if session[:score] != 0
			Game.create(score:session[:score], user:current_user)
			track_event("End Game", score: session[:score])
		end

		session[:score] = 0
		@last_games = Game.where("user_id IS NOT NULL").order('score desc').first(5)
	end

end
