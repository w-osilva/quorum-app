class Legislator < ApplicationRecord
  has_many :bills,
           class_name: 'Bill',
           foreign_key: 'sponsor_id',
           dependent: :restrict_with_error

  validates :name, presence: true
end
