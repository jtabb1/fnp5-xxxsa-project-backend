class TasksController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json: Task.all
  end

  def show
    task = find_task
    render json: task
  end

  def update
    task = find_task
    task.update(task_params)
    render json: task
  end

  def destroy
    task = find_task
    task.destroy
    head :no_content
  end

  def create
    task = Task.create!(task_params)
    render json: task, status: :created
  end

  private

  def task_params
    params.permit(:task_name, :public_id)
  end
  
  def find_task
    Task.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Task not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end
