class TodosController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json:  
      Todo
        .all
  end

  def show
    todo = find_todo
    render json: todo
  end

  def destroy
    todo = find_todo
    todo.destroy
    head :no_content
  end

  def create
    todo = Todo.create!(todo_params)
    render json: todo.type, status: :created
  end

  private

  def todo_params
    params.permit(:user_id, :type_id, :todo_name, :todo_notes)
  end
  
  def find_todo
    Todo.find(params[:id])
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
