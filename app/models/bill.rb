class Bill < ApplicationRecord
  belongs_to :sponsor,
             class_name: 'Legislator'
  has_many :votes
  has_many :vote_results, through: :votes

  validates :title, presence: true

  scope :supported_by, ->(legislator) do
    includes(:vote_results)
      .where(vote_results: { legislator: legislator, vote_type: 'yea' })
  end

  scope :opposed_by, ->(legislator) do
    includes(:vote_results)
      .where(vote_results: { legislator: legislator, vote_type: 'nay' })
  end
end
