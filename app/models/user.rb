class User < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :types, through: :todos
  has_many :common_todos, dependent: :destroy
  has_many :types, through: :common_todos

  #Draft modifications for auth below:
  has_secure_password

  def self.create_with_starter_types_and_todos(username, password, password_confirmation)
    user = User.create(username: username, password: password, password_confirmation: password_confirmation)
  end

  validates :username, presence: true, uniqueness: true
end
