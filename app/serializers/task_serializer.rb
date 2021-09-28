class TaskSerializer < ActiveModel::Serializer
  attributes :id, :public_id, :task_name
end
