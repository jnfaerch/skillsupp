class UserAnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    if (params.has_key?(:choosen_answer_id))
      @answer = Answer.find(params[:choosen_answer_id])
      correct = @answer.correct
      @user_answer = UserAnswer.new(
        user_id: current_user.id,
        question_id: params[:question_id],
        correct: correct
      )
      if @user_answer.save
      redirect_to question_path(@question, {submitted: true})
      else
        render :new
      end
    else
      redirect_to question_path(@question)
    end

  end

  def update
  end
end
