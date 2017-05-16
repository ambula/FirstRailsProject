class AnswersController < ApplicationController
	def create
		question = Question.find(params[:answer][:question_id])
		answer = question.answers.create(params_answer)
		MainMailer.notify_question_author(answer).deliver_later
		session[:current_user_email] = params_answer[:email]
		redirect_to question
	end
	
	private
	def params_answer
		params.require(:answer).permit(:email, :body)
	end
end
