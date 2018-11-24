class BuildingBillController < ApplicationController
  def index
    @building_bills = BuildingBill.all
    render json: @building_bills
  end

  def show
    @building_bill = BuildingBill.find(params[:id])
    render json: @building_bill
  end

  def new
    @building_bill = BuildingBill.new(building_bill_params)
    render json: @building_bill
  end

  def create
    @building_bill = BuildingBill.new(building_bill_params)
    if @building_bill.save?
      render json: @building_bill
    else
      render json: {error: @building_bill.errors.full_messages}
    end
  end


  private

  def building_bill_params
    params.require(:building_bill).permit(:tariff, :energy_consumption, :bill_amount, :building_id)
  end

end
