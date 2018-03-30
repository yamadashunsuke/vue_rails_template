class Api::CarModelsController < ApplicationController
  def index
    @car_models = CarModel.where(maker_id: params[:id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end
