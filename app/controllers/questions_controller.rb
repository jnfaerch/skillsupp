class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @game = @question.game
    @questions_sorted = questions_sorted
    @question_index = question_index
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

  def questions_sorted
    @qs = @game.questions.all.order( 'id ASC' )
  end

  def question_index
    @qs.index{ |item| item.id == @question[:id] }
  end

end

