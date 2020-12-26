class StoneImagesController < ApplicationController

	def new
	    @stone_image = StoneImage.new
    end
    def create
    	@stone_image = StoneImage.new(stone_image_params)
    	@stone_image.user_id = current_user.id
     if @stone_image.save
         redirect_to stone_images_path
     else
         render :new
     end
    end
    def index
        @stone_images = StoneImage.page(params[:page]).reverse_order
    end
    def show
        @stone_image = StoneImage.find(params[:id])
        @stone_comment = StoneComment.new
    end

    def destroy
        @stone_image = StoneImage.find(params[:id])
        @stone_image.destroy
        redirect_to stone_images_path
    end
    private
    def stone_image_params
        params.require(:stone_image).permit(:shop_name, :image, :caption)
    end
end
