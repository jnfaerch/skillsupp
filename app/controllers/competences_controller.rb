class CompetencesController < ApplicationController

  def index
    @competences = Competence.all
  end


  def show
    @competence = Competence.find(params[:id])

    #creating the call of games of each copetence
    @competence_games = @competence.games
    @questions = Question.all


    random_game
  end

  private

  def random_game
   @competence_games.sample
  end
end
