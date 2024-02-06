class BillsController < ApplicationController
  def index
    @bills = scope.all

    respond_to do |format|
      format.html
      format.csv { render_csv @bills, filename: "bills.csv" }
      format.json { render_json @bills }
    end
  end

  def show
    @bill = scope.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @bill }
    end
  end

  private

  def scope
    Bill.includes(:sponsor)
  end
end
