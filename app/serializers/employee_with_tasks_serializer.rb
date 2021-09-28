class EmployeeWithTasksSerializer < ActiveModel::Serializer
  attributes :id, :public_id, :name
  has_many :tasks
end
