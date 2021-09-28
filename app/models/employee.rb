class Employee < ApplicationRecord
  has_many :trainings, dependent: :destroy
  has_many :tasks, through: :trainings

  validates :name, presence: true
end
