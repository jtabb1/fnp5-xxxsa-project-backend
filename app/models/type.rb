class Task < ApplicationRecord
  has_many :todos
  has_many :users, through: :trainings

  validates :type_name, presence: true
end
