class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @game = @question.game
    @next_question = @question.next
    if find_user_answer
      @user_answer = find_user_answer
    else
      @user_answer = UserAnswer.new(user_id: current_user.id, question_id: @question.id)
    end
  end

  private
  #we use this method for check if we need to create a new user_answer or we update the existing before
  def find_user_answer
    UserAnswer.where(question_id: @question.id, user_id: current_user.id).first
  end
end

