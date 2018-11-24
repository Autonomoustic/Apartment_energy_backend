class PersonalBillController < ApplicationController
  def index
    @personal_bills = PersonalBill.all
    render json: @personal_bills
  end

  def show
    @personal_bill = PersonalBill.find(params[:id])
    render json: @personal_bill
  end

  def new
    @personal_bill = PersonalBill.new(personal_bill_params)
  end

  def create
    @personal_bill = PersonalBill.new(personal_bill_params)
    if @personal_bill.save
      render json: @personal_bill
    else
      render json: {errors: @personal_bill.errors.full_messages}
    end
  end

  private

  def personal_bill_params
    params.require(:personal_bill).permit(:tariff, :meter_reading, :meter_img_url, :bill_amount, :user_id)
  end

end
