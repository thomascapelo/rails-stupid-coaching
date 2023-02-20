class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:question]
    @coach_answer =
      case
      when @user_question == 'I am going to work'
        'Great!'
      when @user_question.include?('?')
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
