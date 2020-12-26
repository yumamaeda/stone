class StoneCommentsController < ApplicationController
	def create
		stone_image = StoneImage.find(params[:stone_image_id])
		comment = current_user.stone_comments.new(stone_comment_params)
		comment.stone_image_id = stone_image.id
		comment.save
		redirect_to stone_image_path(stone_image)
	end

	def destroy
    StoneComment.find_by(id: params[:id], stone_image_id: params[:stone_image_id]).destroy
    redirect_to stone_image_path(params[:stone_image_id])
	end

	private
	def stone_comment_params
		params.require(:stone_comment).permit(:comment)
	end
end
