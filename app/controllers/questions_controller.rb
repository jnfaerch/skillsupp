class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = Answer.all
    @game = @question.game
    @next_question = @question.next
  end

end
