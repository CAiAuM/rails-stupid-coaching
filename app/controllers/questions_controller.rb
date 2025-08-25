class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @query = params[:ask].downcase

    if @query.include?("i am going to work")
      @answer1 = @answers[0]
    elsif @query.include?("?")
      @answer1 = @answers[1]
    else
      @answer1 = @answers[2]
    end
  end
end
