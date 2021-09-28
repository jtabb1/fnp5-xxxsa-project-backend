class TodosController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json:  
      Todo
        .select('types.type_name')
        .select('users.name')
        .joins(:user, :type)
        .order("type_name")
  end
  
  def create
    todo = Todo.create!(todo_params)
    render json: todo.type, status: :created
  end

  private

  def todo_params
    params.permit(:user_id, :type_id)
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
