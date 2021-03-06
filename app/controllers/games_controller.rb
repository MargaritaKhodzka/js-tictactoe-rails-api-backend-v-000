class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    games = Game.all
    render json:games
  end

  def new
    game = Game.new
  end

  def create
    game = Game.create(game_params)
    render json: game
  end

  private
  def game_params
    params.permit(state: [])
  end

end
