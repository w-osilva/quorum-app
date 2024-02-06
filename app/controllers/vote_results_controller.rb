class VoteResultsController < ApplicationController
  def index
    @vote_results = scope.all

    respond_to do |format|
      format.html
      format.csv { render_csv @vote_results, filename: "vote_results.csv" }
      format.json { render_json @vote_results }
    end
  end

  private

  def scope
    VoteResult.includes(:vote, :legislator, :bill)
  end
end
