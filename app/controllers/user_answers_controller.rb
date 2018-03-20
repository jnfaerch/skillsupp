class UserAnswersController < ApplicationController

  def create
    # 0. use chosen_answer_id param to know whether the answer is correct or not
    # 1. instanciate a new UserAnswer
    # 2. save it in the db
    # 3. if all good, redirect to feedback page
    # (4. else, render the questions#show with the errors)
    if params[:choosen_answer_id] == @question.answers.where(@answer.correct)
      params[:correct_answer_id]
      @user_answer.correct = true
    else
      @user_answer.correct = false
    end
    params[:user_answer][:chosen_answer_id]
    params[:user_answer][:question_id]
    current_user.id

  end

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
