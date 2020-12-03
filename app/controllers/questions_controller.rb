class QuestionsController < ApplicationController
  def ask
    @name = "Olivia"
  end

  def answer
    @question = params[:question]

    if @question.blank?
      @answer = "I didn't understand"
    elsif @question == "I am going to work right now!"
      @answer = "Nice."
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
