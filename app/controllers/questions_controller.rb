class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    if @question == 'I am going to work'
      @response = 'Great!'
    elsif @question.include? '?'
      @response = 'Silly question, get dressed and go to work!'
    elsif @question.empty?
      @response = 'SAY SOMETHING NEXT TIME!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
