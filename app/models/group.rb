class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :user
  has_many :spendings, dependent: :destroy
end
