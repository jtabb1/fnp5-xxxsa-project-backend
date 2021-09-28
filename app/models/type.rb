class Task < ApplicationRecord
  has_many :todos
  has_many :users, through: :todos

  validates :type_name, presence: true
end
