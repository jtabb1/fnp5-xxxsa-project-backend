class UserWithTodosSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :todos
end
