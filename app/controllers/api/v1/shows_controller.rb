class Api::V1::ShowsController < ApplicationController

  def index 
    shows = Show.all 
    render json: ShowSerializer.new(shows)
  end

  def show 
    show = Show.find(params[:id])
    render json: ShowSerializer.new(show)
  end

  def create 
    show = Show.new(show_params)

    if show.save
      render json: ShowSerializer.new(show)
    else
      error_resp = {
        error: show.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update 
    if show.update(show_params)
      render json: ShowSerializer.new(show)
    else
       error_resp = {
         error: show.errors.full_messages.to_sentence
       }
       render json: error_resp, status: unprocessable_entity
    end
  end

  def destroy
    shows = Show.all
    show.destroy
    render json: ShowSerializer.new(shows)
  end

  private
  
  def set_show
    show = Show.find(params[:id])
  end

  def show_params 
    params.require(:show).permit(:name, :genre, :summary)
  end


end
