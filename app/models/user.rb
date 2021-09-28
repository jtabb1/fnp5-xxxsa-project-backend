class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :users, through: :todos

  validates :name, presence: true
end
