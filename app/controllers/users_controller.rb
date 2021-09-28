class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json: User.order("name")
  end

  def show
    user = find_user
    render json: user, serializer: UserWithTodosSerializer
  end

  def destroy
    user = find_user
    user.destroy
    head :no_content
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:name)
  end
  
  def find_user
    User.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end