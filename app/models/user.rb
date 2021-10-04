class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :types, through: :todos

  validates :username, presence: true
end
