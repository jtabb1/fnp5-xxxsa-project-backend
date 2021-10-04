class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :types, through: :todos

  #Draft modifications for auth below:
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
