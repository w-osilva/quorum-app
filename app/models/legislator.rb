class Legislator < ApplicationRecord
  has_many :bills,
           class_name: 'Bill',
           foreign_key: 'sponsor_id',
           dependent: :restrict_with_error

  validates :name, presence: true

  def supported_bills
    Bill.supported_by(self)
  end

  def opposed_bills
    Bill.opposed_by(self)
  end
end
