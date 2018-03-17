class CompetencesController < ApplicationController

  def index
    @competences = Competence.all
    @user = current_user
  end

  def show
    @competence = Competence.find(params[:id])
    random_game
  end

  private

  def random_game
   @competence.games.sample
  end

end
