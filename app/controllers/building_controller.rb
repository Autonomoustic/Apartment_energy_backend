class BuildingController < ApplicationController
  def index
    @buildings = Building.all
    render json: @buildings
  end

  def show
    @building = Building.find(params[:id])
    render json: @building
  end

  def new
    @building = Building.new(building_params)
    render json: @building
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      render json: @building
    else
      render json: {error: @building.errors.full_messages}
    end
  end

  private

  def building_params
    params.require(:building).permit(:name, :address, :post_code)
  end

end
