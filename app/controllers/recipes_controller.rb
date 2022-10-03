class RecipesController < ApplicationController
    
    # before_action :authorize
    # rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    # def create
    #   recipe = User.find_by(id: session[:user_id]).recipes.create(recipe_params)
    #   render json: recipe, status: :created
   
    # end

    # def index
    #     recipe = Recipe.all
    #     render json: recipe, include: :users
    # end
  
  
    # private
  
   
    # def recipe_params
    #   params.permit(:title, :instructions, :minutes_to_complete)
    # end

    # def authorize
    #     return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
    #   end

    def index
        render json: Recipe.all
      end
    
      def create
        recipe = @current_user.recipes.create!(recipe_params)
        render json: recipe, status: :created
      end
    
      private
    
      def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
      end
end
