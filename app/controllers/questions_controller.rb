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

  def new
    @game = Game.find(params[:game_id])
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.game = Game.find(params[:game_id])
    @question.save
    redirect_to game_path(@question.game)
  end


  private
  #we use this method for check if we need to create a new user_answer or we update the existing before
  def find_user_answer
    UserAnswer.where(question_id: @question.id, user_id: current_user.id).first
  end

  def question_params
    params.require(:question).permit(:content, :feedback, :question_type, :video, :photo)
  end
end

