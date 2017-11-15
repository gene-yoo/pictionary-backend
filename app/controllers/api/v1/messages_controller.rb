class Api::V1::MessagesController < ApplicationController
  def create
    # binding.pry
    pg = PlayerGame.find_by(game_id: params['message']['game_id'], player_id:params['message']['player_id'])
    msg = Message.new(message_params)
    msg.player_game = pg
    if msg.save
      render json: msg
    else
      render json: {error: "could not save"}, status: 422
    end
  end

  private
  def message_params
    params.require("message").permit("content")
  end
end
