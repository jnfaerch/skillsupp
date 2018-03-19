class UserAnswersController < ApplicationController

  def update
    @user_answer = UserAnswer.find(params[:user_answer_id])
    @question = Question.find(params[:question_id])
      #we have to check if the choosen_answer is in the array [correct_answer]
    if params[:choosen_answer_id] == params[:correct_answer_id]
      # how do we want to update user answer
      @user_answer.correct = true
    else
      # how do we want to update user answer
      @user_answer.correct = false
    end
    @user_answer.save
    redirect_to question_path(@question, {submitted: true})
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_id, :choosen_answer_id)
  end
end
