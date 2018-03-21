class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    @question = Question.new

  end

  def new
     @game = Game.new
  end

  def create
    @competence = Competence.new(params[:competence])
    @game = Game.new(game_params)
    if @game.save
      @game.errors.full_messages
      redirect_to game_path(@game)
    else
      render '/home'
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :competence_id)
  end
end
