class UsersController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :update] 
    def index 
        users = User.all
        render json: users, status: :ok
    end

    def create
        user = User.create(user_params)
        if user.valid?
            # user.save!
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: session[:user_id] || params[:id])
        if user
            render json: user, status: :ok
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(user_params)
            render json: user
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :role, :password, :avatar )
    end
end
