class VotesController < ApplicationController
  def index
    @votes = scope.all

    respond_to do |format|
      format.html
      format.csv { render_csv @votes, filename: "votes.csv" }
      format.json { render_json @votes }
    end
  end

  def show
    @vote = scope.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @vote }
    end
  end

  private

  def scope
    Vote.includes(:bill)
  end
end
