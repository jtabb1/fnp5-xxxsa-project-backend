class UserWithTypesSerializer < ActiveModel::Serializer
  attributes :id, :user_name
  has_many :types
end
