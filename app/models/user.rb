class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :types, through: :todos

  validates :user_name, presence: true
end
