class UserAnswersController < ApplicationController

  def create
    # 0. use chosen_answer_id param to know whether the answer is correct or not
    # 1. instanciate a new UserAnswer
    # 2. save it in the db
    # 3. if all good, redirect to feedback page
    # (4. else, render the questions#show with the errors)
    @question = Question.find(params[:user_answer][:question_id])
    if @user_answer
      user_answer_correct
    else
      @user_answer = UserAnswer.new(
        user_id: current_user.id,
        question_id: @question.id,
        )
      user_answer_correct
    end
  end

  def update
    @question = Question.find(params[:user_answer][:question_id])
    @user_answer = UserAnswer.find(params[:id])
      #we have to check if the choosen_answer is in the array [correct_answer]
    user_answer_correct
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:question_id, :chosen_answer_id, :user_id)
  end

  def user_answer_correct

    if  @question.answers.blank? || params[:user_answer][:chosen_answer_id] == @question.answers.where(correct: true).first.id.to_s
      @user_answer.correct = true
    else
      @user_answer.correct = false
    end
    @user_answer.save
    @user_answer.errors.full_messages
    redirect_to question_path(@question, {submitted: true})
  end
end
