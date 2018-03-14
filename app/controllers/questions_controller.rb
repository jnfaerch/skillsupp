class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = Answer.all
  end

  # def check_the_choosen_answer
  #   @answers = @question.answers


  # end


end
