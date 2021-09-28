class TrainingSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :task_id
  has_one :employee
  has_one :task
end
