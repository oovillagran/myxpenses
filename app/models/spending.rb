class Spending < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :user
  belongs_to :group
end
