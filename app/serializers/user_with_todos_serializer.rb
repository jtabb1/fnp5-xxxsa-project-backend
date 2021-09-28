class UserWithTodosSerializer < ActiveModel::Serializer
  attributes :id, :user_name
  has_many :todos
end
