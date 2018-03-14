class UserAnswersController < ApplicationController

  def create

    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:choosen_answer_id])
    correct = @answer.correct

    @user_answer = UserAnswer.new(
      user_id: current_user.id,
      question_id: params[:question_id],
      correct: correct
    )
    @user_answer.save
    redirect_to question_path(@question, {submitted: true})
  end

  def update
  end

  private

end
