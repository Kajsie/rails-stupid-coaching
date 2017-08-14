class QuestionsController < ApplicationController


  def ask
  end

  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(question)
    if question.include? "?"
      "Silly question son"
    elsif question == "I'm going to work today"
      "Great!"
    else
      "I don't care my boy!"
    end
  end

end
