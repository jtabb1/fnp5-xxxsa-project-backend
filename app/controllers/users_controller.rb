class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  skip_before_action :authorize, only: :create # <-Drafted line from Fn example

  def index
    render json: User.order("id")
  end

  def show
    user = find_user
    # Drafted modfication of line below from Flatiron example:
    render json: @current_user, serializer: UserWithTodosSerializer
  end

  def update
    user = find_user
    user.update(user_params)
    render json: user
  end

  def destroy
    user = find_user
    user.destroy
    head :no_content
  end
  
  # Drafted method from Flatiron example:
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private

  def user_params
    # Drafted modfication of line below from Flatiron example:
    params.permit(:username, :password, :password_confirmation)
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
