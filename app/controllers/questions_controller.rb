class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @game = @question.game
  end

end
