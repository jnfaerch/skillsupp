class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @game = @question.game
    if find_user_answer
      @user_answer = find_user_answer
    else
      @user_answer = UserAnswer.new(user_id: current_user.id, question_id: @question.id)
      # @user_answer.new_record?
      # not saved in the db yet
    end
  end

  private
  #we use this method for check if we need to create a new user_answer or we update the existing before
  def find_user_answer
    UserAnswer.where(question_id: @question.id, user_id: current_user.id).first
  end

  def user_answer_params
    params.require(:user_answer).permit(:question_id)
  end
end

