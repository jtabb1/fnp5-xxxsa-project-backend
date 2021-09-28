class EmployeesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json: Employee.order("name")
  end

  def show
    employee = find_employee
    render json: employee, serializer: EmployeeWithTasksSerializer
  end

  def destroy
    employee = find_employee
    employee.destroy
    head :no_content
  end

  def create
    employee = Employee.create!(employee_params)
    render json: employee, status: :created
  end

  private

  def employee_params
    params.permit(:name)
  end
  
  def find_employee
    Employee.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Employee not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end
