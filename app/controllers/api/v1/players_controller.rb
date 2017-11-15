class Api::V1::PlayersController < ApplicationController
  def create
    @player = Player.find_or_create_by(player_params)
    render json: @player
  end

  private
  def player_params
    params.require(:player).permit(:username)
  end
end
