class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :public_id, :name
end
