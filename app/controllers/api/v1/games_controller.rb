class Api::V1::GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @olddraw = @game.currentDrawer
    @olddraw.is_drawer = false
    @olddraw.save
    @player = Player.find(player_id_param[:player_id])
    @pg = PlayerGame.find_by(player_id: @player.id, game_id: @game.id)
    @pg.is_drawer = true
    @pg.save
    render json: @game
  end

  private
  def player_id_param
    params.permit(:player_id)
  end
end
