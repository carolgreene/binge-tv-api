class ShowsController < ApplicationController

  def index 
    @shows = Show.all 
  end

  def show 
  end

  def create 
    @show = Show.new(show_params)

    if @show.save
      render json:#add serializer info
    else
      error_resp = {
        error: @show.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update 
    if @show.update(show_params)
      render json: #add serializer info
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
    render json: #add serializer info
  end

  private
  
  def set_show
    @show = Show.find(params[:id])
  end

  def show_params 
    params.require(:show).permit(:name, :genre, :summary)
  end


end
