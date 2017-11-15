class Api::V1::PlayersController < ApplicationController
  def create
    @player = Player.find_or_create_by(player_params)
    @pg = PlayerGame.find_or_create_by(game_id: game_id_param[:game_id], player_id: @player.id)
    if Game.find(game_id_param[:game_id]).players.size == 1
      @pg.is_drawer = true
      @pg.save
    end
    render json: @player
  end

  def show
    @player = Player.find(params[:id])
    render json: @player
  end

  private
  def player_params
    params.require(:player).permit(:username)
  end

  def game_id_param
    params.permit(:game_id)
  end
end
