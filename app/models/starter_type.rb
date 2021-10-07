class StarterType < ApplicationRecord
  has_many :starter_todos

  validates :type_name, presence: true
end
