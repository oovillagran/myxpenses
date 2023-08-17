class User < ApplicationRecord
  validates :name, presence: true

  has_many :spendings, foreign_key: 'user_id'
  has_many :groups, foreign_key: 'user_id'
end
