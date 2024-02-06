class VotesController < ApplicationController
  def index
    @votes = Vote.includes(:bill).all

    respond_to do |format|
      format.html
      format.csv { render_csv @votes, filename: "votes.csv" }
      format.json { render_json @votes }
    end
  end

  def show
    @vote = Vote.includes(:bill).find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @vote }
    end
  end
end
