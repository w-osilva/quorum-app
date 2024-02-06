class Bill < ApplicationRecord
  belongs_to :sponsor,
             class_name: 'Legislator'

  validates :title, presence: true
end
