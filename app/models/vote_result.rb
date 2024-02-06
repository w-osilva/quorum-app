class VoteResult < ApplicationRecord
  belongs_to :legislator
  belongs_to :vote

  enum vote_type: {
    yea: 1,
    nay: 2
  }
end
