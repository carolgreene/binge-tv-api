class Api::V1::ShowsController < ApplicationController

  def index 
    @shows = Show.all 
    render json: "need to add my serializer"
  end

  def show 
  end

  def create 
    @show = Show.new(show_params)

    if @show.save
      render json: "add serializer"
    else
      error_resp = {
        error: @show.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update 
    if @show.update(show_params)
      render json: "add serializer"
    else
       error_resp = {
         error: @show.errors.full_messages.to_sentence
       }
       render json: error_resp, status: unprocessable_entity
    end
  end

  def destroy
    @shows = Show.all
    @show.destroy
    render json: "add serializer"
  end

  private
  
  def set_show
    @show = Show.find(params[:id])
  end

  def show_params 
    params.require(:show).permit(:name, :genre, :summary)
  end


end
