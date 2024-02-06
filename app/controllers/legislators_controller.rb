class LegislatorsController < ApplicationController
  def index
    @legislators = scope.all

    respond_to do |format|
      format.html
      format.csv { render_csv @legislators, filename: "legislators.csv" }
      format.json { render_json @legislators }
    end
  end

  def show
    @legislator = scope.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @legislator }
    end
  end

  private

  def scope
    Legislator.includes(:bills)
  end
end
