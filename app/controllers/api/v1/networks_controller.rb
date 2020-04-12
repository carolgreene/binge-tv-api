class Api::V1::NetworksController < ApplicationController

  def index 
    networks = Network.all 
    render json: networks
  end
end
