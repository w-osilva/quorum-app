class LegislatorsController < ApplicationController
  def index
    @legislators = Legislator.all

    respond_to do |format|
      format.html
      format.csv { render_csv @legislators, filename: "legislators.csv" }
      format.json { render_json @legislators }
    end
  end

  def show
    @legislator = Legislator.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @legislator }
    end
  end
end
