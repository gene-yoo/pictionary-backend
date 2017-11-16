class Api::V1::MessagesController < ApplicationController
  def create
    pg = PlayerGame.find_by(player_game_params)
    msg = Message.new(message_params)
    msg.player_game = pg
    pg.score += 10
    if msg.save
      render json: msg
    else
      render json: {error: "could not save"}, status: 422
    end
  end

  def show
    @msg = Message.find(params[:id])
    render json: @msg
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end

  def player_game_params
    params.require(:message).permit(:game_id, :player_id)
  end
end
