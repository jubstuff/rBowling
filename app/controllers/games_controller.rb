class GamesController < ApplicationController
  def index
      @games = Game.all
  end

  def new
  end

  def create
      #render text: params[:game].inspect      
      @game = Game.new(game_params)
      @game.save
      redirect_to @game
  end

  def show
      @game = Game.find(params[:id])
  end

  private
    def game_params
        params.require(:game).permit(:rolls)
    end
end
