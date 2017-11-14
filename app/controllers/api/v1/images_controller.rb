class Api::V1::ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    if @image.save
      render json: @image
    else
      render json: {errors: @image.errors.full_messages}, status: 422
    end
  end

  def update
    @image = Image.find(params[:id])
    @image.assign_attributes(image_params)
    if @image.save
      render json: @image
    else
      render json: {errors: @image.errors.full_messages}, status: 422
    end
  end

  private
  def image_params
    params.permit(:data_url, :game_id)
  end
end
