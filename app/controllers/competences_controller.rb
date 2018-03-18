class CompetencesController < ApplicationController

  def index
    @competences = Competence.all
    @user = current_user
    user_correct_answers
    user_wrong_answers
  end

  def show
    @competence = Competence.find(params[:id])
    random_game
  end

  private

  def random_game
   @competence.games.sample
  end

  def user_correct_answers
    UserAnswer.where(:user_id => @user, :correct => true).count
  end

  def user_wrong_answers
    UserAnswer.where(:user_id => @user, :correct => false).count
  end

end
