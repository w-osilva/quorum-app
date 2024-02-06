class Vote < ApplicationRecord
  belongs_to :bill
  has_many :vote_results
end
