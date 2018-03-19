class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    #if we have more of one correct answer, we remove .first and search in all the @correct.answer array
    if @correct_answer = @question.answers.where(correct: true).first
      @game = @question.game
      @next_question = @question.next
      if find_user_answer
        @user_answer = find_user_answer
      else
        @user_answer = UserAnswer.create(
          user_id: current_user.id,
          question_id: params[:id],
        )
      end
    else
      @game = @question.game
      @next_question = @question.next
      @user_answer = UserAnswer.create(
        user_id: current_user.id,
        question_id: params[:id],
        correct: true
        )
    end
  end

  private
  #we use this method for check if we need to create a new user_answer or we update the existing before
  def find_user_answer
    UserAnswer.find_by(question_id: @question)
  end

end
