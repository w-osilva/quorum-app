class BillsController < ApplicationController
  def index
    @bills = Bill.includes(:sponsor).all

    respond_to do |format|
      format.html
      format.csv { render_csv @bills, filename: "bills.csv" }
      format.json { render_json @bills }
    end
  end

  def show
    @bill = Bill.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @bill }
    end
  end
end
