class FavoritesController < ApplicationController

	def create 
		logger.debug 'create'
		stone_image = StoneImage.find(params[:stone_image_id])
		favorite = current_user.favorites.new(stone_image_id: stone_image.id)
		favorite.save
		redirect_to stone_image_path(stone_image)
	end

	def destroy
		logger.debug 'destroy'
		stone_image = StoneImage.find(params[:stone_image_id])
		favorite = current_user.favorites.find_by(stone_image_id: stone_image.id)
		favorite.destroy
	    redirect_to stone_image_path(stone_image)
	end

	def index
		@user = current_user
		@favorites = Favorite.where(user_id: @user.id).all
		@stone_images = StoneImage.page(params[:page]).reverse_order
	end

end
