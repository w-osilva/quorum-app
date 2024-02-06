class VoteResult < ApplicationRecord
  belongs_to :legislator
  belongs_to :vote
  has_one :bill, through: :vote

  enum vote_type: {
    yea: 1,
    nay: 2
  }
end
